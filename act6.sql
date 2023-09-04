UPDATE post
SET body = &quot;&quot; WHERE author_id = (SELECT id FROM user WHERE username like &quot;agos&quot;);