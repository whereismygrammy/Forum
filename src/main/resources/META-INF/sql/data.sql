
insert into User (created, email, lastLogin, likes, nick, signature, password) values (NOW(), "tomasz@bomasz.pl", NOW(), 10, "whereismygrammy", "lecimy lecimy","$2a$10$Yn7lxo5SOoENa/sW34usCuyFmaaADn7QD.q6oG/puzHhGVgTJkOqe");
insert into User (created, email, lastLogin, likes, nick, signature, password) values (NOW(), "Do@minika.pl", NOW(), 10, "Dominika", "lecimy lecimy","$2a$10$Yn7lxo5SOoENa/sW34usCuyFmaaADn7QD.q6oG/puzHhGVgTJkOqe");
insert into Topic (created, name, content, updated, user_id) values (NOW(), "Pierwszy topic", "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by", NOW(), 1);
insert into User_Topic ( User_id, topicList_id) value (1,1);

insert into Comment ( content, created, updated, topic_id, user_id) value ("Dragée icing tiramisu icing sesame snaps. Cotton candy chocolate wafer I love jelly beans jelly beans chocolate chocolate cake lollipop. Caramels tart liquorice sugar plum marzipan icing.",  NOW(),  NOW(), 1,2);
insert into Comment ( content, created, updated, topic_id, user_id) value ("Brawo, brawo, lol nie znasz sie w ogóle na temacie!",  NOW(),  NOW(), 1,1);

-- insert into Topic_Comment ( Topic_id, commentList_id) value (1,1);
-- insert into Topic_Comment ( Topic_id, commentList_id) value (1,2);




