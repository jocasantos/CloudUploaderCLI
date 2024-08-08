# CloudUploaderCLI

learntocloud.guide

#### 1. Create a repo at GitHub

#### 2. Install AWS CLI

- Windows -> just download package "msiexec.exe /i https://awscli.amazonaws.com/AWSCLIV2.msi"
- Check the version "aws --version"

#### 3. Configure AWS CLI with your credentials

- Log in in your aws root account and go to IAM Identity Center.
- Create a Group with Admin or Developer (PowerUserAccess) access.
- Create a User and add the User to the Group you created before.
- Then configure your credentials at the command line by SSO login.
  - $ aws configure sso
  - SSO session name (Recommended): my-sso (you can put anything here)
  - SSO start URL [None]: (copy the User's https adress) i.e. https://d-xxxxxxxxxx.awsapps.com/start
  - SSO region [None]: us-east-1 (choose the server)
  - SSO registration scopes [None]: sso:account:access (just press enter)
- It will ask to log in at your browser.
- Then choose the output format, put json, and the profile name, choose one or press enter for default.

#### 4. CLI Argument Parsing:

- Create a bash script file, #!/bin/bash (see clouduploader.sh)
- Ensure AWS_PROFILE is set to your SSO profile

#### 5. Run the Script

- Make the script executable: chmod +x clouduploader.sh
- Run the script: ./clouduploader.sh /path/to/your/file.txt your-s3-bucket-name
