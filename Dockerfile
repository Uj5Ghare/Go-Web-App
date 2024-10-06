FROM golang:1.22 as Base
WORKDIR /app
COPY go.mod .
RUN go mod download
COPY . .
RUN go build -o main .

FROM gcr.io/distroless/base 
COPY --from=Base /app/main .
COPY --from=Base /app/static ./static
EXPOSE 8080
CMD ["./main"]