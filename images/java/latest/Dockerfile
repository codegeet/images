FROM openjdk:21

MAINTAINER Vladimir Prudnikov "codegeet@gmail.com"

# Add codegeet user
RUN groupadd codegeet
RUN useradd -m -d /home/codegeet -g codegeet -s /bin/bash codegeet

# Install coderunner
ADD https://github.com/codegeet/coderunner/releases/download/v0.0.1/coderunner.jar /home/codegeet
RUN chown codegeet:codegeet /home/codegeet/coderunner.jar
RUN chmod +x /home/codegeet/coderunner.jar

USER codegeet
WORKDIR /home/codegeet/

ENTRYPOINT ["java", "-jar", "coderunner.jar"]
