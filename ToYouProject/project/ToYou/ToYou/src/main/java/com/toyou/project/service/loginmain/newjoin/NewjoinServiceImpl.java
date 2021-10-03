package com.toyou.project.service.loginmain.newjoin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Service;

import com.toyou.project.dao.user.UserRepository;
import com.toyou.project.model.User;

@Service
public class NewjoinServiceImpl implements NewjoinService{
	@Autowired
	private UserRepository userRepository;

	@Override
	@Query(value ="SELECT u FROM User u WHERE NOT u.userChannelLink is NULL ORDER BY u.userNo")
	public List<User> SelectAllUser() {
//		List<User> UserList = userRepository.findAll(Sort.by(Sort.Direction.DESC,"UserNo"));
		List<User> UserList = userRepository.findAll();
		return UserList;	
	}
	
	

}
