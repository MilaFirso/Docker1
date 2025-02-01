FROM ubuntu:latest
RUN apt update
RUN apt install -y g++ nano
WORKDIR  /app
COPY main.cpp .
RUN g++ main.cpp -o main
CMD [ "./main"]
