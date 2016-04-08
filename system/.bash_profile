
for dotfile in ~/dotfiles/system/.{functions,env,alias}; do
	[ -f "$dotfile" ] && echo "$dotfile" && source "$dotfile";
done;
