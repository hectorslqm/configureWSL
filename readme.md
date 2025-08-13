# Guide to Set Up WSL Independently
The file configureWSL-PT1.sh sets up the terminal with basic things:

- upgrade
- update
- install oh-my-zsh (an enhanced terminal)
- install the custom theme
- create shortcuts that I commonly use

The file configureWSL-PT2.sh installs programs needed for programming in JS, Python, and GitHub, which are probably already installed by now. It also sets your GitHub name and email:

- git
- python
- node
- ODBC (msodbcsql18)

## Option 1: Copy the bash scripts from my cloud

```sh
cd
mkdir configureWSL
cp mnt/c/Users/hecto/OneDrive/DEVELOP/configureWSL/configureWSL-PT1.sh ~/configureWSL/
cp mnt/c/Users/hecto/OneDrive/DEVELOP/configureWSL/configureWSL-PT2.sh ~/configureWSL/
# Check both files with nano before running (verify username, paths, and git email)
```
## Option 2: Clone the repository
```sh
cd 
mkdir configureWSL
git clone https://github.com/hectorslqm/configureWSL.git
cd configureWSL
```

## Make the scripts executable
```sh
chmod +x configureWSL/configureWSL-PT1.sh
chmod +x configureWSL/configureWSL-PT2.sh
```
## Run the scripts
```
  configureWSL/configureWSL-Part1.sh
  # Restart WSL and run Part 2
  configureWSL/configureWSL-Part2.sh
```
Done 😁

# Extra How to setup work folder and personal folder

## Create one SSH Key for work and one for personal use
Repeat the following steps for your personal and for your work git accounts
```sh 
ssh-keygen -t ed25519 -C "email" -f "username"
```
## For Windows
```sh
eval `ssh-agent -s`
ssh-add ~/.ssh/yourKeyName
```
## For Mac or Linux
```sh
eval "$(ssh-agent -s)"
#Mac apple keychain
ssh-add --apple-use-keychain ~/.ssh/yourKeyName
#Linux
ssh-add ~/.ssh/yourKeyName
```
## Create gitconfigs
We need a main `.gitconfig`,`.gitconfig.personal` and `.gitconfig.work`

### For Windows
```cmd
cd %USERPROFILE%
type nul > .gitconfig
type nul > .gitconfig.personal
type nul > .gitconfig.work
```

### For MAC & Linux
```sh
cd
touch .gitconfig
touch .gitconfig.personal
touch .gitconfig.work
```
## Create one folder for work repos and one folder for personal repos
When using the same computer for both personal and work projects, managing different SSH keys, Git emails, and configurations can be tricky.
This setup allows you to:

1. Keep personal and work repositories separate in different folders.
2. Configure Git to automatically use the correct SSH key and identity based on the repository folder.
3. Avoid conflicts between GitHub/Git accounts and keep your configurations organized.

This guide shows how to set up your system for Windows, Linux, and macOS, creating custom configuration files and organizing your repositories so Git always uses the correct identity without any manual intervention.
### For Windows
Use file explorer and create two folders in `C:/Users/yourUser/`
- personal-develop
- work-develop
### For MAC & Linux
```sh
cd
mkdir personal-develop
mkdir work-develop
```

## Modify .gitconfig
### For Windows
```git
[includeIf "gitdir:C:/Users/yourUser/work-develop/"]
path = C:/Users/yourUser/.gitconfig.personal

[includeIf "gitdir:C:/Users/yourUser/personal-develop/"]
path = C:/Users/yourUser/.gitconfig.work
```

### For Linux
```git
[includeIf "gitdir:~/work-develop/"]
path = ~/.gitconfig.personal

[includeIf "gitdir:~/personal-develop/"]
path =~/.gitconfig.work
```
## Modify custom git configs
Repeat this step for `.gitconfig.work` and `.gitconfig.personal`
### For Windows
```
[user]
	name = Your Name
	email = Your Email
[github]
	user = your account

[core]
	sshCommand = "ssh -i C:/Users/yourUser/.ssh/yourSSHKey"

[filter "lfs"]
	clean = git-lfs clean -- %f
	smudge = git-lfs smudge -- %f
	process = git-lfs filter-process
	required = true
```
### For Linux Mac
```
[user]
	name = Your Name
	email = Your Email
[github]
	user = your account

[core]
	sshCommand = "ssh -i ~/.ssh/yourSSHKey"

[filter "lfs"]
	clean = git-lfs clean -- %f
	smudge = git-lfs smudge -- %f
	process = git-lfs filter-process
	required = true
```