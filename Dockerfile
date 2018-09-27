FROM frolvlad/alpine-glibc

COPY main /app/
#COPY ips /app/
#COPY dns /app/
COPY conf/app.ini /app/conf/

EXPOSE 80
WORKDIR "/app"
CMD ["./main", "serve"]
