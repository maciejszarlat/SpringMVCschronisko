package pl.schronisko.dao;

import pl.schronisko.entity.Role;

public interface RoleDao {

	public Role findRoleByName(String theRoleName);
	
}
