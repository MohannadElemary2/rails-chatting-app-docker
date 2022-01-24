FROM ruby:2.7.2
RUN apt-get update -qq && apt-get install -y nodejs

WORKDIR /app10

COPY ./backend/Gemfile Gemfile
COPY ./backend/Gemfile.lock Gemfile.lock
RUN gem install nokogiri --platform=ruby
RUN bundle install
RUN bundle config set force_ruby_platform true

COPY ./backend/ /app10

# Add a script to be executed every time the container starts.
COPY ./backend/entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]