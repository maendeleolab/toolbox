# Context
Toolbox is a repository of helper scripts you can use to automate mundane tasks.

## How to use the scripts
1) Clone this repo to your Linux machine
```
git clone https://github.com/maendeleolab/toolbox.git
```

2) **install_cdk_tools.sh** : Installs tools for your CDK environment on your Linux machine.

- Note: This script has been validated on Ubuntu version 20.04.

```
Installs unzip
Installs awscliv2
Installs Node.js
Installs CDK toolkit
Installs Python virtual environment
Creates folder for your App
```
```
./install_cdk_tools.sh <your-cdk-folder-name>
```
3) Make sure you clone the project that you plan to work with, before proceeding to the next script.

4) **setup_cdk_env.sh** : Establishes your CDK environment on Ubuntu version 20.04.

```
Accesses cdk folder 
Creates Python virtual environment names .labs (You can change it to a different name)
Activates the environment
Installs packages referenced in requirements.txt
Runs cdk synth
Runs cdk bootstrap
```
```
./setup_cdk_env.sh <your-cdk-folder-name> #same folder name, as the one you used above
```
