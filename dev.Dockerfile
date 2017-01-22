FROM ruby:2.3.1

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN gem install bundler --no-ri --no-rdoc

RUN apt-get update && \
    apt-get upgrade -y 

# Copy just the Gemfile & Gemfile.lock, to be able to install the required gems:
ADD Gemfile* /usr/src/app/

RUN bundle
