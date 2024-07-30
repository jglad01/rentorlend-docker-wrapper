# RentOrLend docker env.

Docker-compose environment for the CV Generator project (https://github.com/jglad01/rentorlend).

## Local setup

> [!NOTE]
> Before you start, make sure you have docker installed and running.

1. Clone the repository: ``` git clone https://github.com/jglad01/rentorlend-docker-wrapper.git ```  

2. Change directory to newly cloned project: ``` cd rentorlend-docker-wrapper ```  

3. Initialize and fetch the submodule: ``` git submodule update --init --recursive ```  

4. Make sure your wrapper and project are both on 'main' or 'master' branches!  

5. Pull docker images: ```docker-compose pull```  

6. (**Optional**) If you want your database to be seeded with dummy data, uncomment 30th line in *docker-compose.yml* ```#- ./rentorlend.sql:/docker-entrypoint-initdb.d/rentorlend.sql```  
If you do so, please **complete** step 14.

7. Build and start the containers: ```docker-compose up --build -d```  

8. Bash into the 'web' container: ```docker-compose run web bash```  

9. Install all the composer dependencies (**make sure you are in the container!**): ```composer install ```  

10. Set permissions ```chown -R www-data:www-data storage bootstrap/cache && chmod -R 775 storage bootstrap/cache```

11. (**Optional**) If you didn't do step 6. run the database migration ```php artisan migrate```

12. Link photos directory ```php artisan storage:link```

13. Exit the container ```exit```

14. (**Optional**) If you completed step 6. - unzip project files (*project-docs/photos.zip*) into *www/storage/app/public/*

Your project is up and running! Project will be available at http://localhost:8080 and the PHPMyAdmin will be available at http://localhost:8081  

If you completed steps 6 and 14, your database is seeded with dummy data. You will find login credentials in 'users' table in PHPMyAdmin. Password for all users is: 12345678.  
If you completed step 11, your database schema is migrated, but there's no data. Create new users, add new cars and have fun!

If you are done, simply stop the containers: ```docker-compose down```

You might also want to remove volumes - useful when changing the *docker-compose.yml*: ```docker-compose down -v```  

For the next time that you want to start the project, just run ```docker-compose up -d```