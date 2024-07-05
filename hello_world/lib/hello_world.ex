defmodule HelloWorld do
  def main(args) do
    case args do
      ["write"] -> write_hello_world()
      ["read"] -> read_hello_world()
      _ -> IO.puts("Please provide 'write' or 'read' as an argument")
    end
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
