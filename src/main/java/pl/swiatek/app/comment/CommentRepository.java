package pl.swiatek.app.comment;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;


@Repository
@Transactional
public interface CommentRepository extends JpaRepository<Comment, Long> {

    List<Comment> findAllByTopicId(long id);

    @Query("select c from Comment c where c.user.id = :id order by c.updated desc")
    List<Comment> findAllByUserId(@Param("id") long id);

    void deleteAllByTopicId(Long id);

    @Query(value = "select user_id from Comment group by user_id order by count(all user_id) desc limit 1;", nativeQuery = true)
    long usersIdWithMostComents();

    @Query(value = "select count(all user_id) AS COUNT from Comment group by user_id order by COUNT desc limit 1;", nativeQuery = true)
    int maxComment();

//    @Query(value = "select user_id as ID, count(all user_id) AS COUNT from Comment group by user_id order by COUNT desc limit 1;", nativeQuery = true)
//    List<long> usersIdWithMostComents2();
}

