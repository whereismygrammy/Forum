package pl.swiatek.app.topic;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TopicRepository extends JpaRepository<Topic, Long> {

    List<Topic> findAllByOrderByUpdatedDesc();

    List<Topic> findAllByUser(long id);

    @Query("select t from Topic t where t.user.id = :id order by t.updated desc")
    List<Topic> findAllByUserId(@Param("id") long id);

    @Query(value = "select topic_id from Comment group by topic_id order by count(all topic_id) desc limit 1;", nativeQuery = true)
    long mostPopularTopicId();

    @Query(value = "select count(all topic_id) AS COUNT from Comment group by topic_id order by COUNT desc limit 1;", nativeQuery = true)
    long mostPopularTopicCommentNumber();

    @Query(value = "select * from Topic order by created DESC limit 1;", nativeQuery = true)
    Topic lastTopicId();


}
