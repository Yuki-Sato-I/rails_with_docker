FROM ruby:2.5.1
LABEL maintainer "Iwate_univ <ifive.o2h5i9@zapiermail.com>"
LABEL version="1.0"

#インストールしなきゃいけないやつをここに書くこと（まだ未完）
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "nodejs", "build-essential", "postgresql-client"]
RUN ["gem", "install", "bundler", "-v", "1.17.3"]

RUN groupadd -r puma && useradd -r -g puma puma


ENV APP_ROOT /app

RUN mkdir ${APP_ROOT}

WORKDIR ${APP_ROOT}

ADD ./app/Gemfile Gemfile
ADD ./app/Gemfile.lock Gemfile.lock

RUN ["bundle", "install"]

ADD ./app ${APP_ROOT}

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]