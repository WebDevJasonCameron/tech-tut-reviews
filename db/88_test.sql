USE tech_tut_db;

SELECT * FROM reviews WHERE title LIKE '%g%';

INSERT INTO reviews(uid, title, review, rating, tutorialURL, thumb, cat )
VALUES (1,
        '★★★★★',
        'Comments on tutorial!!',
        3,
        'https://www.youtube.com/watch?v=Y6vXxjp6a3w',
        'http://localhost:8080/img/tut-thumbs/YouTube.png',
        'html'
       ),
       (2,
        'Review #2',
        'Comments on tutorial!',
        4,
        'https://www.youtube.com/watch?v=Y6vXxjp6a3w',
        'http://localhost:8080/img/tut-thumbs/YouTube.png',
        'css'
       ),
       (3,
        'Review #3',
        'Comments on tutorial!',
        1,
        'https://www.youtube.com/watch?v=Y6vXxjp6a3w',
        'http://localhost:8080/img/tut-thumbs/YouTube.png',
        'java'
       )
;