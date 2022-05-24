package com.jasoncodes.techtutreviews.repositories;

import com.jasoncodes.techtutreviews.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {

    User findByUsername(String username);


}
