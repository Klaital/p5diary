FROM ruby:2.3.3

# Initialize OS system
RUN apt-get update -qq \
    && apt-get install -y build-essential libpq-dev nodejs postgresql-client

# Create required directory structures
RUN mkdir /p5diary
WORKDIR /p5diary

# Add library config files and install
COPY Gemfile /p5diary/Gemfile
# COPY Gemfile.lock /p5diary/Gemfile.lock
RUN bundle install

# Copy in the application code
COPY . /p5diary
