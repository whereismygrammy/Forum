package pl.swiatek.app.topic;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface TopicRepository extends JpaRepository<Topic, Long> {

    List<Topic> findAllByOrderByUpdated();

    List<Topic> findAllByUser(long id);


    @Query("select t from Topic t where t.user.id = :id order by t.updated desc")
    List<Topic> findAllByUserId(@Param("id") long id);

//    @Query("select t from Topic t where t.title like :param% order by t.created desc")
//    List<Topic> findAllStartedWithParam(@Param("param") String param);

}
