package pl.swiatek.app.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.swiatek.app.comment.Comment;
import pl.swiatek.app.comment.CommentRepository;
import pl.swiatek.app.topic.Topic;
import pl.swiatek.app.topic.TopicRepository;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserRepository userRepository;

    @Autowired
    TopicRepository topicRepository;

    @Autowired
    CommentRepository commentRepository;

    @ModelAttribute("users")
    public List<User> getUsers() {
        return userRepository.findAll();
    }

    @GetMapping("/list")
    public String listAll() {
        return "userList";
    }

    @GetMapping("/account")
    public String account(@SessionAttribute User loggedInUser, Model model) {
        long id = loggedInUser.getId();

        List<Topic> topics = topicRepository.findAllByUserId(id);
        model.addAttribute("topics", topics);

        List<Comment> comments = commentRepository.findAllByUserId(id);
        model.addAttribute("comments", comments);

        return "/user/userAccount";
    }

    @GetMapping("/edit")
    public String editUser(Model model, @SessionAttribute User loggedInUser) {
        model.addAttribute("user", loggedInUser);
        return "user/userEdit";
    }

    @PostMapping("/edit")
    public String editUser(@ModelAttribute User user, @SessionAttribute User loggedInUser) {
        loggedInUser.setSignature(user.getSignature());
        userRepository.save(loggedInUser);
        return "redirect:/user/account";
    }

    @GetMapping("/editImg")
    public String editUserImg(Model model, @SessionAttribute User loggedInUser) {
        model.addAttribute("user", loggedInUser);
        return "user/userEditImg";
    }

    @PostMapping("/editImg")
    public String editUserImg(@ModelAttribute User user, @SessionAttribute User loggedInUser) {
        loggedInUser.setImgUrl(user.getImgUrl());
        userRepository.save(loggedInUser);
        return "redirect:/user/account";
    }


//    @GetMapping("/add")
//    public String addUser(Model model) {
//        model.addAttribute("user", new User());
//        return "addUser";
//    }
//
//    @PostMapping("/add")
//    public String addUser(@Valid @ModelAttribute User user, BindingResult result) {
//        if (result.hasErrors()) {
//            return "addUser";
//        }
//        userRepository.save(user);
//        return "redirect:/user/all";
//    }
//
//
//
//    @GetMapping("/delete/{id}")
//    public String deleteUser(@PathVariable long id) {
//        userRepository.delete(id);
//        return "redirect:/user/all";
//    }
//


}
