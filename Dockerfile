FROM ruby:2.2.3

COPY Gemfile .

RUN bundle install

COPY . .
