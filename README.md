## Elixir Project: Simple write a text file with the content "HELLO WORLD!"

&nbsp;

LANGKAH: <br />
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

