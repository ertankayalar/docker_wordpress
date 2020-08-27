# docker wordpress

Simple docker-compose workflow for WordPress development. 


## Usage

To get started, make sure you have [Docker](https://docs.docker.com/) installed on your system, and then clone this repository.

First add your entire WordPress project to the `src` folder, then open a terminal and from this cloned respository's root run `docker-compose up -d --build`. Open up your browser of choice to [http://localhost:8080](http://localhost:8080) and you should see your WordPress app running as intended. **Your WordPress app needs to be in the src directory first before bringing the containers up.** 

Composer and NPM containers commands

- `docker-compose run --rm composer update`
- `docker-compose run --rm npm run dev`

Containers created and their ports (if used) are as follows:

- **nginx** - `:8080`
- **mysql** - `:3306`
- **php** - `:9000`
- **phpmyadmin** - `:8081`
- **composer**

## Persistent MySQL Storage

By default, whenever you bring down the docker-compose network, your MySQL data will be removed after the containers are destroyed. If you would like to have persistent data that remains after bringing containers down and back up, do the following:

1. Create a `mysql` folder in the project root, alongside the `nginx` and `src` folders.
2. Under the mysql service in your `docker-compose.yml` file, add the following lines:

```
volumes:
  - ./mysql:/var/lib/mysql
```

## PhpMyAdmnin

Open up your browser of choice to [http://localhost:8081](http://localhost:8081) and you should see your Phpmyadmin running as intended. 



### GD Extension

(https://stackoverflow.com/questions/42087734/install-php7-gd-in-alpine)

## Credits

Inspired from [aschmelyun](https://github.com/aschmelyun) [docker-compose-laravel](https://github.com/aschmelyun/docker-compose-laravel) repository.