FROM adoptopenjdk/openjdk11:latest
RUN mkdir /app
COPY sentinel-dashboard.jar /app
ENV CONSUL-HOST 127.0.0.1
ENV PORT 8080
EXPOSE ${PORT}
CMD ["java", "-jar","-Dserver.port=${PORT}", "/app/sentinel-dashboard.jar"]
