

# Context
Toolbox is repo of helper scripts you can use to automate mundane tasks.

## How to use the scripts

1) **install_cdk_tools.sh** : Installs tools for your CDK environment on Ubuntu version 20.04.

''Installs unzip''

'Installs awscliv2'

'Installs Node.js'

'Installs CDK toolkit'

'Installs Python virtual environment'

'Creates folder for your App'

```
./install_cdk_tools.sh <your-cdk-folder-name>
```
- Make sure you clone the project that you plan to work with, before proceeding to the next script.

- **setup_cdk_env.sh** : Establishes your CDK environment on Ubuntu version 20.04.

Accesses cdk folder 

Creates Python virtual environment names .labs (You can change it to a different name)

Activates the environment

Installs packages referenced in requirements.txt

Runs cdk synth

Runs cdk bootstrap

```
./setup_cdk_env.sh <your-cdk-folder-name> #same folder name, as the one you used above
```

