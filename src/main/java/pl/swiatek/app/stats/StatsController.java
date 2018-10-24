package pl.swiatek.app.stats;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pl.swiatek.app.comment.Comment;
import pl.swiatek.app.comment.CommentRepository;
import pl.swiatek.app.topic.Topic;
import pl.swiatek.app.topic.TopicRepository;
import pl.swiatek.app.user.User;
import pl.swiatek.app.user.UserRepository;

import java.util.List;

@Controller
@RequestMapping("/stats")
public class StatsController {

    @Autowired
    UserRepository userRepository;

    @Autowired
    CommentRepository commentRepository;

    @Autowired
    TopicRepository topicRepository;

    @GetMapping("")
    public String showStat(Model model) {
        long userId = commentRepository.usersIdWithMostComents();
        User user = userRepository.findOne(userId);
        model.addAttribute("mostComments", user);
        model.addAttribute("mostCommentsNumber", commentRepository.maxComment());

        Topic topic = topicRepository.findOne(topicRepository.mostPopularTopicId());
        model.addAttribute("mostPopularTopic", topic);
        model.addAttribute("mostPopularTopicPostsNumber", topicRepository.mostPopularTopicCommentNumber());

        List<Topic> topics = topicRepository.findAll();
        model.addAttribute("topicsNumber", topics.size());
        List<Comment> comments = commentRepository.findAll();
        model.addAttribute("commentsNumber", comments.size());

        Topic lastTopic = topicRepository.lastTopicId();
        model.addAttribute("lastTopic",lastTopic);

        return "stats/info";
    }

    @GetMapping("/test")
    @ResponseBody
    public String testStat() {

        return "stats/info";
    }


}
