package pl.swiatek.app.topic;

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

