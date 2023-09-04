DELETE FROM post WHERE author_id = (SELECT id FROM user WHERE username like &quot;tay&quot;);
DELETE FROM user WHERE username like &quot;tay&quot;;