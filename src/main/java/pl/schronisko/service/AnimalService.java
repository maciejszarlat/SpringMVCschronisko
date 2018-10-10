package pl.schronisko.service;


import pl.schronisko.entity.Animal;

import java.util.List;

public interface AnimalService {

    List<Animal> getAnimals();

    void saveTheAnimal(Animal theAnimal);

    void deleteAnimal(int id);

    Animal getOneAnimal(int theId);

    boolean checkAnimal(int theId);
}
