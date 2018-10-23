
insert into User (created, email, lastLogin, likes, nick, signature, password) values (NOW(), "tomasz@bomasz.pl", NOW(), 10, "whereismygrammy", "lecimy lecimy","$2a$10$Yn7lxo5SOoENa/sW34usCuyFmaaADn7QD.q6oG/puzHhGVgTJkOqe");
insert into Topic (created, name, content, updated, user_id) values (NOW(), "Pierwszy topic", "TO JEST ZAWARTOSC PIERWSZEGO TEMATU WOWOWOWOWOOWOWOWOW", NOW(), 1);
insert into User_Topic ( User_id, topicList_id) value (1,1);

insert into Comment ( content, created, updated, topic_id, user_id) value ("TRESC KOMENTARZA JEDEN",  NOW(),  NOW(), 1,1);
insert into Comment ( content, created, updated, topic_id, user_id) value ("TRESC KOMENTARZA 2",  NOW(),  NOW(), 1,1);


insert into Topic_Comment ( Topic_id, commentList_id) value (1,1);
insert into Topic_Comment ( Topic_id, commentList_id) value (1,2);




