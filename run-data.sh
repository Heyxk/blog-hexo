mkdir app

docker run -e http_proxy="http://172.17.0.1:8080" -e https_proxy="http://172.17.0.1:8080" --name hexo-data -v $PWD/app:/app cutekk/blog-hexo sh -c "hexo init . && npm install && npm install hexo-generator-sitemap --save && npm install hexo-generator-feed --save && npm install hexo-deployer-git --save"

git clone -b gh-pages git@github.com:Heyxk/Heyxk.github.io.git data

yes|cp -r data/. app/

rm -rf data

git clone https://github.com/theme-next/hexo-theme-next.git app/themes/next
