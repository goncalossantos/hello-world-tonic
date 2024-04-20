FROM rust:1.77-buster AS build
RUN apt-get update && apt-get install -y protobuf-compiler  && apt-get clean
# create a new empty shell project
RUN USER=root cargo new --bin hello-world-tonic
WORKDIR /hello-world-tonic

# copy over your manifests
COPY ./Cargo.lock ./Cargo.lock
COPY ./Cargo-deps.toml ./Cargo.toml
RUN cargo build --release
RUN rm src/*.rs

# this build step will cache your dependencies
COPY ./src ./src
COPY ./Cargo.toml ./Cargo.toml
COPY ./build.rs ./build.rs
COPY ./proto ./proto
# copy your source tree
# build for release
RUN cargo build --release

# our final base
FROM debian:buster-slim

# copy the build artifact from the build stage
COPY --from=build /hello-world-tonic/target/release/hello-world-tonic .

EXPOSE 50051
# set the startup command to run your binary
CMD ["./hello-world-tonic"]