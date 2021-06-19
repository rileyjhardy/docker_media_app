FROM ruby

WORKDIR /home/app/

ENV PORT 3000

EXPOSE $PORT

RUN gem install rails bundler
RUN gem install rails

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update && apt-get install -y yarn

RUN apt-get update -qq && apt-get install -y nodejs


# Change ownership incase there are issues with Linux owning the files
RUN sudo chown -R $USER:$USER .

ENTRYPOINT [ "/bin/bash" ]