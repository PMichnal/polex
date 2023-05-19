# polex

`polex` is a Bash script for creating and managing projects in different programming languages.

## Recomendations

`polex`, can be used completely by itself, however if you wish to use Conda for Python environment creation or Julia's `Pkg.generate()` you can also do it by calling ...
If you would like to specify a text editor you can do it by running...

If you would like to get the most out of it, we suggest you install these:

- [Conda](https://docs.conda.io/en/latest/miniconda.html): A package and environment manager for Python and other languages.
- [Julia](https://julialang.org/downloads/): A high-level, high-performance programming language for technical computing.
- [Visual Studio Code](https://code.visualstudio.com/): A code editor with support for many languages and features.

## Installing Recomendations

You can download miniconda by running:
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

You can also make it simpler by installing Julia with
```
sudo apt-get install julia
```

You can Install VSCode by running:
```
sudo apt-get install code
```

## Usage


polex [options] [project_name] [language]


### Options

- `-l`, `--list`: List all existing projects
- `-h`, `--help`: Show the help message
- `-a`, `--add`: Add a new language
- `-d`, `--delete`: Delete a language and its associated files

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

The `polex` project consists of four files and one folder:

- `polex`: The main script for creating and managing projects
- `settings.sh`: A script that defines various settings and default values
- `functions.sh`: A script that defines various functions used by the `polex` script
- `polex-completion.sh`: A script that provides tab completion for the `polex` command
- `Templates`: A folder that contains template files for different languages

