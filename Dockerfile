FROM norionomura/swiftlint:latest
FROM ruby:2.5.1

RUN swiftlint version

RUN apt-get update && apt-get install -y ruby
RUN gem install bundler rake danger danger-swiftlint danger-xcov
RUN danger --version

CMD ["swiftlint", "lint"]
