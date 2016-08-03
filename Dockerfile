FROM ruby:alpine
COPY Gemfile .
RUN bundle install
COPY . .
