
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Setting PATH for Jython
PATH="/Users/admin/jython2.5.2/bin:${PATH}"
export PATH

PATH="/Users/admin/jython2.5.2:${PATH}"
export PATH

# For Jython; export JDBC driver
CLASSPATH="/Users/admin/Dropbox/Coding/Tanzania/mysql-connector-java-5.1.10-bin.jar:${CLASSPATH}"
export CLASSPATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Make mysql command accessible
# http://friendlybit.com/tutorial/install-mysql-python-on-mac-os-x-leopard/
export PATH=/usr/local/mysql/bin:$PATH

alias dropbox='cd /Users/admin/Dropbox'


# Tanzania shortcuts
alias tanzania='cd /Users/admin/Dropbox/Coding/Tanzania'
alias m='cd /Users/admin/Dropbox/Coding/Tanzania/maishad && source venv/bin/activate'

# virtualenv shortcuts
alias activate='source venv/bin/activate'

# # Added by Canopy installer on 2013-05-06
# source /Users/admin/Library/Enthought/Canopy_32bit/User/bin/activate

# # added by Anaconda 1.6.1 installer
# export PATH="//anaconda/bin:$PATH"

# 5GB 15444