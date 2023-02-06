#!/usr/bin/env bash

declare -A golang_tools

function pkg_manager_tools {
  sudo apt install update -y
  sudo apt install -y \
    golang \
    git \
    python3 \
    python3-pip \
    curl
}

golang_tools['nuclei']='go install github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest'
golang_tools['notify']='go install github.com/projectdiscovery/notify/cmd/notify@latest'
golang_tools['httpx']='go install github.com/projectdiscovery/httpx/cmd/httpx@latest'
golang_tools['dnsx']='go install github.com/projectdiscovery/dnsx/cmd/dnsx@latest'
golang_tools['interactsh']='go install github.com/projectdiscovery/interactsh/cmd/interactsh-client@latest'
golang_tools['tlsx']='go install github.com/projectdiscovery/tlsx/cmd/tlsx@latest'
golang_tools['subfinder']='go install github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest'
golang_tools['katana']='go install github.com/projectdiscovery/katana/cmd/katana@latest'
golang_tools['naabu']='go install github.com/projectdiscovery/naabu/v2/cmd/naabu@latest'
golang_tools['ffuf']='go install github.com/ffuf/ffuf@latest'
golang_tools['anew']='go install github.com/tomnomnom/anew@lates'
golang_tools['unfurl']='go install  github.com/tomnomnom/unfurl@latest'

for tool in "${golang_tools[@]}"; do
	$tool
done
