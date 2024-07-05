defmodule HelloWorld do
  def main(_args) do
    read_hello_world()
  end

  def write_hello_world do
    File.write!("hello.txt", "HELLO WORLD!")
  end

  def read_hello_world do
    case File.read("hello.txt") do
      {:ok, content} ->
        IO.puts(content)
      {:error, reason} ->
        IO.puts("Error reading file: #{reason}")
    end
  end
end
