FROM ruby:3.0.3
RUN apt-get update -qq \
&& apt-get install -y nodejs

ADD . /peoplemover
WORKDIR /peoplemover
RUN bundle install

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
