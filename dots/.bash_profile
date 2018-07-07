# .bash_profile is executed for login shells
# When you login (type username and password) via console, either sitting at the machine, or remotely via ssh: 
# .bash_profile is executed to configure your shell before the initial command prompt

# use ~/.bashrc as source
if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi


# added by Anaconda3 installer
export PATH="/Users/micah/anaconda3/bin:$PATH"
