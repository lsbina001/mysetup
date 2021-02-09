wget --no-check-certificate -O - https://raw.githubusercontent.com/lsbina001/mysetup/main/goinstaller.sh
source .bashrc
go get -u github.com/tomnomnom/assetfinder
source .bashrc
git clone https://github.com/arkadiyt/bounty-targets-data.git
cd bount-targets-data/data
cat domains.txt | while read line; do assetfinder --subs-only $line | tee -a all.txt; done
