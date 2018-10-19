FROM openjdk:8u151-jre-alpine

ARG JAR_FILE
ADD target/${JAR_FILE} /usr/share/service/*.jar

ENTRYPOINT ["/usr/local/bin/shush", "exec", "--", "/usr/bin/java", "-jar", "/usr/share/service/*.jar"]