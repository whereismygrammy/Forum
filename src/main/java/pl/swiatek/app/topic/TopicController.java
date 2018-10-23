package pl.swiatek.app.topic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.swiatek.app.comment.Comment;
import pl.swiatek.app.comment.CommentRepository;

import java.util.List;

@Controller
@RequestMapping("/topic")
public class TopicController {


    @Autowired
    TopicRepository topicRepository;

    @Autowired
    CommentRepository commentRepository;

    @GetMapping("/{id}")
    public String showTopic(@PathVariable long id, Model model) {
        Topic topic = topicRepository.findOne(id);
        model.addAttribute("topic", topic);

        List<Comment> comments = commentRepository.findAllByTopicId(id);
        model.addAttribute("comments", comments);

        return "topicDetails";
    }

    // TO TRZEBA SKONCZYC PO DODANIU USEROW I LOGOWANIA
//    @GetMapping("/{id}/add/")
//    public String addComment(@PathVariable long id, Model model){
//        Comment comment = new Comment();
//        comment.setTopic(topicRepository.findOne(id));
//        model.addAttribute("comment", comment);
//        return "commentAdd";
//    }


}

