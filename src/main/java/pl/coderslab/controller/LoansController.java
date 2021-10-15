package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.coderslab.dao.FamilyMembersDao;
import pl.coderslab.dao.LoanCategoryDao;
import pl.coderslab.dao.LoansDao;
import pl.coderslab.entity.FamilyMembers;
import pl.coderslab.entity.LoanCategory;
import pl.coderslab.entity.Loans;

import javax.validation.Valid;
import java.util.List;

@Controller
public class LoansController {

    private final FamilyMembersDao familyMembersDao;
    private final LoanCategoryDao loanCategoryDao;
    private final LoansDao loansDao;

    public LoansController(FamilyMembersDao familyMembersDao, LoanCategoryDao loanCategoryDao, LoansDao loansDao) {
        this.familyMembersDao = familyMembersDao;
        this.loanCategoryDao = loanCategoryDao;
        this.loansDao = loansDao;
    }

    @ModelAttribute("familyMembers")
    public List<FamilyMembers> allCategories() {
        return familyMembersDao.findAll();
    }

    @ModelAttribute("loansCategories")
    public List<LoanCategory> allLoanCategories(){return loanCategoryDao.findAll();}

    @GetMapping("/loansForm/list")
    public String showAll(Model model) {
        model.addAttribute("allLoans", loansDao.findAll());
        return "loans/all";
    }

    @GetMapping("/loansForm/add")
    public String initAddForm(Model model) {
        model.addAttribute("loan", new Loans());
        return "loans/form";
    }

    @PostMapping("/loansForm/add")
    public String persistAuthor(@ModelAttribute("loan")@Valid Loans loan, BindingResult result) {
        if (result.hasErrors()) {
            return "loans/form";
        }
        loansDao.persist(loan);
        return "redirect:/loansForm/list";
    }
    @GetMapping("/loansForm/edit")
    public String prepareEdit(@RequestParam Long idToEdit, Model model) {
        model.addAttribute("loan", loansDao.findById(idToEdit));
        return "loans/form";
    }

    @PostMapping("/loansForm/edit")
    public String merge(@Valid Loans loan, BindingResult result) {
        if (result.hasErrors()) {
            return "loans/form";
        }
        loansDao.merge(loan);
        return "redirect:/loansForm/list";
    }

    @GetMapping("/loansForm/remove")
    public String prepareRemove(@RequestParam Long toRemoveId, Model model) {
        model.addAttribute("loan", loansDao.findById(toRemoveId));
        return "loans/remove";
    }

    @PostMapping("/loansForm/remove")
    public String remove(@RequestParam String confirmed, @RequestParam Long toRemoveId) {
        if ("yes".equals(confirmed)) {
            Loans loan = loansDao.findById(toRemoveId);
            loansDao.remove(loan);
        }
        return "redirect:/loansForm/list";
    }
}
