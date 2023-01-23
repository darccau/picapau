#!/usr/local/env bash

declare -A tools

funtion golang_tools {
tools['anew']='go install -v github.com/tomnomnom/anew@lates'
tools['nuclei']='go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest'
tools['ffuf']='go install -v github.com/ffuf/ffuf@latest'
tools['notify']='go install -v github.com/projectdiscovery/notify/cmd/notify@latest'
tools['unfurl']='go install -v github.com/tomnomnom/unfurl@latest'
tools['httpx']='go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest'
tools['dnsx']='go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest'
tools['gau']='go install -v github.com/lc/gau/v2/cmd/gau@latest'
tools['dalfox']='go install -v github.com/hahwul/dalfox/v2@latest'
tools['interactsh']='go install -v github.com/projectdiscovery/interactsh/cmd/interactsh-client@latest'
tools['tlsx']='go install github.com/projectdiscovery/tlsx/cmd/tlsx@latest'
tools['subfinder']='go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest'
tools['Web-Cache-Vulnerability-Scanner']='go install -v github.com/Hackmanit/Web-Cache-Vulnerability-Scanner@latest'
tools['katana']='go install github.com/projectdiscovery/katana/cmd/katana@latest'
tools['naabu']='go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest'

for tool in "${tools[@]}"; do
  echo  "$tool"
done
}
