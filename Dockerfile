FROM maven:3-openjdk-17 AS builder

WORKDIR /workspace

COPY bin .

RUN mvn clean compile

FROM alpine:edge

RUN adduser -D developer

ENV DISPLAY :0

RUN apk update \
    && apk add openjdk11

RUN apk --no-cache add msttcorefonts-installer fontconfig && \
    update-ms-fonts && \
    fc-cache -f

USER developer

WORKDIR /home/developer

COPY --from=builder /workspace/target/classes /home/developer

CMD ["java", "example.Main"]
