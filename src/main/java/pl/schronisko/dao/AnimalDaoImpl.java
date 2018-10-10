package pl.schronisko.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import pl.schronisko.entity.Animal;
import pl.schronisko.helpers.CustomerId;

import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Repository
public class AnimalDaoImpl implements AnimalDao {


    @Autowired
    private CustomerId customerId;

    @Autowired
    private SessionFactory sessionFactory;


    @Autowired
    private HttpServletRequest request;

    @Override
    public List<Animal> getAnimals() {
        return null;
    }

    @Override
    @Transactional
    public List<Animal> getAnimal(HttpServletRequest request) {

        long idCustomer = customerId.getCustomerId(request);

        Session currentSession = sessionFactory.getCurrentSession();

        TypedQuery<Animal> theQuery = currentSession.createQuery("from Animal where customerId=" + idCustomer, Animal.class);

        List<Animal> animals = theQuery.getResultList();

        return animals;
    }

    @Override
    public void saveTheAnimal(Animal theAnimal) {
        Session currentSession = sessionFactory.getCurrentSession();

        currentSession.saveOrUpdate(theAnimal);
    }

    @Override
    public void deleteAnimal(int id) {
        Session currentSession = sessionFactory.getCurrentSession();

        long idCustomer = customerId.getCustomerId(request);

        TypedQuery theQuery = currentSession.createQuery("delete from Animal where id=:theId and customerId=" + idCustomer);

        theQuery.setParameter("theId", id);

        theQuery.executeUpdate();
    }

    @Override
    public Animal getOneAnimal(int theId) {

        Session currentSession = sessionFactory.getCurrentSession();

        Animal theAnimal = currentSession.get(Animal.class, theId);

        return theAnimal;
    }

    @Override
    public boolean checkAnimal(int theId) {

        Session currentSession = sessionFactory.getCurrentSession();

        long idCustomer = customerId.getCustomerId(request);

        TypedQuery theQuery = currentSession.createQuery("from Animal where id=:id and customerId=" + idCustomer);
        theQuery.setParameter("id", theId);

        try{
            Animal theAnimal = (Animal) theQuery.getSingleResult();
            if (theAnimal != null) {
                return true;
            }
        }catch (NoResultException es){
            return false;
        }

        return false;



    }


}
