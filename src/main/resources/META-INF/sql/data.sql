
insert into User (created, email, lastLogin, likes, nick, signature, password, imgUrl) values (NOW(), "tomasz@bomasz.pl", NOW(), 10, "whereismygrammy", "lecimy lecimy","$2a$10$Yn7lxo5SOoENa/sW34usCuyFmaaADn7QD.q6oG/puzHhGVgTJkOqe" ,"https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/25446324_1723656774311126_6549224497700096128_n.jpg?_nc_cat=108&_nc_ht=scontent-waw1-1.xx&oh=6dbc0d71f3d315048eecfaa5ad0eb8be&oe=5C577CA2");
insert into User (created, email, lastLogin, likes, nick, signature, password, imgUrl) values (NOW(), "Do@minika.pl", null, 10, "Dominika", "lecimy lecimy","$2a$10$Yn7lxo5SOoENa/sW34usCuyFmaaADn7QD.q6oG/puzHhGVgTJkOqe","https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/23755297_980297238776252_2295510346774176632_n.jpg?_nc_cat=107&_nc_ht=scontent-waw1-1.xx&oh=2ccba88ee940b143d3699dfb71c81bc1&oe=5C8070BD");
insert into User (created, email, lastLogin, likes, nick, signature, password, imgUrl) values (NOW(), "Gandalf@Do.pl", null, 10, "Gandalf", "I belive in magic","$2a$10$Yn7lxo5SOoENa/sW34usCuyFmaaADn7QD.q6oG/puzHhGVgTJkOqe", "https://avatarfiles.alphacoders.com/891/89146.gif");
insert into User (created, email, lastLogin, likes, nick, signature, password, imgUrl) values (NOW(), "Fro@Do.pl", null, 10, "Frodo", "Przygoda!!","$2a$10$Yn7lxo5SOoENa/sW34usCuyFmaaADn7QD.q6oG/puzHhGVgTJkOqe", "https://media.giphy.com/media/1IFCawwlqD8JO/giphy.gif");
insert into User (created, email, lastLogin, likes, nick, signature, password, imgUrl) values (NOW(), "Legolas@Do.pl", null, 10, "Legolas", "I'm taking the hobbits to isengard","$2a$10$Yn7lxo5SOoENa/sW34usCuyFmaaADn7QD.q6oG/puzHhGVgTJkOqe", "https://media.giphy.com/media/fy5eDnNJjddZu/giphy.gif");
insert into User (created, email, lastLogin, likes, nick, signature, password, imgUrl) values (NOW(), "Gimli@Do.pl", null, 10, "Gimli", "Lej te  trunki, GIMLIOWI CHCE SIE PIC!","$2a$10$Yn7lxo5SOoENa/sW34usCuyFmaaADn7QD.q6oG/puzHhGVgTJkOqe", "https://media.giphy.com/media/xb38NSYp5Nyo0/giphy.gif");
insert into User (created, email, lastLogin, likes, nick, signature, password, imgUrl) values (NOW(), "sauron@Do.pl", null, 10, "Sauron", "Kabum  ?","$2a$10$Yn7lxo5SOoENa/sW34usCuyFmaaADn7QD.q6oG/puzHhGVgTJkOqe", "https://media.giphy.com/media/Z5jAXUzkye7VC/giphy.gif");


insert into Topic (created, name, content, updated, user_id) values (NOW(), "Ryby ?", "Moj stary to fanatyk wedkarstwa. Pol mieszkania zajebane wedkami najgorsze. Srednio raz w miesiacu ktos wdepnie w lezacy na ziemi haczyk czy kotwice i trzeba wyciagac w szpitalu bo maja zadziory na koncu.", NOW(), 1);
insert into Comment ( content, created, updated, topic_id, user_id) value ("Dragée icing tiramisu icing sesame snaps. Cotton candy chocolate wafer I love jelly beans jelly beans chocolate chocolate cake lollipop. Caramels tart liquorice sugar plum marzipan icing.",  NOW(),  NOW(), 1,2);
insert into Comment ( content, created, updated, topic_id, user_id) value ("Brawo, brawo, lol nie znasz sie w ogóle na temacie!",  NOW(),  NOW(), 1,1);

insert into Topic (created, name, content, updated, user_id) values (NOW(), "Temat pewnego pierscienia do ogarniecia", "Siema znalazlem takie ustrojstwo przez ktore lord ciemnosci nas wszystkich z..., propunuje je zniszczyc!!", NOW(), 3);
insert into Comment ( content, created, updated, topic_id, user_id) value ("PIERWSZY!",  NOW(),  NOW(), 2,5);
insert into Comment ( content, created, updated, topic_id, user_id) value ("JA PIERWSZY!!!!",  NOW(),  NOW(), 2,3);
insert into Comment ( content, created, updated, topic_id, user_id) value ("Pod wlasnym postem nie jestem pierwszy -_-",  NOW(),  NOW(), 2,3);
insert into Comment ( content, created, updated, topic_id, user_id) value ("Za domem mam taka dziure - nikt nie wie co jest na dnie ale jest zajebiscie gleboka, mozemy go tam wlozyc i po sprawie.",  NOW(),  NOW(), 2,4);
insert into Comment ( content, created, updated, topic_id, user_id) value ("looool, co ty mowisz xD",  NOW(),  NOW(), 2,6);
insert into Comment ( content, created, updated, topic_id, user_id) value ("Morda, trzeba cos wymyslic",  NOW(),  NOW(), 2,3);
insert into Comment ( content, created, updated, topic_id, user_id) value ("HiHo ]:->",  NOW(),  NOW(), 2,7);