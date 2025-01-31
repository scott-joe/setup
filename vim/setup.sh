###################### SETUP VIM #####################################

# main
mkdir -p ~/.vim

# swap and backup
mkdir -p ~/.vim/backup
mkdir -p ~/.vim/swp

# pathogen
mkdir -p ~/.vim/autoload
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# pathogen plugins
mkdir -p ~/.vim/bundle

git clone https://github.com/lilydjwg/colorizer ~/.vim/bundle/colorizer
git clone https://github.com/wookiehangover/jshint.vim.git ~/.vim/bundle/jshint.vim
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/scrooloose/syntastic.git ~/.vim/bundle/syntastic
git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes
git clone https://github.com/kenng/vim-bettersearch.git ~/.vim/bundle/vim-bettersearch
git clone https://github.com/ryanoasis/vim-webdevicons ~/.vim/bundle/webdevicons
git clone git://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive
git clone git://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter

# remove git files/folders
(find ~/.vim/bundle -type d -name ".git" && find ~/.vim/bundle -name ".gitignore" && find ~/.vim/bundle -name ".gitmodules" ) | xargs rm -rf

# color schemes
mkdir -p ~/.vim/colors
cp ./vim/colors/ryan.vim ~/.vim/colors/
cp ./vim/colors/ryan_dark.vim ~/.vim/colors/

# plugins
mkdir -p ~/.vim/plugin
curl -LSso ~/.vim/plugin/bufkill.vim https://raw.githubusercontent.com/qpkorr/vim-bufkill/master/plugin/bufkill.vim

# syntax
mkdir -p ~/.vim/syntax
curl -LSso ~/.vim/syntax/ejs.vim https://raw.githubusercontent.com/emilis/emilis-config/master/.vim/syntax/ejs.vim

# .vimrc
cp ./vim/.vimrc ~/.vim/
cp ./vim/.vimrc-basic ~/.vim/
ln -s ~/.vim/.vimrc ~/.vimrc

# font

if [ $os == "linux-gnu" ]; then
	if [[ ! -d ~/.fonts ]]; then
		mkdir -p ~/.fonts
	fi

	cp ./vim/font/*.otf ~/.fonts
fi

if [ $os == "darwin" ]; then
	if [[ ! -d ~/Library/Fonts ]]; then
		mkdir -p ~/Library/Fonts
	fi

	cp ./vim/font/*.otf ~/Library/Fonts
fi
######################################################################
