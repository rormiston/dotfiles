# Make sure that you have iTerm installed!
# https://www.iterm2.com/

# Oh-my-zsh
# This needs to be installed BEFORE fzf since it will add
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# to your .zshrc
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# iTerm Colors ("Atom" is my favorite :) )
mkdir -p ~/iTermColors/
cd ~/iTermColors/
git clone https://github.com/mbadolato/iTerm2-Color-Schemes.git

# Install Ultimate-vim
git clone https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
cp my_configs.vim ~/.vim_runtime/
cp basic.vim ~/.vim_runtime/vimrcs/

# Install fzf for the command line and vim
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
cd ~/.fzf
./install
cd ~/.vim_runtime/sources_non_forked/
git clone https://github.com/junegunn/fzf.git
git clone https://github.com/junegunn/fzf.vim.git
cat ~/.fzf.zsh fzf_functions.zsh > fzftemp.zsh
mv fzftemp.zsh ~/.fzf.zsh

# Install UltiSnips
cd ~/.vim_runtime/sources_non_forked/
git clone https://github.com/SirVer/ultisnips.git
cd ~/.vim/
mkdir -p UltiSnips
cp python.snippets ~/.vim/UltiSnips/

# Install Vimwiki
git clone https://github.com/vimwiki/vimwiki.git ~/.vim/pack/plugins/start/vimwiki
mkdir -p ~/notebook/
mkdir -p ~/notebook/vimwiki/
mkdir -p ~/notebook/vimwiki_html/


################
# Other Things #
################

# Karabiner-Elements
# https://github.com/tekezo/Karabiner-Elements
