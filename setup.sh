BASEDIR=$(dirname $0)

if [ ! -d ~/.oh-my-zsh ];
then
    wget --no-check-certificate http://install.ohmyz.sh -O - | sh
fi

if [ -f ~/.zshrc ];
then
    mv ~/.zshrc ~/.zshrc.bak
fi

ln -s ${BASEDIR}/.zshrc ~/.zshrc

if [ -f ~/.gitconfig ];
then
    mv ~/.gitconfig ~/.gitconfig.bak
fi

ln -s ${BASEDIR}/.gitconfig ~/.gitconfig

