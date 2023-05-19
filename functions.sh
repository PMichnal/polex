#Creates a directory for the new project
create_directory () {
  local language_projects=$1
  local project_name=$2


  mkdir -p ~/Projects/$language_projects/
  
  if [ "$language_projects" = "JULIA" ]
  then
    cd ~/Projects/$language_projects/
    echo "using Pkg; Pkg.generate(\"$project_name\")" | julia
  else
    mkdir -p ~/Projects/$language_projects/$project_name
  fi
}


#there is no Julia template, as its provided by the Pkg.generate() function. Maybe will add it if i need something more specific


get_template () {
    local templ=$1
    local wd=$(dirname "$0")

    if [ -f "$wd/Templates/$templ" ]
    then
        cat "$wd/Templates/$templ"
    else
        echo "Error: Template for language not found"
        exit 1
    fi
}