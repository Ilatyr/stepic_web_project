sudo ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
sudo ln -s /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/hello.py
#sudo ln -s /home/box/web/hello.py   /etc/gunicorn.d/hello.py
#sudo /etc/init.d/gunicorn restart

#gunicorn -c /etc/gunicorn.d/hello.py -b 0.0.0.0:8080 hello:app
gunicorn -D -c /etc/gunicorn.d/hello.py hello
