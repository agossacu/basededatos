INSERT INTO user(username, password)
VALUES (&quot;dof&quot;, (SELECT password FROM user WHERE username = &quot;agos&quot;));
