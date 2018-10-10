package pl.schronisko.dao;

import pl.schronisko.entity.User;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface UserDao {

    User findByUserName(String userName);
    
    void save(User user);

    List<User> getUsers(HttpServletRequest request);

    void saveTheUser(User theUser);
}
