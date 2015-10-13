complete -xc vman -a "(__fish_complete_man)"

complete -xc vman -a 1 --description "Program section"
complete -xc vman -a 2 --description "Syscall section"
complete -xc vman -a 3 --description "Library section"
complete -xc vman -a 4 --description "Device section"
complete -xc vman -a 5 --description "File format section"
complete -xc vman -a 6 --description "Games section"
complete -xc vman -a 7 --description "Misc section"
complete -xc vman -a 8 --description "Admin section"
complete -xc vman -a 9 --description "Kernel section"
complete -xc vman -a tcl --description "Tcl section"
complete -xc vman -a n --description "New section"
complete -xc vman -a l --description "Local section"
complete -xc vman -a p
complete -xc vman -a o --description "Old section"
complete -rc vman -s C --description "Configuration file"
complete -xc vman -s M -a "(__fish_complete_directories (commandline -ct))" --description "Manpath"
complete -rc vman -s P --description "Pager"
complete -xc vman -s S --description "Manual sections"
complete -c vman -s a --description "Display all matches"
complete -c vman -s c --description "Always reformat"
complete -c vman -s d --description "Debug"
complete -c vman -s D --description "Debug and run"
complete -c vman -s f --description "Show whatis information"
complete -c vman -s F -l preformat --description "Format only"
complete -c vman -s h --description "Display help and exit"
complete -c vman -s k --description "Show apropos information"
complete -c vman -s K --description "Search in all man pages"
complete -xc vman -s m --description "Set system"
complete -xc vman -s p --description "Preprocessors"
complete -c vman -s t --description "Format for printing"
complete -c vman -s w -l path --description "Only print locations"
complete -c vman -s W --description "Only print locations"
