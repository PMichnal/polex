# polex

`polex` is a Bash script for creating and managing projects in different programming languages.

`polex` can be used by itself, but if you wish to use Conda for environment creation you can do so by running:
```
polex --conda my_language yes
```
You can also use Julia's `Pkg.generate()`:

```
polex -julia yes
```

If you would like to specify a text editor (code, nano, vi...), you can do it by running:

```
polex -e code
```

## Reccomendations

To get the most out of `polex`, we recommend installing the following:

- [Conda](https://docs.conda.io/en/latest/miniconda.html): A package and environment manager for Python and other languages.
- [Julia](https://julialang.org/downloads/): A high-level, high-performance programming language for technical computing.
- [Visual Studio Code](https://code.visualstudio.com/): A code editor with support for many languages and features.

<details><summary>!! Installing Recommendations</summary>
<p>

You can download Miniconda by running the following commands:

```
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh
~/miniconda3/bin/conda init bash
```
It also works if you use a different conda distribution!

You can download Julia by running:
```
wget https://julialang-s3.julialang.org/bin/linux/x64/1.9/julia-1.9.0-linux-x86_64.tar.gz
tar zxvf julia-1.9.0-linux-x86_64.tar.gz
```

After installing Julia you also need to add its binary directory to your system `PATH`:

```
export PATH="$PATH:/path/to/<Julia directory>/bin"
```

Alternatively, you can simplify the installation of Julia by running:

```
sudo apt-get install julia
```

You can Install VSCode by running:
```
sudo apt-get install code
```

</p>
</details>

## First run
After downloading the files you might need to give permmision to run the script, you can do so by running:
```
chmod +x *
```

```
export PATH="$PATH:/path/to/<polex-directory>" #This will add polex to the PATH
polex -e EDITOR  # "code" recommended but if you wish you can also type "nano", "vi" or other
```

## Usage

polex [options] [project_name] [language]


### Options

- `-l`, `--list`: List all existing projects
- `-h`, `--help`: Show the help message
- `-a`, `--add`: Add a new language
- `-d`, `--delete`: Delete a language and its associated files
- `--conda`: Use Conda for Python environment creation
- `--conda-packages`: Use Conda for managing Python packages
- `-e`, `--editor`: Change default text editor
- `-julia`: Use `Pkg.generate()` for Julia environment creation

### Arguments

- `project_name`: The name of the project to create or open
- `language`: The language of the project

## Examples

Create a new C++ project named `my_project`:

```
polex my_project c++
```

List all existing projects:
```
polex -l
```
Add a new language named `my_language` with a default file named `my_file.my_ext`:
```
polex -a my_language my_file.my_ext
```

Delete a language named `my_language` and its associated files:
```
polex -d my_language
```

## Files

The `polex` project consists of the following files and folders:

- `polex`: The main script for creating and managing projects
- `settings.sh`: A script that defines various settings and default values
- `functions.sh`: A script that defines various functions used by the `polex` script
- `polex-completion.sh`: A script that provides tab completion for the `polex` command
- `Templates`: A folder that contains template files for different languages
