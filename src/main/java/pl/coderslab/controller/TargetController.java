package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.coderslab.dao.TargetDao;
import pl.coderslab.entity.Target;

import javax.validation.Valid;

@Controller
public class TargetController {

    public final TargetDao targetDao;

    public TargetController(TargetDao targetDao) {
        this.targetDao = targetDao;
    }

    @GetMapping("/targetForm/list")
    public String showAll(Model model) {
        model.addAttribute("allTargets", targetDao.findAll());
        return "targets/all";
    }

    @GetMapping("/targetForm/add")
    public String initAddForm(Model model) {
        model.addAttribute("target", new Target());
        return "targets/form";
    }

    @PostMapping("/targetForm/add")
    public String persistAuthor(@Valid Target target, BindingResult result) {
        if (result.hasErrors()) {
            return "targets/form";
        }
        targetDao.persist(target);
        return "redirect:/targetForm/list";
    }
    @GetMapping("/targetForm/edit")
    public String prepareEdit(@RequestParam Long idToEdit, Model model) {
        model.addAttribute("target", targetDao.findById(idToEdit));
        return "targets/form";
    }

    @PostMapping("/targetForm/edit")
    public String merge(@Valid Target target, BindingResult result) {
        if (result.hasErrors()) {
            return "targets/form";
        }
        targetDao.merge(target);
        return "redirect:/targetForm/list";
    }

    @GetMapping("/targetForm/remove")
    public String prepareRemove(@RequestParam Long toRemoveId, Model model) {
        model.addAttribute("income", targetDao.findById(toRemoveId));
        return "targets/remove";
    }

    @PostMapping("/targetForm/remove")
    public String remove(@RequestParam String confirmed, @RequestParam Long toRemoveId) {
        if ("yes".equals(confirmed)) {
            Target target = targetDao.findById(toRemoveId);
            targetDao.remove(target);
        }
        return "redirect:/targetForm/list";
    }
}
