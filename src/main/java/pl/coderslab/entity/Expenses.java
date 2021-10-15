package pl.coderslab.entity;

import com.sun.istack.NotNull;
import jdk.jfr.DataAmount;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import javax.websocket.OnMessage;
import java.time.LocalDate;

@Entity
@Table(name = "expenses")
public class Expenses {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Size(min = 2, max = 20, message = "Nazwa musi mieć od 2 do 20 znaków")
    private String shopName;

    @NotNull
    private double expense;

    private LocalDate date;

    @ManyToOne
    private ExpenseCategory category;

    public String getShopName() {
        return shopName;
    }

    public void setShopName(String shopName) {
        this.shopName = shopName;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getExpenseName() {
        return shopName;
    }

    public void setExpenseName(String expenseName) {
        this.shopName = shopName;
    }

    public double getExpense() {
        return expense;
    }

    public void setExpense(double expense) {
        this.expense = expense;
    }

    public ExpenseCategory getCategory() {
        return category;
    }

    public void setCategory(ExpenseCategory category) {
        this.category = category;
    }

    @Override
    public String toString() {
        return "Expenses{" +
                "id=" + id +
                ", shopName='" + shopName + '\'' +
                ", expense=" + expense +
                ", date=" + date +
                ", category=" + category +
                '}';
    }
}
