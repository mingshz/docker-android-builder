FROM musichin/build-environment-android

RUN apt-get update
RUN apt-get install -y ssh rsync
RUN apt-get install ruby-full -y
RUN gem install bundler

# Clean up apt-get
RUN rm -rf /var/lib/apt/lists/*
RUN apt-get clean
