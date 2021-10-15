package pl.coderslab.entity;


import com.sun.istack.NotNull;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Entity
@Table(name = "targets")
public class Target {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Size(min = 3, max = 40, message = "Długość znaków musi być z zakresu od 3 do 40.")
    private String targetName;

    @Min(value = 1, message = "Wartość musi być większa niż 1.")
    private double price;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTargetName() {
        return targetName;
    }

    public void setTargetName(String targetName) {
        this.targetName = targetName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }


    @Override
    public String toString() {
        return "Target{" +
                "id=" + id +
                ", targetName='" + targetName + '\'' +
                ", price=" + price +
                '}';
    }
}
