package pl.coderslab.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.coderslab.dao.FamilyMembersDao;
import pl.coderslab.dao.IncomeDao;
import pl.coderslab.entity.Expenses;
import pl.coderslab.entity.FamilyMembers;
import pl.coderslab.entity.Income;

import javax.validation.Valid;
import java.util.List;

@Controller
public class IncomeController {

    private final FamilyMembersDao familyMembersDao;
    private final IncomeDao incomeDao;

    public IncomeController(FamilyMembersDao familyMembersDao, IncomeDao incomeDao) {
        this.familyMembersDao = familyMembersDao;
        this.incomeDao = incomeDao;
    }

    @ModelAttribute("familyMembers")
    public List<FamilyMembers> allCategories() {
        return familyMembersDao.findAll();
    }


    @GetMapping("/incomesForm/list")
    public String showAll(Model model) {
        model.addAttribute("allIncomes", incomeDao.findAll());
        return "incomes/all";
    }

    @GetMapping("/incomesForm/add")
    public String initAddForm(Model model) {
        model.addAttribute("income", new Income());
        return "incomes/form";
    }

    @PostMapping("/incomesForm/add")
    public String persistAuthor(@Valid Income income, BindingResult result) {
        if (result.hasErrors()) {
            return "incomes/form";
        }
        incomeDao.persist(income);
        return "redirect:/incomesForm/list";
    }
    @GetMapping("/incomesForm/edit")
    public String prepareEdit(@RequestParam Long idToEdit, Model model) {
        model.addAttribute("income", incomeDao.findById(idToEdit));
        return "incomes/form";
    }

    @PostMapping("/incomesForm/edit")
    public String merge(@Valid Income income, BindingResult result) {
        if (result.hasErrors()) {
            return "incomes/form";
        }
        incomeDao.merge(income);
        return "redirect:/incomesForm/list";
    }

    @GetMapping("/incomesForm/remove")
    public String prepareRemove(@RequestParam Long toRemoveId, Model model) {
        model.addAttribute("income", incomeDao.findById(toRemoveId));
        return "incomes/remove";
    }

    @PostMapping("/incomesForm/remove")
    public String remove(@RequestParam String confirmed, @RequestParam Long toRemoveId) {
        if ("yes".equals(confirmed)) {
            Income income = incomeDao.findById(toRemoveId);
            incomeDao.remove(income);
        }
        return "redirect:/incomesForm/list";
    }
}
