## Elixir Project: Simple write a text file with the content "HELLO WORLD!"

&nbsp;

**LANGKAH:** <br />
Buat project baru.
<pre>
❯ mix new hello_world
</pre>
- <details>
    <summary>Response:</summary>

    ```bash
    * creating README.md
    * creating .formatter.exs
    * creating .gitignore
    * creating mix.exs
    * creating lib
    * creating lib/hello_world.ex
    * creating test
    * creating test/test_helper.exs
    * creating test/hello_world_test.exs

    Your Mix project was created successfully.
    You can use "mix" to compile it, test it, and more:

        cd hello_world
        mix test

    Run "mix help" for more commands.
    ```

  </details>

&nbsp;

Struture folder and files
<pre>
❯ tree -L 4 -a ./hello_world

    ./hello_world
    ├── .formatter.exs
    ├── .gitignore
    ├── README.md
    ├── lib
    │   └── hello_world.ex
    ├── mix.exs
    └── test
        ├── hello_world_test.exs
        └── test_helper.exs

    2 directories, 7 files
</pre>

&nbsp;

Masuk ke direktori project
<pre>
❯ cd hello_world
</pre>

&nbsp;

&nbsp;

**TAMBAHKAN FUNGSI UNTUK MENULIS FILE** <br />
Menambahkan fungsi tersebut pada file :
<pre>
❯ vim lib/hello_world.ex
    . . .
</pre>
```bash
    defmodule HelloWorld do
      def write_hello_world do
        File.write!("hello.txt", "HELLO WORLD!")
      end
    end
```

Buka file `mix.exs` dan tambahkan kode berikut di dalam blok `"def project do"` untuk memastikan `escript` diaktifkan:
<pre>
❯ vim mix.exs
    . . .
</pre>
```bash
    defmodule HelloWorld.MixProject do
      use Mix.Project
    
      def project do
        [
          app: :hello_world,
          version: "0.1.0",
          elixir: "~> 1.15",
          start_permanent: Mix.env() == :prod,
          deps: deps()
        ]
      end
    
      # Run "mix help compile.app" to learn about applications.
      def application do
        [
          extra_applications: [:logger]
        ]
      end
    
      # Run "mix help deps" to learn about dependencies.
      defp deps do
        [
          # {:dep_from_hexpm, "~> 0.3.0"},
          # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
        ]
      end
    end
```

