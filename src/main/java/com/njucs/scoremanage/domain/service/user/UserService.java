package com.njucs.scoremanage.domain.service.user;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.njucs.scoremanage.domain.model.User;

public interface UserService {
//	void save(User user, String rawPassword);
	void save(User user);

	User findOne(Integer id);

	List<User> findAll();

	Page<User> findAll(Pageable pageable);

	Page<User> findByNameLike(String name, Pageable pageable);

	void delete(User user);
}
