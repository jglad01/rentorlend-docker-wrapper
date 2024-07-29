# RentOrLend docker env.

Docker-compose environment for the CV Generator project (https://github.com/jglad01/rentorlend).

## Local setup

> [!NOTE]
> Before you start, make sure you have docker installed and running.

Clone the repository: ``` git clone https://github.com/jglad01/rentorlend-docker-wrapper.git ```  

Change directory to newly cloned project: ``` cd rentorlend-docker-wrapper ```  

Initialize and fetch the submodule: ``` git submodule update --init --recursive ```  

Make sure your wrapper and project are both on 'main' or 'master' branches!  

Pull docker images: ```docker-compose pull```  

Build and start the containers: ```docker-compose up --build -d```  

Bash into the 'web' container: ```docker-compose run web bash```  

Install all the composer dependencies (**make sure you are in the container!**): ```composer install ```  

Set permissions ```chown -R www-data:www-data storage bootstrap/cache && chmod -R 775 storage bootstrap/cache```

Exit the container ```exit```

Your project is up and running! Project will be available at http://localhost:8080 and the PHPMyAdmin will be available at http://localhost:8081  

If you are done, simply stop the containers: ```docker-compose down```

You might also want to remove volumes - useful when changing the *docker-compose.yml*: ```docker-compose down -v```  

For the next time that you want to start the project, just run ```docker-compose up -d```