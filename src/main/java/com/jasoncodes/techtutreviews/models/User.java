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
    private String username;
    @Column
    private String email;
    @Column
    private String password;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "user", orphanRemoval = true)
    private List<Review> reviews;

    // CON
    public User() {
    }
    public User(String username, String email, String password, List<Review> reviews) {
        this.username = username;
        this.email = email;
        this.password = password;
        this.reviews = reviews;
    }

    // COPY -- SECURITY
    public User(User copy) {
        id = copy.id; // This line is SUPER important! Many things won't work if it's absent
        email = copy.email;
        username = copy.username;
        password = copy.password;
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
    public String getUsername() {
        return username;
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
    public void setUsername(String username) {
        this.username = username;
    }

    // CHECK
    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", reviews=" + reviews +
                '}';
    }


}  //<--END
