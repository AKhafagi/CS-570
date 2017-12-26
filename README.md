A simple unix shell, it reads the commands from stdin unless the input is redirected parses
them and returns the appropriate command output. Prints the output to stdout
unless the output is redirected.
This shell handles most of the meta-characters {'<','>','&','|',';','','','>!'}. 
This shell handles up to to ten pipe commands, and can handle both input and output 
redirection simultanously. This shell uses getword.c to get the word from stdin, parse into
a new string array, of commands and flags. This array is then passed to the system call 
"execvp" to execute that command.
This shell employs many system calls including but not limited to 
{"dup2", "execvp","fork",'pipe", "access", "stat"}.

