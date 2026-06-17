module errors

// implement IError
pub struct SomeError {}

fn (e SomeError) msg() string {
  return 'error'
}

fn (e SomeError) code() int {
  return 0
}