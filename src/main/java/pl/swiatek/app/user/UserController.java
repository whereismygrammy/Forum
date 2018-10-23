package pl.swiatek.app.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import pl.swiatek.app.comment.Comment;
import pl.swiatek.app.comment.CommentRepository;
import pl.swiatek.app.topic.Topic;
import pl.swiatek.app.topic.TopicRepository;

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

        return "userAccount";
    }


//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
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
//    @GetMapping("/edit/{id}")
//    public String editUser(Model model, @PathVariable long id) {
//        model.addAttribute("user", userRepository.findOne(id));
//        return "addUser";
//    }
//
//    @PostMapping("/edit/{id}")
//    public String editUser(@Valid @ModelAttribute User user, BindingResult result) {
//        if (result.hasErrors()) {
//            return "addUser";
//        }
//        userRepository.save(user);
//        return "redirect:/user/all";
//    }

}
