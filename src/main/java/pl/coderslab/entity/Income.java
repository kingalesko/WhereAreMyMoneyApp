package pl.coderslab.entity;


import com.sun.istack.NotNull;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name = "income")
public class Income {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @NotEmpty
    private String name;

    @NotNull
    private double income;

    @OneToOne
    @JoinColumn(name = "member_id", unique = true)
    private FamilyMembers familyMember;

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

    public double getIncome() {
        return income;
    }

    public void setIncome(double income) {
        this.income = income;
    }

    @Override
    public String toString() {
        return "Income{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", income=" + income +
                ", familyMember=" + familyMember +
                '}';
    }
}
