cd app && git pull origin gh-pages

docker exec -it hexo-server hexo clean
docker exec -it hexo-server hexo g
docker exec -it hexo-server hexo d
