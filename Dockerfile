FROM ruby:latest 
MAINTAINER Name <info@example.com>

RUN mkdir -p /home/jekyll 
RUN groupadd -rg 1000 jekyll 
RUN useradd -rg jekyll -u 1000 -d /home/jekyll jekyll 
RUN chown jekyll:jekyll /home/jekyll 
RUN gem install jekyll

VOLUME /home/jekyll

COPY . /home/jekyll/

WORKDIR /home/jekyll ENTRYPOINT ["jekyll", "serve"] EXPOSE 4000


