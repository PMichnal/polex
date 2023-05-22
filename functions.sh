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


# Function to handle conda operations
handle_conda() {
    # Get the project name and language from the function arguments
    local PROJECT_NAME="$1"
    local LANGUAGE="$2"
    
    # Convert the language to uppercase
    LANGUAGE=$(echo "$LANGUAGE" | tr '[:lower:]' '[:upper:]')
    
    # Get the value of CONDA_USAGE for this language from settings.sh
    local CONDA_USAGE_VAR="CONDA_USAGE_$LANGUAGE"
    local CONDA_USAGE=${!CONDA_USAGE_VAR}
    
    # Check if CONDA_USAGE is set to yes
    if [ "$CONDA_USAGE" = "yes" ]
    then
        # If it is, check if a conda environment for this project already exists
        if [ -d ~/anaconda3/envs/$PROJECT_NAME ]
        then
            # If it does, activate it
            source ~/anaconda3/etc/profile.d/conda.sh
            conda activate $PROJECT_NAME
            
        else
            # If it doesn't, create a new conda environment for this project
            
            # Get the value of CONDA_PACKAGES for this language from settings.sh
            local CONDA_PACKAGES_VAR="CONDA_PACKAGES_$LANGUAGE"
            local CONDA_PACKAGES=${!CONDA_PACKAGES_VAR}
            
            # Create a new conda environment and install the default packages for this language
            conda create -y --name $PROJECT_NAME $CONDA_PACKAGES
            
            # Activate the new conda environment
            source ~/anaconda3/etc/profile.d/conda.sh
            conda activate $PROJECT_NAME
            
        fi
        
    fi
    
}
