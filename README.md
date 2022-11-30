# [Context](#Context)
Toolbox is a repository of helper scripts you can use to automate mundane tasks.

## How to use the scripts [How to use the scripts]
#### [Step 1](Step 1)

Clone this repo to your Linux machine
```
git clone https://github.com/maendeleolab/toolbox.git
```

#### Step 2 [Step 2]

**install_cdk_tools.sh** : Installs tools for your CDK environment on your Linux machine.

- Note: This script has been validated on Ubuntu version 20.04.

```
Installs unzip
Installs awscliv2
Installs Node.js
Installs CDK toolkit
Installs Python virtual environment
Creates folder for your CDK projects
```
Run this command
```
./install_cdk_tools.sh <your-cdk-folder-name>
```

#### Step 3 [Step 3] 

**setup_cdk_env.sh** : Establishes your CDK environment on Ubuntu version 20.04.

```
Accesses your cdk folder 
Creates Python virtual environment names .labs (You can change it to a different name)
Activates the environment
Installs packages referenced in requirements.txt
Runs cdk synth
Runs cdk bootstrap
```
Run this command
```
./setup_cdk_env.sh <your-cdk-folder-name> #same folder name, as the one you used above
```
