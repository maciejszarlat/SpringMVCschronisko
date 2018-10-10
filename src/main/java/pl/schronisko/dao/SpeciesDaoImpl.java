package pl.schronisko.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import pl.schronisko.entity.Species;

import javax.persistence.TypedQuery;
import java.util.List;

@Repository
public class SpeciesDaoImpl implements SpeciesDao{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    @Transactional
    public List<Species> getSpecies() {

        Session currentSession = sessionFactory.getCurrentSession();

        TypedQuery<Species> theQuery = currentSession.createQuery("from Species", Species.class);

        List<Species> species = theQuery.getResultList();

        return species;
    }




}
