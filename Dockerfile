FROM norionomura/swiftlint:latest

RUN swiftlint version

RUN xcode-select --install
RUN xcodebuild -license
RUN gem install bundler rake danger danger-swiftlint danger-xcov
RUN danger --version

CMD ["swiftlint", "lint"]
