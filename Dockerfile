FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.3.4

RUN gem install defunkt-github --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["github"]
CMD ["--help"]
