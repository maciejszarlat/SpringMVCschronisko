package pl.schronisko.service;

import pl.schronisko.entity.User;
import pl.schronisko.user.CrmUser;
import org.springframework.security.core.userdetails.UserDetailsService;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface UserService extends UserDetailsService {

    User findByUserName(String userName);

    void save(CrmUser crmUser);

    List<User> getUsers(HttpServletRequest request);

    void saveTheUser(User theUser);
}
