FROM ruby:2.2.5

COPY Gemfile* /tmp/
WORKDIR /tmp
ENV BUNDLE_GEMFILE=/tmp/Gemfile BUNDLE_JOBS=2 BUNDLE_PATH=/bundle
RUN bundle install

ENV APP /app
RUN mkdir $APP
WORKDIR $APP
ADD . $APP
