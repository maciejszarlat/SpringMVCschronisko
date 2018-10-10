package pl.schronisko.helpers;

import org.springframework.stereotype.Component;
import pl.schronisko.entity.User;

import javax.servlet.http.HttpServletRequest;

@Component
public class CustomerId {

    public long getCustomerId(HttpServletRequest request){

		User user = (User)request.getSession().getAttribute("user");

		long custId = user.getCustomerId();

        return custId;

    }

}
