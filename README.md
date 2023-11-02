## Description
internsctl

internsctl is a command-line tool for managing interns. It can be used to create and manage intern accounts, list interns, and get information about interns.

Features

* Create and manage intern accounts
* List regular users
* List users with sudo permissions
* Get file information
* Get CPU information
* Get memory information
* Display the script version
## Installation

To install internsctl, simply clone this repository and run the `install.sh` script:

```
git clone https://github.com/your-username/internsctl.git
cd internsctl
chmod +x install.sh
./install.sh
```

This will install the `internsctl` command to your system.
## Usage

To use internsctl, simply type the command followed by the subcommand and any arguments. For example, to get CPU information, you would type the following command:

```
internsctl cpu
```

To create a new intern account, you would type the following command:

```
internsctl user create <username>
```

To list all regular users on the system, you would type the following command:

```
internsctl user list
```

To list all users with sudo permissions on the system, you would type the following command:

```
internsctl user list --sudo-only
```

To get information about the file `/etc/passwd`, you would type the following command:

```
internsctl file getinfo /etc/passwd
```

To get the size of the file `/etc/passwd`, you would type the following command:

```
internsctl file getinfo --size /etc/passwd
```

To get the permissions of the file `/etc/passwd`, you would type the following command:

```
internsctl file getinfo --permissions /etc/passwd
```

To get the owner of the file `/etc/passwd`, you would type the following command:

```
internsctl file getinfo --owner /etc/passwd
```

To get the last modified date of the file `/etc/passwd`, you would type the following command:

```
internsctl file getinfo --last-modified /etc/passwd
```

To display the version of the internsctl script, you would type the following command:

```
internsctl --version
```
## Including the manual file


To include the manual file with the tool, you can simply copy it to the same directory as the `internsctl` script. For example:

```
cp internsctl.man /usr/bin/internsctl.man
```

Once the manual file is in place, you can view it by typing the following command:

```
man internsctl
```

## Contribution

If you would like to contribute to internsctl, please feel free to submit a pull request. All pull requests will be reviewed and merged as soon as possible.
