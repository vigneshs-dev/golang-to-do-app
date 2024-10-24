# use official Golang image
FROM golang:alpine3.20

# set working directory
WORKDIR /app
RUN mkdir dist

# Copy the source code
COPY server/ .
COPY client/dist ./dist
# Download and install the dependencies
RUN go mod tidy

# Build the Go app
RUN go build -o todoApp .

#EXPOSE the port
EXPOSE 5000

# Run the executable
CMD ["./todoApp"]