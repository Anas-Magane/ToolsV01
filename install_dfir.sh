#!/bin/bash

echo "[+] Mise à jour de Kali Linux..."
sudo apt update && sudo apt full-upgrade -y

echo "[+] Installation des outils d'analyse de fichiers & hexadécimal..."
sudo apt install -y hexedit bless binwalk foremost scalpel exiftool

echo "[+] Installation des outils d'analyse des disques & fichiers..."
sudo apt install -y autopsy sleuthkit xfsprogs testdisk gddrescue

echo "[+] Installation des outils d'analyse de la mémoire et des processus..."
sudo apt install -y volatility3 memdump procenv linux-ftools
pip install rekall-agent

echo "[+] Installation des outils d'analyse réseau & forensic logs..."
sudo apt install -y wireshark tshark tcpdump zeek bro suricata
pip install brim zeek-scripts

echo "[+] Installation des outils de reverse engineering & analyse de malware..."
sudo apt install -y ghidra radare2 cutter pestudio
wget https://github.com/hasherezade/pe-sieve/releases/download/v0.3.3/pe-sieve32.exe -O pe-sieve32.exe
wget https://github.com/hasherezade/pe-sieve/releases/download/v0.3.3/pe-sieve64.exe -O pe-sieve64.exe

echo "[+] Installation des outils de stéganographie & OSINT..."
sudo apt install -y steghide exiftool recon-ng
pip install yara-python cyberchef

echo "[+] Installation des outils d'automatisation & scripting..."
sudo apt install -y python3-pip jq
pip install scapy pandas volatility

echo "[+] Installation des outils Cloud Forensics..."
pip install awscli google-cloud-sdk azure-cli

echo "[+] Installation de Sysinternals Suite pour analyse Windows..."
wget https://download.sysinternals.com/files/SysinternalsSuite.zip -O SysinternalsSuite.zip
unzip SysinternalsSuite.zip -d SysinternalsSuite

echo "[+] Installation complète !"
