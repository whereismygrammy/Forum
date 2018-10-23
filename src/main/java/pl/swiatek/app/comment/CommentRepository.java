package pl.swiatek.app.comment;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import pl.swiatek.app.topic.Topic;

import java.util.List;

public interface CommentRepository extends JpaRepository<Comment, Long> {

    List<Comment> findAllByTopicId(long id);

    @Query("select c from Comment c where c.user.id = :id order by c.updated desc")
    List<Comment> findAllByUserId(@Param("id") long id);

}
