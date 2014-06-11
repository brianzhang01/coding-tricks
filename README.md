# Coding Tricks (from [Ruth Fong](https://github.com/ruthcfong))
This is a collection of command-line shortcuts and development tools I've found to be helpful. Feel free to suggest more!

## Table of Contents
[Development Tools](#development-tools)

* [pip](#pip)
* [virtualenv](#virtualenv)

[Command-line tricks](#command-line-tricks)

* [Creating symlinks](#creating-symlinks)
* [Adding to your path](#adding-to-your-path)

[Bash Profile](#bash-profile)

* [Aliasing](#aliasing)
* [Adding to system's PATH](#adding-to-systems-path)

## Development Tools
### pip
pip is a command-line tool that helps users easily install Python packages and dependencies. For example, if you needed to install a specific version of Django, you would simply run `pip install Django==1.4.1`.

If you have a list of Python dependencies you need to install, you can list them in a requirements.txt file (see an example [here](requirements.txt)) and then run `pip install -r requirements.txt` and pip will install all the listed dependencies.

Never manually download a package again!

Install pip from [here](http://www.pip-installer.org/en/latest/installing.html).

### virtualenv
A virtual environment allows you to install packages in a black box environment for a specific project. This is useful if you have various projects that require the different versions of the same package (i.e. a Django 1.4.1 project and a Django 1.6 project).

Install virtualenv by running `pip install virtualenv`.

To create a virtualenv for a project, cd into that project's directory and run `virtual venv`. This will create a virtual environment and store its settings in a directory called venv.

To activate your virtual environment, run `source venv/bin/activate` (this is a good candidate command to add to your .bash_profile!).

Then, you can install what you need using `pip install` and packages will only be installed in your virtual environment. To deactivate your virtual environment, simply run `deactivate`.

## Command-line tricks
### Creating symlinks
A symlink - short for symbolic link - is a shortcut for a directory. For instance, if I want to easily access my Tomcat directory, which is located in some obscure /path/to/tomcat, I can create a symlink to a more user-friendly location like /Library/tomcat by running `sudo ln -s /path/to/tomcat /Library/tomcat`.

Now, everytime I access /Library/tomcat, I am really accessing the files in /path/to/tomcat.

For more on symlinks on OS X, look [here](http://www.cyberciti.biz/faq/symbolic-symlink-mac-osx-remove-command/).

### Adding to your path
Running `export PATH=$PATH:/path/to/be/added` added /path/to/be/added to your system's path in that instance of your terminal (to add /path/to/be/added to your system's path globally, edit your .bash_profile).

## Bash Profile
Usually located at your default directory (~) (for me, Users/admin/), your .bash_profile file can be used to add command-line shortcuts that you commonly use.

See what was in my [.bash_profile](.bash_profile) as of January 10, 2014.

### Aliasing
To alias a keyword on your command-line, add the following to your .bash_profile file:
`alias cd_to_dir=cd /path/to/dir`
Now, everytime you type `cd_to_dir` on the command line, the command `cd /path/to/dir` will be executed.

You can string together commands to be executed as follows:
`alias cd_to_dir_and_activate= cd /path/to/dir && source venv/bin/activate`.
Then, evertime you type `cd_to_dir_and_activate` on the command line, the following two commands are executed:
`cd /path/to/dir`
`source venv/bin/activate`

### Adding to system's PATH
To add something to your system's path, add the following to your .bash_profile file:
`PATH = /path/to/be/added`
`export PATH`

