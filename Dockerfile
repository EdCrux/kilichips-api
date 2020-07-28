FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /kilichips-api
WORKDIR /kilichips-api
COPY Gemfile /kilichips-api/Gemfile
COPY Gemfile.lock /kilichips-api/Gemfile.lock
RUN bundle install
COPY . /kilichips-api

# Add a script to be executed every time the container starts.


# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]