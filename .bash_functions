parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/' -e 's/^[ \t]*//'
}

parse_tsuru_target() {
    tsuru target-list 2> /dev/null | grep '\*' | awk '{print $3}'
}
