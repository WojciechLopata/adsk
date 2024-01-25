FROM alpine:latest

RUN apk add openjdk17

RUN mkdir -p /opt/ecommerce

RUN wget https://github.com/jkanclerz/computer-programming-4/releases/download/v1.30/my-ecommerce-0.1.jar -O /opt/ecommerce/app.jar

RUN adduser ecommerce --disabled-password

USER ecommerce

EXPOSE 8080

CMD ["/usr/bin/java", "-Dserver.port=8080", "-jar", "/opt/ecommerce/app.jar"]
