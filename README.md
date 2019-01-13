# Maluku App

## Bagian dari UAS GIS

### HOW TO INSTALL

### WINDOWS

1. Clone or Download this project, and move to your `htdocs` or `PATH/TO/YOUR/WWW/FOLDER`
2. Create database, example : `maluku`
3. Import `database.sql` to your database
4. Copy `env.example` and rename to `.env`, then fill with your database configuration
5. If you doesn't have GMAPS_API_KEY, go to [Console Google](https://console.cloud.google.com) and create a new one
6. Do `composer install` to install depedencies, if you don't have it just go to [composer](https://getcomposer.org)
7. Create `storage` folder, then create `cache` folder inside it.
8. Now you're set

### LINUX

1. Clone or Download this project, and move to your `/var/www/html` folder or `PATH/TO/YOUR/WWW/FOLDER`
2. Create database, example : `maluku`
3. Import `database.sql` to your database
4. Copy `env.example` and rename to `.env`, then fill with your database configuration
5. If you doesn't have GMAPS_API_KEY, go to [Console Google](https://console.cloud.google.com) and create a new one
6. Do `composer install` to install depedencies, if you don't have it just go to [composer](https://getcomposer.org)
7. Create `storage` folder, then create `cache` folder inside it.
8. Now you're set