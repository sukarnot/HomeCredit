package com.test.homecredit.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

import com.test.homecredit.entity.UserModule;

public interface UserModuleDAO extends PagingAndSortingRepository<UserModule, String> {

	@Query("Select um From UserModule um " +
			"where um.user.userId = :userId order by um.seq asc") 
	public List<UserModule> getUserModule(@Param("userId") String userId);
	
}
