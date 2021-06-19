# docker_media_app

## To start application:

1. Build and run the Docker container.

        docker-compose up
      
2. Run the bash terminal for Rails development.

        docker-compose run --rm --service-ports ruby_dev
        
3. Navigate to media_app directory.

        cd media_app
        
4. Update and install gems.

        bundle update && bundle install
        
5. Begin the Rails server.

        rails s -p $PORT -b 0.0.0.0
        
## Run test suite

When running the rspec test suite, you must be in the media_app directory. To run the rspec tests, use the rspec command.

        rspec
        
You should have 4 passing tests.
