package pl.swiatek.app.topic;

import com.sun.xml.internal.bind.v2.TODO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.swiatek.app.comment.Comment;
import pl.swiatek.app.comment.CommentRepository;
import pl.swiatek.app.user.User;
import pl.swiatek.app.user.UserRepository;

import javax.validation.Valid;
import java.time.LocalDateTime;
import java.util.List;

@Controller
@RequestMapping("/topic")
public class TopicController {


    @Autowired
    TopicRepository topicRepository;

    @Autowired
    CommentRepository commentRepository;

    @Autowired
    UserRepository userRepository;

    @GetMapping("/{id}")
    public String showTopic(@PathVariable long id, Model model) {
        Topic topic = topicRepository.findOne(id);
        model.addAttribute("topic", topic);

        List<Comment> comments = commentRepository.findAllByTopicId(id);
        model.addAttribute("comments", comments);

        return "topicDetails";
    }

    @GetMapping("/addTopic")
    public String addTopic(Model model) {
        Topic topic = new Topic();
        model.addAttribute("topic", topic);
        return "/topic/topicAdd";
    }

    @PostMapping("/addTopic")
    public String addTopic(@Valid @ModelAttribute Topic topic, BindingResult result, @SessionAttribute User loggedInUser) {
        if (result.hasErrors()) {
            return "/topic/topicAdd";

        }
        topic.setCreated(LocalDateTime.now());
        topic.setUpdated(LocalDateTime.now());
        topic.setUser(loggedInUser);
        topicRepository.save(topic);
        return "redirect:/";
    }


    @GetMapping("/delTopic/{id}")
    public String delTopic(Model model, @PathVariable long id) {

        List<Comment> comments = commentRepository.findAllByTopicId(id);

        for (Comment c : comments) {
            commentRepository.delete(c.getId());
        }

        Topic topic = topicRepository.findOne(id);
        topic.setUser(null);
        topicRepository.save(topic);


        topicRepository.delete(id);
        return "redirect:/";
    }


    @GetMapping("/edit/{topicId}/")
    public String editTopic(@PathVariable long topicId, Model model) {
        Topic topic = topicRepository.findOne(topicId);
        model.addAttribute("topic", topic);
        return "/topic/topicAdd";
    }

    @PostMapping("/edit/{topicId}/")
    public String editTopic(@Valid @ModelAttribute Topic topic, BindingResult result, @PathVariable long topicId) {
        if (result.hasErrors()) {
            return "/topic/topicAdd";
        }
        Topic oldTopic = topicRepository.findOne(topicId);
        oldTopic.setContent(topic.getContent());
        oldTopic.setName(topic.getName());
        oldTopic.setUpdated(LocalDateTime.now());
        topicRepository.save(oldTopic);
        return "redirect:/topic/" + topicId;
    }


    @GetMapping("/{id}/addComment/")
    public String addComment(@PathVariable long id, Model model) {
        Comment comment = new Comment();
        comment.setTopic(topicRepository.findOne(id));
        model.addAttribute("comment", comment);
        return "commentAdd";
    }


    @PostMapping("/{topicId}/addComment/")
    public String addComment(@Valid @ModelAttribute Comment comment, BindingResult result, @PathVariable long topicId, @SessionAttribute User loggedInUser) {
        if (result.hasErrors()) {
            return "commentAdd";
        }

        Topic topic = topicRepository.findOne(topicId);
        topic.setUpdated(LocalDateTime.now());
        topicRepository.save(topic);

        comment.setTopic(topic);
        comment.setCreated(LocalDateTime.now());
        comment.setUser(loggedInUser);
        commentRepository.save(comment);
        return "redirect:/topic/" + topicId;
    }


    @GetMapping("/{topicId}/delete/{commentId}/")
    public String delComment(@PathVariable long commentId, @PathVariable long topicId) {
        commentRepository.delete(commentId);
        return "redirect:/topic/" + topicId;
    }

    @GetMapping("/{topicId}/edit/{commentId}/")
    public String editComment(@PathVariable long commentId, @PathVariable long topicId, Model model) {
        Comment comment = commentRepository.findOne(commentId);
        model.addAttribute("comment", comment);
        return "commentAdd";
    }

    @PostMapping("/{topicId}/edit/{commentId}/")
    public String editComment(@Valid @ModelAttribute Comment comment, BindingResult result, @PathVariable long topicId, @PathVariable long commentId) {
        if (result.hasErrors()) {
            return "commentAdd";
        }

        Topic topic = topicRepository.findOne(topicId);
        topic.setUpdated(LocalDateTime.now());
        topicRepository.save(topic);

        Comment oldComment = commentRepository.findOne(commentId);
        oldComment.setContent(comment.getContent());
        oldComment.setUpdated(LocalDateTime.now());

        commentRepository.save(oldComment);
        return "redirect:/topic/" + topicId;
    }
}

