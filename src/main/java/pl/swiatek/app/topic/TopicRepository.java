package pl.swiatek.app.topic;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.swiatek.app.comment.Comment;

import java.util.List;

public interface TopicRepository extends JpaRepository<Topic, Long> {

    List<Topic> findAllByOrderByUpdated();

}
