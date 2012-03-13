Installation:

	git clone git://github.com/Vanbosse/dotvim.git ~/.vim

Create symlinks:

	ln -s ~/.vim/vimrc ~/.vimrc

Switch to the `~/.vim` directory, and fetch submodules:

	cd ~/.vim
	git submodule init
	git submodule update

Add more submodules:

	cd ~/.vim
	git submodule add <url> bundle/<name>

Update all submodules at once:

	cd ~/.vim
	git submodule foreach git pull origin master
