#!/usr/local/env bash                    

# colors
# local red=#1231f

TOOLS_DIR="$HOME/tools/taz"

declare -A tools

function validator {
  [[ -d TOOLS_DIR ]] || echo "The directory $TOOLS_DIR does not exist"
}

function golang_tools {
  tools['nuclei']='go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest'
  tools['notify']='go install -v github.com/projectdiscovery/notify/cmd/notify@latest'
  tools['httpx']='go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest'
  tools['dnsx']='go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest'
  tools['interactsh']='go install -v github.com/projectdiscovery/interactsh/cmd/interactsh-client@latest'
  tools['tlsx']='go install github.com/projectdiscovery/tlsx/cmd/tlsx@latest'
  tools['subfinder']='go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest'
  tools['katana']='go install github.com/projectdiscovery/katana/cmd/katana@latest'
  tools['naabu']='go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest'
  tools['ffuf']='go install -v github.com/ffuf/ffuf@latest'
  tools['anew']='go install -v github.com/tomnomnom/anew@lates'
  tools['unfurl']='go install -v github.com/tomnomnom/unfurl@latest'
  tools['gau']='go install -v github.com/lc/gau/v2/cmd/gau@latest'
  tools['dalfox']='go install -v github.com/hahwul/dalfox/v2@latest'
  tools['Web-Cache-Vulnerability-Scanner']='go install -v github.com/Hackmanit/Web-Cache-Vulnerability-Scanner@latest'
  tools['jq']='go install -v github.com/tomnomnom/gf@latest'

  for tool in "${tools[@]}"; do
    echo  "$tool"
  done
}

validator 
golang_tools
