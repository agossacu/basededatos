CREATE TABLE "user"  (
 id SERIAL PRIMARY KEY,
 username TEXT UNIQUE NOT NULL,
 password TEXT NOT NULL
);
CREATE TABLE "post" (
 id SERIAL PRIMARY KEY,
 author_id INTEGER NOT NULL,
 created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 title TEXT NOT NULL,
 body TEXT NOT NULL,
 FOREIGN KEY (author_id) REFERENCES "user" (id)
);

INSERT INTO "user" (username,password)
VALUES('Luz','12345'),('Nico','912'),('Lucas','45678');

SELECT * FROM "user";


UPDATE "user"
SET username = 'taylor'
WHERE username ilike 'luz';