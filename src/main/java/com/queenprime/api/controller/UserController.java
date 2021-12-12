
package com.queenprime.api.controller;

import java.io.Serializable;
import java.sql.Date;
import java.util.Calendar;
import java.util.List;
import java.util.Objects;

import com.queenprime.api.domain.Subscription;
import com.queenprime.api.domain.Subscriptionplan;
import com.queenprime.api.domain.Carddetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.queenprime.api.config.JwtTokenUtil;
import com.queenprime.api.domain.User;
import com.queenprime.api.domain.Video;
import com.queenprime.api.service.JwtUserDetailsService;
import com.queenprime.api.service.UserService;


@Controller("ManageUserRoles")
//@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	private PasswordEncoder bcryptEncoder;

	@Autowired
	private AuthenticationManager authenticationManager;

	@Autowired
	private JwtTokenUtil jwtTokenUtil;

	@Autowired
	private JwtUserDetailsService jwtInMemoryUserDetailsService;

	@GetMapping("/user/all")
	public List<User> list() {
		return userService.listAll();
	}

	@GetMapping("/user/{id}")
	public User getUser(@PathVariable Integer id) {
		return userService.get(id);
	}

	@CrossOrigin
	@PostMapping("/user/add")
	public String addUser(@RequestBody User user) {
		try {
			userService.saveUser(user);
		} catch (Exception e) {
			e.printStackTrace();
			return e.getMessage();
		}
		return "Added successfully";
	}

	@PostMapping(value = "/user/authenticate", consumes = "application/x-www-form-urlencoded;charset=UTF-8")
	public ResponseEntity<String> generateAuthenticationToken(@RequestParam String username,
															  @RequestParam String password) throws Exception {

		//System.out.println(username);
		//System.out.println(password);

		try {
			authenticate(username, password);
		} catch (Exception e) {
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
		}

		//User user = userService.findByUsername(username);

		return ResponseEntity.status(HttpStatus.OK).body(jwtTokenUtil.generateToken(jwtInMemoryUserDetailsService.loadUserByUsername(username)));

	}

	@RequestMapping (value = "/user/register")
	@ResponseBody
	public User saveUser(@RequestBody User user)  {
		user.setPassword(bcryptEncoder.encode(user.getPassword()));
		user.setSignUpDate(new Date(Calendar.getInstance().getTime().getTime()));
		user.setIsSubscribed(0);
		user.setIsactive(1);
		return userService.saveUser(user);
	}

	@RequestMapping (value = "/user/subscription")
	@ResponseBody
	public Subscription saveSubscription(@RequestBody Subscription subscription)  {
		return userService.saveSubscription(subscription);
	}
	
	
	@RequestMapping (value = "/user/card")
	@ResponseBody
	public Carddetails saveCarddetails(@RequestBody Carddetails carddetails)  {
		return userService.saveCarddetails(carddetails);
	}

	private void authenticate(String username, String password) throws Exception {
		Objects.requireNonNull(username);
		Objects.requireNonNull(password);
		try {
			authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(username, password));
		} catch (DisabledException e) {
			throw new Exception("USER_DISABLED", e);
		} catch (BadCredentialsException e) {
			throw new Exception("INVALID_CREDENTIALS", e);
		}
	}

	@RequestMapping (value = "/user/checkUser")
	@ResponseBody
	public User getUserDetails(@RequestBody User user) {
		//try {
		return userService.getUserDetails(user.getEmail(), user.getMobile());
		//}
		//catch (Exception e) {
			//return User.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
		//}
		//return User.status(HttpStatus.OK).body(jwtTokenUtil.generateToken(jwtInMemoryUserDetailsService.loadUserByUsername(username)));
		//}
	}
	
		@RequestMapping("/Subscriptionplan")
		@ResponseBody
	    public Iterable<Subscriptionplan> getallSubscriptionPlan()
		{
	        return userService.getallSubscriptionPlan();
	    }
	 
	 
	
	}
