FROM openjdk:21

# Add codegeet user
RUN groupadd codegeet
RUN useradd -m -d /home/codegeet -g codegeet -s /bin/bash codegeet

# Install code-runner
COPY coderunner.jar /home/codegeet/

USER codegeet
WORKDIR /home/codegeet/

ENTRYPOINT ["java", "-jar", "coderunner.jar"]
