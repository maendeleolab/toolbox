# [Context](#Context)
Toolbox is a repository of helper scripts you can use to automate mundane tasks.

This repo is under development and the notes below are only for using the **cdkInstall** folder.

You are welcome to explore the other folders, which are currently being developped. 

- Note: The scripts below have been tested and validated on Ubuntu version 20.04. Minimum instance type requirement use t3.medium for performance.

## How to use the scripts
#### Step 1

Clone this repo to your Linux machine
```
git clone https://github.com/maendeleolab/toolbox.git
```

#### Step 2

**install_cdk_tools.sh** : Installs tools for your CDK environment on your Linux machine.

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
cd toolbox/cdkInstall
./install_cdk_tools.sh ~/<your-cdk-folder-name>
```

#### Step 3

**Set up AWS CLI to access your AWS environment**

Run this command
```
aws configure
```

#### Step 4

**setup_cdk_env.sh** 

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
#same folder name, as the one you used above
./setup_cdk_env.sh ~/<your-cdk-folder-name>
```
