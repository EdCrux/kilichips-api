FROM ruby:2.7.1

RUN apt-get update && apt-get install -y postgresql-client

# Add a script to be executed every time the container starts.


# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]