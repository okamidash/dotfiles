#-------------------------------
#                    ZSH OPTIONS
#-------------------------------
# Directories
setopt chase_links          # Treat ../ as Going to the parent directory
# Completion
setopt auto_list            # Automatically List choices on ambiguous completion
setopt auto_menu            # Automatically use menu completion on the second <tab>
setopt auto_param_slash     # Automatically add a / when Completing a directory
setopt auto_remove_slash    # Remove a slash if it completes 'wrong'
setopt glob_complete        # When the current word has a glob pattern, do not insert all the words resulting from the expression, but cycle through them
setopt complete_in_word     # Complete from both ends
setopt hash_list_all        # Hash entire command path first, before command completion
    setopt list_packed      # List with different Widths, to pack as many options in.
setopt list_ambiguous
setopt list_types           # Show the type of file when listing them as completions
    setopt rec_exact        # In Completion, recognize exact matches even if they are ambiguous
# Expansion and Globbing
setopt bad_pattern          # If a pattern for filename generation is badly formed, print an error
    setopt extended_glob        # Treat #,~ and ^ Characters as part of patterns for filename generation
setopt glob                 # Perform filename generation
    setopt glob_dots            # Do not require a leading . in a filename to be matched explicitly
setopt mark_dirs            # Append a trailing / to all directory names resulting from filename generation
setopt multibyte            # Respect Multibyte characters when found in strings
setopt nomatch              # Print an error if filename expansion returns no result
# History
setopt append_history           # Append to history instead of replacing the file
setopt extended_history         # Save each command's beginning timestamp and duration to the history file
setopt hist_expire_dups_first   # If the internal histroy needs to be trimmed, this option will cause the oldest history duplicate to be lost
setopt hist_fcntl_lock          # Lock the history file using modern locking
setopt inc_append_history       # Save to the history file incrementally
setopt prompt_subst         # Prompt Substitution
# Initalisation
    setopt all_export       # Automatically export parameters that are defined
# Input/Output
setopt aliases              # Expand Aliases
setopt clobber              # Allows for >, >>, <, << redirection to create and append files.
setopt correct              # Try to correct the spelling of commands
unsetopt flow_control       # Disable Flow Control
setopt interactive_comments # Allows comments even in interactive shells
setopt hash_cmds            # Note the location of each command the first time it's executed
setopt hash_dirs            # when a command name is hashed, hash the directory containing it, and directories that occur before
setopt print_exit_value     # Print the exit value of programs with non zero exit status
setopt share_history
# Job control
setopt check_jobs           # Report the status of background and suspended jobs before exiting a shell with job control
setopt notify               # Report the stateus of background jobs immeadiately

