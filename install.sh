# set bashrc
sudo cp bashrc ~/.bashrc
source ~/.bashrc

# set vimrc
sudo cp vimrc ~/.vimrc

# install newst vim version 
mkdir ~/.vim

sudo apt-get --assume-yes update
sudo apt-get  --assume-yes install libncurses5-dev libgnome2-dev libgnomeui-dev \
        libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
            libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
                python3-dev ruby-dev lua5.1 lua5.1-dev libperl-dev git

git clone https://github.com/vim/vim.git
cd vim
git pull
./configure --enable-python3interp=yes --with-python3-command=/usr/bin/python3
make
sudo mv src/vim /usr/local/bin
make clean
cd ..

# install badwolf
mkdir ~/.vim/colors
git clone https://github.com/sjl/badwolf.git
mv badwolf/colors/badwolf.vim ~/.vim/colors/

# install vundle 
mkdir ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install plugins
vim -i NONE -c VundleUpdate -c quitall

# Compile youCompleteME
sudo apt-get --assume-yes install cmake
sudo ~/.vim/bundle/youcompleteme/install.py

# install go
wget https://dl.google.com/go/go1.12.6.linux-amd64.tar.gz
sudo tar -xvf go1.12.6.linux-amd64.tar.gudo 
mv go /usr/local

# install tmux
sudo apt-get --assume-yes install tmux
sudo cp tmux.conf ~/.tmux.conf
