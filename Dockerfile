FROM mhart/alpine-node

RUN apk --update --no-cache add git \
 && npm install -g hexo-cli

#alpine添加用户adduser命令常用的参数说明如下
#-h 家目录(指定家目录)
#-s shell(指定登录shell)
#-G 用户组(把用户添加到存在的用户组)
#-S(创建一个系统用户)
#-D(不要分配密码)
#-H(不要创建家目录)
#-u uid(指定用户的uid)
#本项目需要家目录

RUN adduser -u 1000 -D kk

USER kk
#指定USER,下面的用户使用kk执行

WORKDIR /app

VOLUME ["/app"]

EXPOSE 4000

CMD ["hexo", "server"]

