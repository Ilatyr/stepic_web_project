sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/hello.py
sudo ln -sf /home/box/web/etc/guni-django.conf   /etc/gunicorn.d/guni-django.conf
#sudo ln -s /home/box/web/hello.py   /etc/gunicorn.d/hello.py
#sudo /etc/init.d/gunicorn restart

#gunicorn -c /etc/gunicorn.d/hello.py -b 0.0.0.0:8080 hello:app
gunicorn -c etc/gunicorn_conf.py hello:application &

cd ask
gunicorn -c ../etc/gunicorn_django_conf.py ask.wsgi --pythonpath '/home/box/web/ask' &
