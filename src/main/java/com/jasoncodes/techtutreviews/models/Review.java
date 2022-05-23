package com.jasoncodes.techtutreviews.models;

import javax.persistence.*;

@Entity
@Table(name = "reviews")
public class Review {

    // ATT
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @Column(length = 255)
    private String title;
    @Column(name = "review_comments", length = 10_000)
    private String reviewComments;
    @Column
    private int rating;
    @Column
    private String thumb;
    @Column String url;
    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    // Later... Many to One ... User relation
    // Later... Many to Many ... Cat relation


    // CON
    public Review() {
    }
    public Review(String title, String reviewComments, int rating, String thumb, String url, User user) {
        this.title = title;
        this.reviewComments = reviewComments;
        this.rating = rating;
        this.thumb = thumb;
        this.url = url;
        this.user = user;
    }

    // GET
    public long getId() {
        return id;
    }
    public String getTitle() {
        return title;
    }
    public String getReviewComments() {
        return reviewComments;
    }
    public int getRating() {
        return rating;
    }
    public String getThumb() {
        return thumb;
    }
    public String getUrl() {
        return url;
    }
    public User getUser() {
        return user;
    }


    // SET
    public void setTitle(String title) {
        this.title = title;
    }
    public void setReviewComments(String reviewComments) {
        this.reviewComments = reviewComments;
    }
    public void setRating(int rating) {
        this.rating = rating;
    }
    public void setThumb(String thumb) {
        this.thumb = thumb;
    }
    public void setUrl(String url) {
        this.url = url;
    }
    public void setUser(User user) {
        this.user = user;
    }

    // CHECK
    @Override
    public String toString() {
        return "Review{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", reviewComments='" + reviewComments + '\'' +
                ", rating=" + rating +
                ", thumb='" + thumb + '\'' +
                ", url='" + url + '\'' +
                ", user=" + user +
                '}';
    }
}  //<--END
