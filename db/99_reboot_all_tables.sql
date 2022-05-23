USE tech_tut_db;
-- 1.
--    Only run this if all tables exist
-- 2.
TRUNCATE users;
DROP TABLE IF EXISTS users;
CREATE TABLE users (
                       id              int(10) NOT NULL AUTO_INCREMENT,
                       username        varchar(255) NOT NULL UNIQUE,
                       email           varchar(255) NOT NULL UNIQUE,
                       password        varchar(255) NOT NULL,
                       avatar          varchar(255),
                       PRIMARY KEY (id));
-- 3. Seed Table:
INSERT INTO users (username, email, password, avatar)
VALUES ('BobaFett', 'bobaFett@war.com', '1234', '/img/avatars/black-01.png'),
       ('Anakin', 'ASky@Darkside.com', '1234', '/img/avatars/black-01.png'),
       ('CadBane', 'Cad@grey.com', '1234', '/img/avatars/LightBlue-01.png'),
       ('Yoda', 'Yoda@yogurt.com', '1234', '/img/avatars/Brown-01.png'),
       ('Jabba', 'Jabba@crime.com', '1234', '/img/avatars/Brown-01.png'),
       ('Leia', 'Leia@fightCrime.com', '1234', '/img/avatars/Orange-01.png'),
       ('Luke', 'Luke@sucks.com', '1234', '/img/avatars/Pink-01.png')

;
-- 3.
TRUNCATE Reviews;
DROP TABLE IF EXISTS Reviews;
CREATE TABLE reviews (
                         id                int(10) NOT NULL AUTO_INCREMENT,
                         uid               int(10) NOT NULL,
                         title             varchar(255) NOT NULL,
                         review            MEDIUMTEXT NOT NULL,
                         rating            int(10) NOT NULL,
                         tutorialURL       varchar(255) NOT NULL,
                         thumb             varchar(255) NOT NULL,
                         cat               varchar(255),
                         PRIMARY KEY (id));
;

-- 3. Seed Table:
INSERT INTO reviews(uid, title, review, rating, tutorialURL, thumb, cat )
VALUES (1,
        'Review title 01',
        'Luuke jar solo anakin mothma jade zabrak tusken raider. Antilles organa dantooine gamorrean windu dantooine yavin. Skywalker hutt aayla c-3p0 kessel. Coruscant darth yavin ahsoka windu jade mace amidala. Moff luke mothma darth. Moff kenobi hutt darth mustafar darth. C-3po skywalker jabba r2-d2 wicket ponda. Skywalker ben windu kamino tatooine wampa antilles mandalore palpatine. Moff anakin antilles dooku lars. Sith antilles maul ewok wookiee coruscant hutt. Darth binks lobot moff antilles mace.
        Coruscant jade dagobah windu mandalorians. Mon leia jabba utapau. Droid jade luuke k-3po darth c-3p0 endor jinn. Antilles kessel jinn skywalker. Skywalker qui-gon chewbacca dagobah dagobah. Ahsoka wookiee solo darth calrissian moff calrissian moff. Palpatine sith kashyyyk fett darth. Bothan dooku darth darth grievous. Organa mara coruscant jango dagobah kashyyyk. Organa maul sebulba',
        3,
        'https://www.youtube.com/watch?v=Y6vXxjp6a3w',
        'http://localhost:8080/img/tut-thumbs/BitDegree.png',
        'html'
       ),
       (2,
        'Review title 02',
        'Mustafar thrawn coruscant coruscant utapau thrawn hoth mace sidious. Chewbacca watto luuke ackbar chewbacca jawa jango moff sidious. Yoda watto jabba palpatine r2-d2 grievous skywalker jango. Tatooine padmé windu darth dagobah aayla han darth dooku. Hutt kit skywalker leia jango dagobah zabrak. Dooku skywalker dagobah darth leia antilles watto. Dantooine skywalker skywalker organa alderaan. Ponda solo boba calamari jabba. Kenobi sidious luuke antilles mara dooku. Organa ventress organa mothma greedo.

        Luuke moff gonk solo sith darth moff. Vader mace sith obi-wan skywalker solo mon anakin mandalorians. Grievous darth calrissian hutt skywalker antilles padmé. Lobot mandalore calamari palpatine. Gamorrean padmé calrissian luuke mothma darth darth. Solo antilles fett kit naboo mon jango jango amidala. Calamari solo fett solo gonk fett tatooine binks. Darth leia hutt kit endor c-3po gamorrean darth. Han grievous skywalker wicket k-3po darth darth. Yavin coruscant darth jinn ewok. Mara biggs obi-wan chewbacca',
        2,
        'https://www.youtube.com/watch?v=Y6vXxjp6a3w',
        'http://localhost:8080/img/tut-thumbs/EvatoTuts.png',
        'css'
       ),
       (3,
        'Review title 03',
        'Mustafar thrawn coruscant coruscant utapau thrawn hoth mace sidious. Chewbacca watto luuke ackbar chewbacca jawa jango moff sidious. Yoda watto jabba palpatine r2-d2 grievous skywalker jango. Tatooine padmé windu darth dagobah aayla han darth dooku. Hutt kit skywalker leia jango dagobah zabrak. Dooku skywalker dagobah darth leia antilles watto. Dantooine skywalker skywalker organa alderaan. Ponda solo boba calamari jabba. Kenobi sidious luuke antilles mara dooku. Organa ventress organa mothma greedo.

        Luuke moff gonk solo sith darth moff. Vader mace sith obi-wan skywalker solo mon anakin mandalorians. Grievous darth calrissian hutt skywalker antilles padmé. Lobot mandalore calamari palpatine. Gamorrean padmé calrissian luuke mothma darth darth. Solo antilles fett kit naboo mon jango jango amidala. Calamari solo fett solo gonk fett tatooine binks. Darth leia hutt kit endor c-3po gamorrean darth. Han grievous skywalker wicket k-3po darth darth. Yavin coruscant darth jinn',
        5,
        'https://www.youtube.com/watch?v=Y6vXxjp6a3w',
        'http://localhost:8080/img/tut-thumbs/MIT.png',
        'html'
       ),
       (1,
        'Review title 04',
        'Mustafar thrawn coruscant coruscant utapau thrawn hoth mace sidious. Chewbacca watto luuke ackbar chewbacca jawa jango moff sidious. Yoda watto jabba palpatine r2-d2 grievous skywalker jango. Tatooine padmé windu darth dagobah aayla han darth dooku. Hutt kit skywalker leia jango dagobah zabrak. Dooku skywalker dagobah darth leia antilles watto. Dantooine skywalker skywalker organa alderaan. Ponda solo boba calamari jabba. Kenobi sidious luuke antilles mara dooku. Organa ventress organa mothma greedo.

        Luuke moff gonk solo sith darth moff. Vader mace sith obi-wan skywalker solo mon anakin mandalorians. Grievous darth calrissian hutt skywalker antilles padmé. Lobot mandalore calamari palpatine. Gamorrean padmé calrissian luuke mothma darth darth. Solo antilles fett kit naboo mon jango jango amidala. Calamari solo fett solo gonk fett tatooine binks. Darth leia hutt kit endor c-3po gamorrean darth. Han grievous skywalker wicket k-3po darth darth. Yavin coruscant darth jinn',
        5,
        'https://www.youtube.com/watch?v=Y6vXxjp6a3w',
        'http://localhost:8080/img/tut-thumbs/FutureLearn.png',
        'bootstrap'
       ),
       (2,
        'Review title 05',
        'darth darth wicket c-3po. Sidious windu secura windu. Boba jade organa watto anakin windu anakin solo leia. Fisto dantooine grievous dagobah mustafar jinn moff. Jade jade gonk solo darth ackbar darth mandalorians grievous. Jabba binks jar thrawn mara skywalker bothan coruscant. Wookiee yoda organa mon darth. Jabba calamari jango cade. Mon dantooine mothma solo moff wedge windu hutt. Hutt skywalker qui-gonn hutt yoda lobot grievous aayla ewok. Watto organa ackbar mon skywalker mon organa. Hutt mon darth hutt aayla.

        Organa c-3p0 mace darth calamari dantooine solo. K-3po greedo dagobah kashyyyk. Jinn lando mace utapau skywalker binks anakin. Ben skywalker fett solo jango darth. Greedo ponda kessel jango antilles. Kenobi mon luuke yoda mandalorians leia wedge. Coruscant kashyyyk fett jinn alderaan mon. Sidious darth chewbacca hutt kessel wampa palpatine yoda. Calrissian skywalker darth mandalore ',
        4,
        'https://www.youtube.com/watch?v=Y6vXxjp6a3w',
        'http://localhost:8080/img/tut-thumbs/Skillcrush.png',
        'maven'
       ),
       (1,
        'Review title 06',
        'Ponda kit tatooine hutt solo solo ben organa bothan. Obi-wan droid mon darth mara solo kessel yavin. Ben ackbar organa jango dagobah windu mace. Darth palpatine darth leia biggs r2-d2 tatooine darth bespin. Vader hutt k-3po leia amidala. Luuke baba mothma solo jade. Vader moff kamino jango. Sidious ben cade lando mustafar yavin. Hutt solo anakin calamari mace windu hutt antilles. Hutt hutt jinn alderaan darth yavin hutt mandalore hutt. Wookiee hutt antilles anakin luke. Solo ahsoka jabba hutt palpatine yoda.

        Fett jade hutt sidious organa. Sebulba jawa amidala hutt darth. Dagobah boba skywalker wedge organa. Skywalker han antilles jinn cade yavin kit moff. Greedo moff lando mothma kashyyyk hutt yoda darth. Mon kit c-3p0 windu ahsoka solo biggs skywalker. Naboo solo darth twi''lek secura leia grievous kashyyyk. Ben dooku hutt naboo mace solo anakin darth darth. Yoda endor leia hutt sith. Calamari maul owen leia lars solo. Jango palpatine sebulba darth dooku wedg',
        2,
        'https://www.youtube.com/watch?v=Y6vXxjp6a3w',
        'http://localhost:8080/img/tut-thumbs/Coursera.png',
        'javascript'
       ),
       ( 1,
         'Review title 07',
         'Luuke jar solo anakin mothma jade zabrak tusken raider. Antilles organa dantooine gamorrean windu dantooine yavin. Skywalker hutt aayla c-3p0 kessel. Coruscant darth yavin ahsoka windu jade mace amidala. Moff luke mothma darth. Moff kenobi hutt darth mustafar darth. C-3po skywalker jabba r2-d2 wicket ponda. Skywalker ben windu kamino tatooine wampa antilles mandalore palpatine. Moff anakin antilles dooku lars. Sith antilles maul ewok wookiee coruscant hutt. Darth binks lobot moff antilles mace.
         Coruscant jade dagobah windu mandalorians. Mon leia jabba utapau. Droid jade luuke k-3po darth c-3p0 endor jinn. Antilles kessel jinn skywalker. Skywalker qui-gon chewbacca dagobah dagobah. Ahsoka wookiee solo darth calrissian moff calrissian moff. Palpatine sith kashyyyk fett darth. Bothan dooku darth darth grievous. Organa mara coruscant jango dagobah kashyyyk. Organa maul sebulba',
         3,
         'https://www.youtube.com/watch?v=Y6vXxjp6a3w',
         'http://localhost:8080/img/tut-thumbs/BitDegree.png',
         'html'
       ),
       (2,
        'Review title 02',
        'Mustafar thrawn coruscant coruscant utapau thrawn hoth mace sidious. Chewbacca watto luuke ackbar chewbacca jawa jango moff sidious. Yoda watto jabba palpatine r2-d2 grievous skywalker jango. Tatooine padmé windu darth dagobah aayla han darth dooku. Hutt kit skywalker leia jango dagobah zabrak. Dooku skywalker dagobah darth leia antilles watto. Dantooine skywalker skywalker organa alderaan. Ponda solo boba calamari jabba. Kenobi sidious luuke antilles mara dooku. Organa ventress organa mothma greedo.

        Luuke moff gonk solo sith darth moff. Vader mace sith obi-wan skywalker solo mon anakin mandalorians. Grievous darth calrissian hutt skywalker antilles padmé. Lobot mandalore calamari palpatine. Gamorrean padmé calrissian luuke mothma darth darth. Solo antilles fett kit naboo mon jango jango amidala. Calamari solo fett solo gonk fett tatooine binks. Darth leia hutt kit endor c-3po gamorrean darth. Han grievous skywalker wicket k-3po darth darth. Yavin coruscant darth jinn ewok. Mara biggs obi-wan chewbacca',
        4,
        'https://www.youtube.com/watch?v=Y6vXxjp6a3w',
        'http://localhost:8080/img/tut-thumbs/EvatoTuts.png',
        'css'
       ),
       (2,
        'Review title 08',
        'Mustafar thrawn coruscant coruscant utapau thrawn hoth mace sidious. Chewbacca watto luuke ackbar chewbacca jawa jango moff sidious. Yoda watto jabba palpatine r2-d2 grievous skywalker jango. Tatooine padmé windu darth dagobah aayla han darth dooku. Hutt kit skywalker leia jango dagobah zabrak. Dooku skywalker dagobah darth leia antilles watto. Dantooine skywalker skywalker organa alderaan. Ponda solo boba calamari jabba. Kenobi sidious luuke antilles mara dooku. Organa ventress organa mothma greedo.

        Luuke moff gonk solo sith darth moff. Vader mace sith obi-wan skywalker solo mon anakin mandalorians. Grievous darth calrissian hutt skywalker antilles padmé. Lobot mandalore calamari palpatine. Gamorrean padmé calrissian luuke mothma darth darth. Solo antilles fett kit naboo mon jango jango amidala. Calamari solo fett solo gonk fett tatooine binks. Darth leia hutt kit endor c-3po gamorrean darth. Han grievous skywalker wicket k-3po darth darth. Yavin coruscant darth jinn',
        5,
        'https://www.youtube.com/watch?v=Y6vXxjp6a3w',
        'http://localhost:8080/img/tut-thumbs/MIT.png',
        'html'
       ),
       (2,
        'Review title 04',
        'ana darth organa skywalker. Jinn yoda jabba moff. Skywalker jabba coruscant han. Calrissian greedo dantooine chewbacca skywalker ewok. Solo skywalker luke ewok antilles bespin calrissian. Qui-gonn jabba organa amidala moff yoda obi-wan palpatine. Skywalker moff antilles moff c-3po tatooine. Skywalker calrissian dantooine skywalker ewok organa hutt. Moff wedge hoth ahsoka. Skywalker mandalorians kit dooku moff luuke windu darth. Greedo watto tusken raider droid. Alderaan cade bespin antilles grievous wampa.

        Bespin maul k-3po mara skywalker dagobah dantooine. Mon endor jango darth solo. Moff coruscant amidala hutt solo solo jinn skywalker. Jawa maul dooku wedge. Padmé qui-gonn kit amidala han. Hoth c-3p0 skywalker organa moff fisto sidious. Organa dooku tatooine anakin grievous coruscant. Anakin mace antilles hutt maul jawa. Secura moff leia obi-wan obi-wan mace anakin kenobi. Calamari leia moff jinn calamari antilles utapau maul. Utapau darth kenobi hutt sith moff wedge. Kessel kit skywalker yoda wicket lando jabba.

',
        5,
        'https://www.youtube.com/watch?v=Y6vXxjp6a3w',
        'http://localhost:8080/img/tut-thumbs/CodeConquest.png',
        'bootstrap'
       ),
       (3,
        'Review title 09',
        'darth darth wicket c-3po. Sidious windu secura windu. Boba jade organa watto anakin windu anakin solo leia. Fisto dantooine grievous dagobah mustafar jinn moff. Jade jade gonk solo darth ackbar darth mandalorians grievous. Jabba binks jar thrawn mara skywalker bothan coruscant. Wookiee yoda organa mon darth. Jabba calamari jango cade. Mon dantooine mothma solo moff wedge windu hutt. Hutt skywalker qui-gonn hutt yoda lobot grievous aayla ewok. Watto organa ackbar mon skywalker mon organa. Hutt mon darth hutt aayla.

        Organa c-3p0 mace darth calamari dantooine solo. K-3po greedo dagobah kashyyyk. Jinn lando mace utapau skywalker binks anakin. Ben skywalker fett solo jango darth. Greedo ponda kessel jango antilles. Kenobi mon luuke yoda mandalorians leia wedge. Coruscant kashyyyk fett jinn alderaan mon. Sidious darth chewbacca hutt kessel wampa palpatine yoda. Calrissian skywalker darth mandalore ',
        3,
        'https://www.youtube.com/watch?v=Y6vXxjp6a3w',
        'http://localhost:8080/img/tut-thumbs/Skillcrush.png',
        'maven'
       ),
       (1,
        'Review title 10',
        'Ponda kit tatooine hutt solo solo ben organa bothan. Obi-wan droid mon darth mara solo kessel yavin. Ben ackbar organa jango dagobah windu mace. Darth palpatine darth leia biggs r2-d2 tatooine darth bespin. Vader hutt k-3po leia amidala. Luuke baba mothma solo jade. Vader moff kamino jango. Sidious ben cade lando mustafar yavin. Hutt solo anakin calamari mace windu hutt antilles. Hutt hutt jinn alderaan darth yavin hutt mandalore hutt. Wookiee hutt antilles anakin luke. Solo ahsoka jabba hutt palpatine yoda.

        Fett jade hutt sidious organa. Sebulba jawa amidala hutt darth. Dagobah boba skywalker wedge organa. Skywalker han antilles jinn cade yavin kit moff. Greedo moff lando mothma kashyyyk hutt yoda darth. Mon kit c-3p0 windu ahsoka solo biggs skywalker. Naboo solo darth twi''lek secura leia grievous kashyyyk. Ben dooku hutt naboo mace solo anakin darth darth. Yoda endor leia hutt sith. Calamari maul owen leia lars solo. Jango palpatine sebulba darth dooku wedg',
        5,
        'https://www.youtube.com/watch?v=Y6vXxjp6a3w',
        'http://localhost:8080/img/tut-thumbs/LinkedIn.png',
        'javascript')
;
-- 4
TRUNCATE tut_cats;
DROP TABLE IF EXISTS tut_cats;
CREATE TABLE tut_cats (
                          id       int(10) NOT NULL AUTO_INCREMENT,
                          tut_cats varchar(155) NOT NULL UNIQUE,
                          PRIMARY KEY (id));
INSERT INTO tut_cats(tut_cats)
VALUES ('HTML'),
       ('CSS'),
       ('JavaScript'),
       ('Java')
;
-- 5
TRUNCATE review_cats;
DROP TABLE IF EXISTS review_cats;
CREATE TABLE review_cats (
                             tutID      int(10) NOT NULL,
                             catsID     int(10) NOT NULL);
INSERT INTO review_cats (tutID, catsID)
VALUES (1, 1),
       (2, 2),
       (3, 3)
;