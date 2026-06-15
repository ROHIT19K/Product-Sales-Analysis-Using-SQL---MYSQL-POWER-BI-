USE banking_case;

SHOW TABLES;

SELECT * FROM customer;



USE startersql;

SELECT * FROM users;

SHOW INDEXES FROM users;
 
 SET autocommit=0;
 
 SELECT * FROM users;
COMMIT;

 DELETE FROM users
 WHERE id = 6;
 
 rollback;
 
 SET autocommit = 1;
 
 
 
 
 
 
 
 
 
 SELECT * FROM user_log;
 
 
SELECT * FROM users;



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 