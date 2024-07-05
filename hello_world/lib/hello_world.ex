defmodule HelloWorld do
  def main(_args) do
    write_hello_world()
  end

  def write_hello_world do
    File.write!("hello.txt", "HELLO WORLD!")
  end
end
