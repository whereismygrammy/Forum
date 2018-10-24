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


}
