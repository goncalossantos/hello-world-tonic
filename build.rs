// This file is used to compile the proto file into Rust code. The generated code is then used in the server.rs file.
fn main() -> Result<(), Box<dyn std::error::Error>> {
    tonic_build::compile_protos("proto/helloworld.proto")?;
    Ok(())
}
