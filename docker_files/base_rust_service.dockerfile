# Use the official Rust image as the base image
FROM rust:1.68-alpine AS builder

# Create the application directory
WORKDIR /app

# Copy the Cargo.toml and Cargo.lock files to install dependencies
COPY Cargo.toml Cargo.lock ./
RUN mkdir src && echo "fn main() {}" > src/main.rs
RUN cargo build --release

# Copy the application code
COPY src ./src

# Build the application
RUN cargo build --release

# Create a minimal runtime image
FROM alpine:3.16
x.
# Install necessary runtime dependencies
RUN apk add --no-cache libgcc

# Copy the binary from the builder image
COPY --from=builder /app/target/release/notif_svc /app/notif_svc

# Set the working directory
WORKDIR /app

# Expose the port (assuming the service runs on port 5000)
EXPOSE 5000

# Start the application
CMD ["./notif_svc"]