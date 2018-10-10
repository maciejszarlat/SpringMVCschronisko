package pl.schronisko.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.schronisko.dao.SpeciesDao;
import pl.schronisko.entity.Species;

import java.util.List;

@Service
public class SpeciesServiceImpl implements SpeciesService {

    @Autowired
    private SpeciesDao speciesDao;

    @Override
    @Transactional
    public List<Species> getSpecies() {
        return speciesDao.getSpecies();
    }

}
