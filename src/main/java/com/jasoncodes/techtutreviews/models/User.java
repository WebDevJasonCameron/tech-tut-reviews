package com.jasoncodes.techtutreviews.models;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "users")
public class User {

    // ATT
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @Column
    private String email;
    @Column
    private String password;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "user", orphanRemoval = true)
    private List<Review> reviews;

    // CON
    public User() {
    }
    public User(String email, String password, List<Review> reviews) {
        this.email = email;
        this.password = password;
        this.reviews = reviews;
    }


    // GET
    public long getId() {
        return id;
    }
    public String getEmail() {
        return email;
    }
    public String getPassword() {
        return password;
    }
    public List<Review> getReviews() {
        return reviews;
    }


    // SET
    public void setEmail(String email) {
        this.email = email;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public void setReviews(List<Review> reviews) {
        this.reviews = reviews;
    }


    // CHECK
    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", reviews=" + reviews +
                '}';
    }
}  //<--END
