package pl.coderslab.entity;


import com.sun.istack.NotNull;
import com.sun.istack.Nullable;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import java.time.LocalDate;

@Entity
@Table(name = "loan")
public class Loans {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @NotBlank
    private String bankName;

    @ManyToOne
    private LoanCategory loanCategory;

    @Nullable
    private int installmentsNum;

    @Nullable
    private double installment;

//    @Nullable
//    private LocalDate endDate;
//
//    @NotNull
//    private double sumOfTheLoan;

    @ManyToOne
    @JoinColumn(name = "family_member_id")
    private FamilyMembers familyMember;

    public FamilyMembers getFamilyMember() {
        return familyMember;
    }

    public void setFamilyMember(FamilyMembers familyMember) {
        this.familyMember = familyMember;
    }

    public LoanCategory getLoanCategory() {
        return loanCategory;
    }

    public void setLoanCategory(LoanCategory loanCategory) {
        this.loanCategory = loanCategory;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getBankName() {
        return bankName;
    }

    public void setBankName(String bankName) {
        this.bankName = bankName;
    }

    public int getInstallmentsNum() {
        return installmentsNum;
    }

    public void setInstallmentsNum(int installmentsNum) {
        this.installmentsNum = installmentsNum;
    }

    public double getInstallment() {
        return installment;
    }

    public void setInstallment(double installment) {
        this.installment = installment;
    }

//    public LocalDate getEndDate() {
//        return endDate;
//    }
//
//    public void setEndDate(LocalDate endDate) {
//        this.endDate = endDate;
//    }
//
//    public double getSumOfTheLoan() {
//        return sumOfTheLoan;
//    }
//
//    public void setSumOfTheLoan(double sumOfTheLoan) {
//        this.sumOfTheLoan = sumOfTheLoan;
//    }

    @Override
    public String toString() {
        return "Loans{" +
                "id=" + id +
                ", bankName='" + bankName + '\'' +
                ", loanCategory=" + loanCategory +
                ", installmentsNum=" + installmentsNum +
                ", installment=" + installment +
                ", familyMember=" + familyMember.getNickName() +
                '}';
    }
}
