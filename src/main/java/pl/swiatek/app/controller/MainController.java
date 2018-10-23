package pl.swiatek.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.swiatek.app.topic.Topic;
import pl.swiatek.app.topic.TopicRepository;

import java.util.List;

@Controller
@RequestMapping("/")
public class MainController {


    @Autowired
    TopicRepository topicRepository;

    @ModelAttribute("topics")
    public List<Topic> getUsers() {
        return topicRepository.findAllByOrderByUpdated();
    }


    @GetMapping("/")
    public String home(){
        return "home";
    }


}
