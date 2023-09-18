DELETE FROM language WHERE name =
(SELECT name FROM language WHERE name = "Italian");