
for dotfile in ~/dotfiles/system/.{functions,env,alias,merda}; do
	[ -f "$dotfile" ] && echo "$dotfile" && source "$dotfile";
done;
