package com.njucs.scoremanage.domain.service.user;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.njucs.scoremanage.domain.model.User;

public interface UserService {
	void save(User user, String rawPassword);

	User findOne(Integer id);

	Page<User> findAll(Pageable pageable);

	Page<User> findByNameLike(String name, Pageable pageable);

	void delete(User user);
}
