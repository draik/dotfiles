# Install and upgrade packages
alias sagi='sudo apt-get install --yes'
alias up='sudo apt-get update && sudo apt-get upgrade'

# SSH into servers
alias ve='ssh root@<server_IP>'
alias dv='ssh -p <port> root@<server_IP>'

# Install 'colordiff' first
alias diff='colordiff'

# Pass options to free
alias meminfo='free -m -l -t'

# Find memory intensive processes
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

# Find CPU intensive processes
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

# Get CPU info
alias cpuinfo='lscpu'
