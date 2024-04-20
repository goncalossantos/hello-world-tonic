# Hello World GRPC Server Service in Rust

This project demonstrates a simple Hello World GRPC server service implemented in Rust using the Tonic framework. The service has been containerized using Docker and deployed via Fly.io.

## Table of Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Deployment](#deployment)
- [Contributing](#contributing)
- [License](#license)

## Introduction

The Hello World GRPC server service is a basic example of how to create a GRPC service using Rust and the Tonic framework. It showcases the fundamental concepts of defining a service, handling requests, and generating responses. The service is containerized using Docker for easy deployment and portability.

## Prerequisites

To run this project locally, you need to have the following installed:

- Rust (latest stable version)
- Docker
- Fly.io CLI (for deployment)

## Getting Started

1. Clone the repository:

   ```
   git clone https://github.com/your-username/hello-world-grpc-rust.git
   ```

2. Navigate to the project directory:

   ```
   cd hello-world-grpc-rust
   ```

3. Build the project:

   ```
   cargo build
   ```

4. Run the server:

   ```
   cargo run
   ```

   The server will start running on `localhost:50051`.

## Usage

To interact with the Hello World GRPC server service, you can use a GRPC client. The service defines the following RPC method:

- `SayHello`: Takes a `HelloRequest` message containing a `name` field and returns a `HelloResponse` message with a greeting.

You can use a GRPC client library in your preferred programming language to make requests to the server.

## Deployment

The project includes a Dockerfile for containerizing the GRPC server service. To deploy the service using Fly.io, follow these steps:

1. Install the Fly.io CLI by following the instructions in the [Fly.io documentation](https://fly.io/docs/getting-started/installing-flyctl/).

2. Build the Docker image:

   ```
   docker build -t hello-world-grpc-rust .
   ```

3. Deploy the service to Fly.io:

   ```
   flyctl deploy
   ```

   Follow the prompts to configure your deployment settings.

4. Once the deployment is successful, you can access the service using the provided Fly.io URL.

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).