/*crear tabla
*/
CREATE TABLE user (
id INTEGER PRIMARY KEY AUTOINCREMENT,
username TEXT UNIQUE NOT NULL,
password TEXT NOT NULL
);
CREATE TABLE post (
id INTEGER PRIMARY KEY AUTOINCREMENT,
author_id INTEGER NOT NULL,
created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
title TEXT NOT NULL,
body TEXT NOT NULL,
FOREIGN KEY (author_id) REFERENCES user (id)
);
/*
crear usuarios
*/
INSERT into user(username, password)
VALUES("taylor swi", "3"),
	("tay", "swift"),
	("Mecro", "agosteamo123"),
	("agos", "botella");
/*
borrar post
*/	
DELETE FROM post
WHERE author_id = 2;
/*
crear post
*/
INSERT INTO post(author_id, title, body)
VALUES(2, "1989 Taylor Version", "Shake it off"),
(2, "Speak now taylor Version", "Speak now"),
(2, "Red Taylor Version", "nothing new");
INSERT INTO post(author_id, title,body)
VALUES(3, "1989 Taylor Version", "Shake it off"),
(3, "Speak now taylor Version", "Speak now"),
(3, "Red Taylor Version", "nothing new");
INSERT INTO post(author_id, title,body)
VALUES(4, "1989 Taylor Version", "Shake it off"),
(4, "Speak now taylor Version", "Speak now"),
(4, "Red Taylor Version", "nothing new");
INSERT INTO post(author_id, title,body)
VALUES(5, "1989 Taylor Version", "Shake it off"),
(5, "Speak now taylor Version", "Speak now"),
(5, "Red Taylor Version", "nothing new");
/*
actualizar post
*/
/*UPDATE post 
SET title = "evermore", body = "champagne problems"
WHERE author_id = 2 AND body like "shake it off";*/
UPDATE post
SET title = "folklore", body = "august"
WHERE author_id = 3 AND body like "nothing new";
UPDATE post
SET title = "Midnights", body = "high infidelity"
WHERE author_id = 4 AND body like "august";

/*act 1*/
INSERT INTO user(username, password)
VALUES ("sofi", (SELECT password FROM user WHERE username = "agos"));

/*act 2*/
UPDATE user
SET WHERE username like "agos"