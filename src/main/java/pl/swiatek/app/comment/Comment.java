package pl.swiatek.app.comment;

import org.hibernate.validator.constraints.NotEmpty;
import pl.swiatek.app.topic.Topic;
import pl.swiatek.app.user.User;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
public class Comment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @NotEmpty
    private String content;

    @ManyToOne
    private User user;

    @ManyToOne
    private Topic topic;

    private LocalDateTime created;

    private LocalDateTime updated;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Topic getTopic() {
        return topic;
    }

    public void setTopic(Topic topic) {
        this.topic = topic;
    }

    public LocalDateTime getCreated() {
        return created;
    }

    public void setCreated(LocalDateTime created) {
        this.created = created;
    }

    public LocalDateTime getUpdated() {
        return updated;
    }

    public void setUpdated(LocalDateTime updated) {
        this.updated = updated;
    }


    @Override
    public String toString() {
        return "Comment{" +
                "content='" + content + '\'' +
                ", user=" + user.getNick() +
                ", topic=" + topic.getName() +
                ", created=" + created +
                ", updated=" + updated +
                '}';
    }
}
