
insert into User (created, email, lastLogin, likes, nick, signature, password) values (NOW(), "tomasz@bomasz.pl", NOW(), 10, "whereismygrammy", "lecimy lecimy","$2a$10$Yn7lxo5SOoENa/sW34usCuyFmaaADn7QD.q6oG/puzHhGVgTJkOqe");
insert into User (created, email, lastLogin, likes, nick, signature, password) values (NOW(), "Do@minika.pl", NOW(), 10, "Dominika", "lecimy lecimy","$2a$10$Yn7lxo5SOoENa/sW34usCuyFmaaADn7QD.q6oG/puzHhGVgTJkOqe");
insert into User (created, email, lastLogin, likes, nick, signature, password) values (NOW(), "Gandalf@Do.pl", NOW(), 10, "Gandalf", "I belive in magic","$2a$10$Yn7lxo5SOoENa/sW34usCuyFmaaADn7QD.q6oG/puzHhGVgTJkOqe");
insert into User (created, email, lastLogin, likes, nick, signature, password) values (NOW(), "Fro@Do.pl", NOW(), 10, "Frodo", "Przygoda!!","$2a$10$Yn7lxo5SOoENa/sW34usCuyFmaaADn7QD.q6oG/puzHhGVgTJkOqe");
insert into User (created, email, lastLogin, likes, nick, signature, password) values (NOW(), "Legolas@Do.pl", NOW(), 10, "Legolas", "I'm taking the hobbits to isengard","$2a$10$Yn7lxo5SOoENa/sW34usCuyFmaaADn7QD.q6oG/puzHhGVgTJkOqe");
insert into User (created, email, lastLogin, likes, nick, signature, password) values (NOW(), "Gimli@Do.pl", NOW(), 10, "Gimli", "Lej te  trunki, GIMLIOWI CHCE SIE PIC!","$2a$10$Yn7lxo5SOoENa/sW34usCuyFmaaADn7QD.q6oG/puzHhGVgTJkOqe");
insert into User (created, email, lastLogin, likes, nick, signature, password) values (NOW(), "sauron@Do.pl", NOW(), 10, "Sauron", "Kabum  ?","$2a$10$Yn7lxo5SOoENa/sW34usCuyFmaaADn7QD.q6oG/puzHhGVgTJkOqe");


insert into Topic (created, name, content, updated, user_id) values (NOW(), "Pierwszy topic", "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by", NOW(), 1);
insert into Comment ( content, created, updated, topic_id, user_id) value ("Dragée icing tiramisu icing sesame snaps. Cotton candy chocolate wafer I love jelly beans jelly beans chocolate chocolate cake lollipop. Caramels tart liquorice sugar plum marzipan icing.",  NOW(),  NOW(), 1,2);
insert into Comment ( content, created, updated, topic_id, user_id) value ("Brawo, brawo, lol nie znasz sie w ogóle na temacie!",  NOW(),  NOW(), 1,1);

insert into Topic (created, name, content, updated, user_id) values (NOW(), "Temat pewnego pierscienia do ogarniecia", "Siema znalazlem takie ustrojstwo przez ktore lord ciemnosci nas wszystkich z..., propunuje je zniszczyc!!", NOW(), 3);
insert into Comment ( content, created, updated, topic_id, user_id) value ("PIERWSZY!",  NOW(),  NOW(), 2,5);
insert into Comment ( content, created, updated, topic_id, user_id) value ("JA PIERWSZY!!!!",  NOW(),  NOW(), 2,3);
insert into Comment ( content, created, updated, topic_id, user_id) value ("Pod wlasnym postem nie jestem pierwszy -_-",  NOW(),  NOW(), 2,3);
insert into Comment ( content, created, updated, topic_id, user_id) value ("Za domem mam taka dziure - nikt nie wie co jest na dnie ale jest zajebiscie gleboka, mozemy go tam wlozyc i po sprawie.",  NOW(),  NOW(), 2,4);
insert into Comment ( content, created, updated, topic_id, user_id) value ("looool, co ty mowisz xD",  NOW(),  NOW(), 2,6);
insert into Comment ( content, created, updated, topic_id, user_id) value ("Morda, trzeba cos wymyslic",  NOW(),  NOW(), 2,3);
insert into Comment ( content, created, updated, topic_id, user_id) value ("HiHo x)",  NOW(),  NOW(), 2,7);

