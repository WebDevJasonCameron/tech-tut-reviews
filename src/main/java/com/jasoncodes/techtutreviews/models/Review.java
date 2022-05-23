package com.jasoncodes.techtutreviews.models;

import javax.persistence.*;

@Entity
@Table(name = "reviews")
public class Review {

    // ATT
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @Column
    private String title;
    @Column(name = "review_comments")
    private String reviewComments;
    @Column
    private int rating;
    @Column
    private String thumb;

    // Later... Many to One ... User relation
    // Later... Many to Many ... Cat relation


    // CON
    public Review() {
    }
    public Review(String title, String reviewComments, int rating, String thumb) {
        this.title = title;
        this.reviewComments = reviewComments;
        this.rating = rating;
        this.thumb = thumb;
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


    // CHECK
    @Override
    public String toString() {
        return "Review{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", reviewComments='" + reviewComments + '\'' +
                ", rating=" + rating +
                ", thumb='" + thumb + '\'' +
                '}';
    }


}  //<--END
