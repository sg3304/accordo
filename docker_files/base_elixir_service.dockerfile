# Use the official Elixir image as the base image
FROM elixir:1.14-alpine AS builder

# Set the environment variables
ENV MIX_ENV=prod

# Install necessary build tools
RUN apk add --no-cache build-base git

# Create the application directory
WORKDIR /app

# Install Hex and Rebar
RUN mix local.hex --force && \
    mix local.rebar --force

# Copy the mix.exs and mix.lock files to install dependencies
COPY mix.exs mix.lock ./
RUN mix deps.get --only $MIX_ENV

# Copy the application code
COPY lib ./lib
COPY config ./config

# Compile the application
RUN mix compile

# Build the release
RUN mix release

# Create a minimal runtime image
FROM alpine:3.16

# Install necessary runtime dependencies
RUN apk add --no-cache bash openssl

# Set the environment variables
ENV MIX_ENV=prod

# Copy the release from the builder image
COPY --from=builder /app/_build/$MIX_ENV/rel/message_svc /app

# Set the working directory
WORKDIR /app

# Expose the port (assuming the service runs on port 4000)
EXPOSE 4000

# Start the application
CMD ["./bin/message_svc", "start"]