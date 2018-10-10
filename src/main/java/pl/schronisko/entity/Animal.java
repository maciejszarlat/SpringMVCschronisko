package pl.schronisko.entity;


import org.springframework.format.annotation.DateTimeFormat;
import javax.persistence.*;
import javax.validation.constraints.*;
import java.util.Date;

@Entity
@Table(name = "animals")
public class Animal {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "customerId")
    private long customerId;

    @NotNull
    @Size(min = 1, message = "Wpisz imię zwierzaka")
    @Size(max = 100, message = "Maksymalnie możesz wpisać 100 znaków")
    @Column(name = "petName")
    private String petName;

    @NotNull(message = "To pole jest wymagane")
    @Min(value = 0, message = "Wpisz wiek zwierzaka")
    @Max(value = 100, message = "Wiek zwierzaka nie może być większy niż 100 lat!")
    @Column(name = "petAge")
    private Integer petAge;

    @Column(name = "chipNo")
    @Size(max = 100, message = "Maksymalnie możesz wpisać 100 znaków")
    private String chipNo;

    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern="dd-MM-yyyy")
    @Column(name = "regDate", columnDefinition="DATETIME")
    private Date regDate;

    @Size(max = 1500, message = "Maksymalnie możesz wpisać 1500 znaków")
    @Column(name = "petDesctiption")
    private String petDesctiption;

    @NotNull(message = "To pole jest wymagane")
    @Column(name = "species_id")
    private int species_id;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "species_id", insertable = false, updatable = false)
    private Species species;

    public Animal() {

    }

    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    public Species getSpecies() {
        return species;
    }

    public void setSpecies(Species species) {
        this.species = species;
    }

    public long getCustomerId() {
        return customerId;
    }

    public void setCustomerId(long customerId) {
        this.customerId = customerId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPetName() {
        return petName;
    }

    public void setPetName(String petName) {
        this.petName = petName;
    }

    public Integer getPetAge() {
        return petAge;
    }

    public void setPetAge(Integer petAge) {
        this.petAge = petAge;
    }

    public String getChipNo() {
        return chipNo;
    }

    public void setChipNo(String chipNo) {
        this.chipNo = chipNo;
    }

    public int getSpecies_id() {
        return species_id;
    }

    public void setSpecies_id(int species_id) {
        this.species_id = species_id;
    }

    public String getPetDesctiption() {
        return petDesctiption;
    }

    public void setPetDesctiption(String petDesctiption) {
        this.petDesctiption = petDesctiption;
    }
}
