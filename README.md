Terima kasih telah menggunjungi file ini 

cara download 

'''

git clone https://github.com/ajitirto/crud_laravel.git

cd crud_laravel

composer install

cp .env.example .env

php artisan key:generate

'''

baut nama  database 

sesuaikan dengan .env

masukan database dengan perintah di bawah

'''

php artisan migrate:fresh --seed

'''