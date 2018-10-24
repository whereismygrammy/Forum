package pl.swiatek.app.user;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import pl.swiatek.app.comment.Comment;
import pl.swiatek.app.topic.Topic;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.time.LocalDate;
import java.util.List;

@Entity
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @NotNull
    @Column(unique = true)
    private String nick;

    @NotBlank
    private String password;

    @Email
    @Column(unique = true)
    private String email;

    @OneToMany
    private List<Comment> commentList;

    @OneToMany
    private List<Topic> topicList;

    private int likes;

    @Size(max = 250)
    private String signature;

    @Size(max = 250)
    private String imgUrl = "https://v-play.net/doc/images/used-in-examples/examples/gamenetwork/GameNetworkTest/android/vendor/facebook/res/drawable/com_facebook_profile_picture_blank_square.png";

    private LocalDate created;

    private LocalDate lastLogin;

    @PrePersist
    protected void onCreate() {
        setCreated(LocalDate.now());
    }


    ///////////////////


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNick() {
        return nick;
    }

    public void setNick(String nick) {
        this.nick = nick;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public List<Comment> getCommentList() {
        return commentList;
    }

    public void setCommentList(List<Comment> commentList) {
        this.commentList = commentList;
    }

    public List<Topic> getTopicList() {
        return topicList;
    }

    public void setTopicList(List<Topic> topicList) {
        this.topicList = topicList;
    }

    public int getLikes() {
        return likes;
    }

    public void setLikes(int likes) {
        this.likes = likes;
    }

    public String getSignature() {
        return signature;
    }

    public void setSignature(String signature) {
        this.signature = signature;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public LocalDate getCreated() {
        return created;
    }

    public void setCreated(LocalDate created) {
        this.created = created;
    }

    public LocalDate getLastLogin() {
        return lastLogin;
    }

    public void setLastLogin(LocalDate lastLogin) {
        this.lastLogin = lastLogin;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", nick='" + nick + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", topicList=" + topicList +
                ", likes=" + likes +
                ", signature='" + signature + '\'' +
                ", created=" + created +
                ", lastLogin=" + lastLogin +
                '}';
    }
}