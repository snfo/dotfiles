export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

if [ -f ~/.bashrc ]
then
    . ~/.bashrc
fi

if [ -f $(brew --prefix)/etc/bash_completion ]
then
    . $(brew --prefix)/etc/bash_completion
fi

for EXTRA_PATH in /opt/local/bin \
                  /opt/local/sbin \
                  ~/Library/Android/sdk/platform-tools \
                  ~/Library/Android/sdk/ndk-bundle \
                  ~/bin
do
    if [ -d $EXTRA_PATH ]
    then
        export PATH="$EXTRA_PATH:$PATH"
    fi
done

if [ -n "$EXTRA_PATH" ]
then
    unset EXTRA_PATH
fi
