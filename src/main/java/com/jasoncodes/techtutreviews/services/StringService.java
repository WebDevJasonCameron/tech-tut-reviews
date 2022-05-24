package com.jasoncodes.techtutreviews.services;

import org.springframework.stereotype.Service;

@Service
public class StringService {

    // METH
    public String reduceLength(String s, int limit){
        if(limit > s.length())return s;

        return s.substring(0, limit) + "...";
    }


}  //<--END
