--create new user
CREATE USER 'arezki'@'localhost' IDENTIFIED BY 'password';

--grant all privilege to the new user:
GRANT ALL PRIVILEGES ON * . * TO 'arezki'@'localhost';

--reload all PRIVILEGES 
FLUSH PRIVILEGES;


/*
How To Grant Different User Permissions

Here is a short list of other common possible permissions that users can enjoy.

    ALL PRIVILEGES- as we saw previously, this would allow a MySQL user full access to a designated database (or if no database is selected, global access across the system)
    CREATE- allows them to create new tables or databases
    DROP- allows them to them to delete tables or databases
    DELETE- allows them to delete rows from tables
    INSERT- allows them to insert rows into tables
    SELECT- allows them to use the SELECT command to read through databases
    UPDATE- allow them to update table rows
    GRANT OPTION- allows them to grant or remove other users’ privileges

*/
--To provide a specific user with a permission, you can use this framework:
GRANT type_of_permission ON database_name.table_name TO 'arezki'@'localhost';

--If you need to revoke a permission, the structure is almost identical to granting it:
REVOKE type_of_permission ON database_name.table_name FROM 'username'@'localhost';

--You can review a user’s current permissions by running the following:
SHOW GRANTS FOR 'username'@'localhost';

--Just as you can delete databases with DROP, you can use DROP to delete a user altogether:
DROP USER 'username'@'localhost';

--connect with nex user
--bash> mysql -u arezki -p