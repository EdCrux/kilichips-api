FROM ruby:2.7.1

RUN apt-get update && apt-get install -y postgresql-client nodejs build-essential

WORKDIR /usr/src/kilichips-api

COPY Gemfile* ./
RUN bundle install
COPY . . 

# Add a script to be executed every time the container starts.


# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]