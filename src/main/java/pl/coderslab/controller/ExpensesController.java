package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.dao.ExpenseCategoryDao;
import pl.coderslab.dao.ExpensesDao;
import pl.coderslab.dao.MonthsDao;
import pl.coderslab.entity.ExpenseCategory;
import pl.coderslab.entity.Expenses;
import pl.coderslab.entity.Months;

import javax.validation.Valid;
import java.util.List;


@Controller
public class ExpensesController {

    private final ExpensesDao expensesDao;
    private final ExpenseCategoryDao expenseCategoryDao;
    private final MonthsDao monthsDao;

    public ExpensesController(ExpensesDao expensesDao, ExpenseCategoryDao expenseCategoryDao, MonthsDao monthsDao) {
        this.expensesDao = expensesDao;
        this.expenseCategoryDao = expenseCategoryDao;
        this.monthsDao = monthsDao;
    }

    @ModelAttribute("months")
    public List<Months> allMonths(){return monthsDao.findAll();}

    @ModelAttribute("categories")
    public List<ExpenseCategory> allCategories() {
        return expenseCategoryDao.findAll();
    }

    @GetMapping("/expensesForm/list")
    public String showAll(Model model) {
        model.addAttribute("allExpenses", expensesDao.findAll());
        return "expenses/all";
    }

    @GetMapping("/expensesForm/add")
    public String initAddForm(Model model) {
        model.addAttribute("expenses", new Expenses());
        return "expenses/form";
    }

    @PostMapping("/expensesForm/add")
    public String persistAuthor(@Valid Expenses expenses, BindingResult result) {
        if (result.hasErrors()) {
            return "expenses/form";
        }
        expensesDao.persist(expenses);
        return "redirect:/expensesForm/list";
    }
    @GetMapping("/expensesForm/edit")
    public String prepareEdit(@RequestParam Long idToEdit, Model model) {
        model.addAttribute("expenses", expensesDao.findById(idToEdit));
        return "expenses/form";
    }

    @PostMapping("/expensesForm/edit")
    public String merge(@Valid Expenses expenses, BindingResult result) {
        if (result.hasErrors()) {
            return "expenses/form";
        }
        expensesDao.merge(expenses);
        return "redirect:/expensesForm/list";
    }

    @GetMapping("/expensesForm/remove")
    public String prepareRemove(@RequestParam Long toRemoveId, Model model) {
        model.addAttribute("expenses", expensesDao.findById(toRemoveId));
        return "expenses/remove";
    }

    @PostMapping("/expensesForm/remove")
    public String remove(@RequestParam String confirmed, @RequestParam Long toRemoveId) {
        if ("yes".equals(confirmed)) {
            Expenses expenses = expensesDao.findById(toRemoveId);
            expensesDao.remove(expenses);
        }
        return "redirect:/expensesForm/list";
    }

    @GetMapping("/expensesForm/month")
    private String findAllByMonth(Model model, @RequestParam String month){
        model.addAttribute("expensesMonth", expensesDao.findAllByMonth(month));
        return "expenses/month";
    }
}
