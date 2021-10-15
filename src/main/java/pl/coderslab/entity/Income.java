package pl.coderslab.entity;


import com.sun.istack.NotNull;
import jdk.jfr.DataAmount;
import org.springframework.boot.convert.DataSizeUnit;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "income")
public class Income {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Size(min = 1, max = 30, message = "Maksymalna długość 30 znaków.")
    private String name;

    @Min(value = 1, message = "Wartość musi być większa niż 1.")
    private double payment;

    private LocalDate date;

    @ManyToOne
    private FamilyMembers familyMember;

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public FamilyMembers getFamilyMember() {
        return familyMember;
    }

    public void setFamilyMember(FamilyMembers familyMember) {
        this.familyMember = familyMember;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPayment() {
        return payment;
    }

    public void setPayment(double payment) {
        this.payment = payment;
    }

    @Override
    public String toString() {
        return "Income{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", income=" + payment +
                ", date=" + date +
                ", familyMember=" + familyMember +
                '}';
    }
}
