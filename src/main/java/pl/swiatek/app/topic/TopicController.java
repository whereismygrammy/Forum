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

        Comment comment = new Comment();
        model.addAttribute("comment", comment);

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
        comment.setTopic(topicRepository.findOne(topicId));
        comment.setCreated(LocalDateTime.now());
        comment.setUser(loggedInUser);
        commentRepository.save(comment);
        return "redirect:/topic/" + topicId;
    }



    /// TODO
    @GetMapping("/{topicId}/{commentId}/")
    public String delComment(@PathVariable long commentId, @PathVariable long topicId) {
        Comment one = commentRepository.getOne(commentId);

//        Topic topic = topicRepository.findOneByCommentId(commentId);
//        for(Comment c : topic.getCommentList()){
//            if (c.getId() == commentId){
//                System.out.println(c.getContent());
//                c.setTopic(null);
//            }
//        }

        commentRepository.save(one);
        commentRepository.delete(commentId);
        return "redirect:/topic/" + topicId;
    }
}

