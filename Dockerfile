FROM musichin/build-environment-android

RUN apt-get update
RUN apt-get install -y ssh rsync

# Clean up apt-get
RUN rm -rf /var/lib/apt/lists/*
RUN apt-get clean
