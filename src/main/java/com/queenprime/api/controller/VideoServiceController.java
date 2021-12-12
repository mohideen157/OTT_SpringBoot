package com.queenprime.api.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import com.queenprime.api.domain.Entities;
import com.queenprime.api.domain.Mylist;
import com.queenprime.api.repository.EntitiesRepository;
import com.queenprime.api.repository.MylistRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.queenprime.api.domain.Carddetails;
import com.queenprime.api.domain.Categories;
import com.queenprime.api.domain.Posters;
import com.queenprime.api.domain.Video;
import com.queenprime.api.repository.CategoriesRepository;
import com.queenprime.api.repository.PostersRepository;
import com.queenprime.api.service.VideoDaoJpa;

@RestController
public class VideoServiceController {

    @Autowired
    private VideoDaoJpa videoDaoJpa;

    @Autowired
    private CategoriesRepository categoriesRepository;

    @Autowired
    private PostersRepository postersRepository;

    @Autowired
    private EntitiesRepository entitiesRepository;
    
    
    @Autowired
    private MylistRepository mylistRepository;


    @GetMapping("/allVideos")
    public List<Video> getAllVideos(){
        return videoDaoJpa.getAllVideos();
    }

    @GetMapping("/{videoId}")
    public Video getVideoById(@PathVariable("videoId") Integer videoId){
        return videoDaoJpa.getVideoById(videoId);
    }

    @PostMapping("/addvideo")
    public Video addVideo(@RequestBody Video video){
        return videoDaoJpa.addVideoToDb(video);

    }


    @PostMapping("/updateVideo")
    public Video updateVideo(@RequestBody Video video){
        return videoDaoJpa.updateVideo(video);
    }

    @GetMapping({"/allCategories/{id}","/allCategories"})
    public List<Categories> getAllCategories(@PathVariable(name="id",required = false) Integer id){
        List<Categories> resultList= new ArrayList<>();
        if(id != null & !"".equals(id)){
            resultList=categoriesRepository.findAllById(id);
        }else {
            resultList= categoriesRepository.findAll();
        }
        return resultList;
    }

    @GetMapping({"/allEntities/{id}","/allEntities"})
    public List<Entities> getAllEntities(@PathVariable(name="id",required = false) Integer id){
        List<Entities> resultList= new ArrayList<>();
        if(id != null & !"".equals(id)){
            resultList=entitiesRepository.findAllById(id);
        }else {
            resultList= entitiesRepository.findAll();
        }
        return resultList;
    }

    @GetMapping("/allPosters")
    public List<Posters> getAllPosters(){
        return postersRepository.findAll();
    }
    
    
    @GetMapping({"/mylist/{userId}","/mylist"})
    public List<Mylist> getmylist(@PathVariable(name="userId",required = false)Integer userId){
      // (List<Mylist>) mylistRepository.findAll();
    	List<Mylist> resultList= new ArrayList<>();
       if(userId != null & !"".equals(userId)){
           resultList=mylistRepository.findAllByuserId(userId);
       }else {
           resultList= mylistRepository.findAll();
       }
       return resultList;
    }
    
    
    
    
    
    @RequestMapping (value = "/data/mylist")
	@ResponseBody
	public Mylist saveMylist(@RequestBody Mylist mylist)  {
		return videoDaoJpa.saveMylist(mylist);
	}
    
  
}
