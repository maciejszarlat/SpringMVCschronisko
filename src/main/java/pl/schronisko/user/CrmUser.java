package pl.schronisko.user;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import pl.schronisko.validation.FieldMatch;
import pl.schronisko.validation.ValidEmail;

@FieldMatch.List({
    @FieldMatch(first = "password", second = "matchingPassword", message = "Hasła muszą sie zgadzać!")
})
public class CrmUser {

	@ValidEmail
	@NotNull(message = "Pole wymagane")
	@Size(min = 1, message = "Pole wymagane")
	private String userName;

	@NotNull(message = "Pole wymagane")
	@Size(min = 1, message = "Pole wymagane")
	private String password;
	
	@NotNull(message = "Pole wymagane")
	@Size(min = 1, message = "Pole wymagane")
	private String matchingPassword;


	public CrmUser() {

	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMatchingPassword() {
		return matchingPassword;
	}

	public void setMatchingPassword(String matchingPassword) {
		this.matchingPassword = matchingPassword;
	}



}
