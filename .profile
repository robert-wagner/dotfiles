# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH to include user's private bin directories
export PATH="$HOME/local/bin:$HOME/.local/bin:/usr/local/sbin:$HOME/Library/Python/2.7/bin:$PATH"

# set MANPATH to include user's private manpath directories
MANPATH="$HOME/local/share/man:$MANPATH"

if [ -f "$HOME/.utils.bash" ]; then
    source "$HOME/.utils.bash"
fi

# makes steam minimized to system tray when closing the window
export STEAM_FRAME_FORCE_CLOSE=1

export JAVA_HOME=`/usr/libexec/java_home -v 1.8.0_162`

if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi
