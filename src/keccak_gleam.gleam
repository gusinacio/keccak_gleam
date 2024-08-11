import gleam/io

pub fn main() {
  let result = hash("test")
  io.debug(result)
}

@external(erlang, "Elixir.ExKeccak", "hash_256")
@external(javascript, "./keccak_gleam_ffi.mjs", "hash")
pub fn hash(message: String) -> BitArray
