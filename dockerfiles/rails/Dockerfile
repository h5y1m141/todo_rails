FROM ruby:2.3.0

ENV APP_HOME /myapp
ENV DOCKERIZE_VERSION v0.6.0

RUN mkdir -p $APP_HOME
RUN mkdir -p tmp/sockets
WORKDIR $APP_HOME

RUN apt-get update -qq && apt-get install -y git build-essential libpq-dev nodejs
RUN gem install bundler
RUN bundle config build.nokogiri --use-system-libraries

# setup Rails
COPY Gemfile \
     Gemfile.lock \
     $APP_HOME/

ENV BUNDLE_GEMFILE=$APP_HOME/Gemfile \
    BUNDLE_JOBS=4
RUN bundle install

# Expose volumes to frontend
VOLUME /myapp/public
VOLUME /myapp/tmp

RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz
