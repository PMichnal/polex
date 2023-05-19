# polex

`polex` is a Bash script for creating and managing projects in different programming languages.

## Prerequisites

Before using `polex`, you need to have the following software installed on your system:

- [Conda](https://docs.conda.io/en/latest/miniconda.html): A package and environment manager for Python and other languages.
- [Julia](https://julialang.org/downloads/): A high-level, high-performance programming language for technical computing.
- [Visual Studio Code](https://code.visualstudio.com/): A code editor with support for many languages and features.

After installing Julia, you also need to add its binary directory to your system `PATH` so that you can run the `julia` command from the command line. You can find instructions on how to do this in the [Julia documentation](https://julialang.org/downloads/platform/#adding_julia_to_path_on_windows_10).

## Usage


polex [options] [project_name] [language]


### Options

- `-l`, `--list`: List all existing projects
- `-h`, `--help`: Show the help message
- `-a`, `--add`: Add a new language
- `-delete`, `--delete`: Delete a language and its associated files

### Arguments

- `project_name`: The name of the project to create or open
- `language`: The language of the project

## Examples

Create a new C++ project named `my_project`:

polex my_project c++


List all existing projects:

polex -l

Add a new language named `my_language` with a default file named `my_file.my_ext`:

polex -a Enter the name of the language: my_language Enter the default name for the file in this language: my_file.my_ext


Delete a language named `my_language` and its associated files:

polex -delete Enter the name of the language to delete: my_language


Initialize the project at `/path/to/init` and create the `Projects` directory at `/path/to/projects`:

polex -init Enter the path where you want to initialize the project: /path/to/init Enter the path where you want to create the Projects directory: /path/to/projects

## Files

The `polex` project consists of four files and one folder:

- `polex`: The main script for creating and managing projects
- `settings.sh`: A script that defines various settings and default values
- `functions.sh`: A script that defines various functions used by the `polex` script
- `polex-completion.sh`: A script that provides tab completion for the `polex` command
- `Templates`: A folder that contains template files for different languages

