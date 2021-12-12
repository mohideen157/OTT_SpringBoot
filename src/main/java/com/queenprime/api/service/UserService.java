package com.queenprime.api.service;

import java.util.List;

import javax.transaction.Transactional;

import com.queenprime.api.domain.Carddetails;
import com.queenprime.api.domain.Subscription;
import com.queenprime.api.domain.Subscriptionplan;
import com.queenprime.api.domain.Mylist;
import com.queenprime.api.repository.SubscriptionRepository;
import com.queenprime.api.repository.SubscriptionplanRepository;
import com.queenprime.api.repository.MylistRepository;
import com.queenprime.api.repository.CarddetailsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.queenprime.api.domain.User;
import com.queenprime.api.domain.Video;
import com.queenprime.api.repository.UserRepository;


@Service
@Transactional
public class UserService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private SubscriptionRepository subscriptionRepository;
   
    @Autowired
    private SubscriptionplanRepository subscriptionplanRepository;
    
    @Autowired
    private CarddetailsRepository carddetailsRepository;
    
    @Autowired
    private MylistRepository mylistRepository;
    
    public List<User> listAll() {
        return (List<User>) userRepository.findAll();
    }

    public User saveUser(User user) {
         return userRepository.save(user);
    }

    public Subscription saveSubscription(Subscription subscription){
        return subscriptionRepository.save(subscription);
    }
    
    public Carddetails saveCarddetails(Carddetails carddetails){
        return carddetailsRepository.save(carddetails);
    }

    public User get(Integer id) {
        return userRepository.findById(id).get();
    }

    public void delete(Integer id) {
        userRepository.deleteById(id);
    }

    public User findByUsername(String username) {
        return userRepository.findByUserName(username);
    }

    public User getUserDetails(String email, String mobile) {
        return userRepository.findByEmailOrMobile(email,mobile);
    }
    public Iterable<Subscriptionplan> getallSubscriptionPlan(){
        return (Iterable<Subscriptionplan>) subscriptionplanRepository.findAll();
        //return null;
    }
    
   

}
