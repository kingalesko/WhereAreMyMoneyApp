package pl.coderslab.entity;


import javax.persistence.*;

@Entity
@Table(name = "months")
public class Months {

    private Long id;

    public void setId(Long id) {
        this.id = id;
    }

    private String monthName;

    public String getMonthName() {
        return monthName;
    }

    public void setMonthName(String monthName) {
        this.monthName = monthName;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long getId() {
        return id;
    }

    @Override
    public String toString() {
        return "Months{" +
                "id=" + id +
                ", monthName='" + monthName + '\'' +
                '}';
    }
}
