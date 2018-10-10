package pl.schronisko.dao;

import pl.schronisko.entity.Animal;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface AnimalDao {

    List<Animal> getAnimals();

    List<Animal> getAnimal(HttpServletRequest request);

    void saveTheAnimal(Animal theAnimal);

    void deleteAnimal(int id);

    Animal getOneAnimal(int theId);

    boolean checkAnimal(int theId);
}
