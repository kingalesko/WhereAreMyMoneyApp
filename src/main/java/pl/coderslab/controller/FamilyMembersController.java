package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.coderslab.dao.FamilyMembersDao;
import pl.coderslab.entity.FamilyMembers;

import javax.validation.Valid;

@Controller
public class FamilyMembersController {

    private final FamilyMembersDao familyMembersDao;

    public FamilyMembersController(FamilyMembersDao familyMembersDao) {
        this.familyMembersDao = familyMembersDao;
    }

    @GetMapping("/familyForm/list")
    public String showAll(Model model) {
        model.addAttribute("allFamilyMembers", familyMembersDao.findAll());
        return "family/all";
    }

    @GetMapping("/familyForm/add")
    public String initAddFom(Model model) {
        model.addAttribute("familyMember", new FamilyMembers());
        return "family/form";
    }

    @PostMapping("/familyForm/add")
    public String persistAuthor(@Valid FamilyMembers familyMember, BindingResult result) {
        if (result.hasErrors()) {
            return "family/form";
        }
        familyMembersDao.persist(familyMember);
        return "redirect:/familyForm/list";
    }

    @GetMapping("/familyForm/edit")
    public String prepareEdit(@RequestParam int idToEdit, Model model) {
        model.addAttribute("familyMember", familyMembersDao.findById(idToEdit));
        return "family/form";
    }

    @PostMapping("/familyForm/edit")
    public String merge(@Valid FamilyMembers familyMember, BindingResult result) {
        if (result.hasErrors()) {
            return "family/form";
        }
        familyMembersDao.merge(familyMember);
        return "redirect:/familyForm/list";
    }

    @GetMapping("/familyForm/remove")
    public String prepareRemove(@RequestParam int toRemoveId, Model model) {
        model.addAttribute("familyMember", familyMembersDao.findById(toRemoveId));
        return "family/remove";
    }

    @PostMapping("/familyForm/remove")
    public String remove(@RequestParam String confirmed, @RequestParam int toRemoveId) {
        if ("yes".equals(confirmed)) {
            FamilyMembers familyMember = familyMembersDao.findById(toRemoveId);
            familyMembersDao.remove(familyMember);
        }
        return "redirect:/familyForm/list";
    }
}
