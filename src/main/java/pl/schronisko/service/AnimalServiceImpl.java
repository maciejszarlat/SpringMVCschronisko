package pl.schronisko.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.schronisko.dao.AnimalDao;
import pl.schronisko.entity.Animal;

import java.util.List;

@Service
public class AnimalServiceImpl implements AnimalService {

    @Autowired
    private AnimalDao animalDao;

    @Override
    @Transactional
    public List<Animal> getAnimals() {
        return animalDao.getAnimals();
    }

    @Override
    @Transactional
    public void saveTheAnimal(Animal theAnimal) {

        animalDao.saveTheAnimal(theAnimal);
    }

    @Override
    @Transactional
    public void deleteAnimal(int id) {
        animalDao.deleteAnimal(id);
    }

    @Override
    @Transactional
    public Animal getOneAnimal(int theId) {
        return animalDao.getOneAnimal(theId);
    }

    @Override
    @Transactional
    public boolean checkAnimal(int theId) {
        return animalDao.checkAnimal(theId);
    }

}
