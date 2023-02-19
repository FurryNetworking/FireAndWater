npm i --save-dev @types/node
tsc get_anaconda_version.ts
npm install xml2js
npm install xml2js-xpath
npm install -g typescript
npm install -g ts-node
ts-node configurator.ts
zypper -n install python-base
zypper addrepo https://download.opensuse.org/repositories/devel:languages:python/openSUSE_Tumbleweed/devel:languages:python.repo
zypper refresh
zypper install python2-setuptools
zypper install python2-pip
pip install -r requirements.txt
OUTPUT=$(python2 get_version.py)
wget https://repo.anaconda.com/archive/Anaconda$OUTPUT-Linux-x86_64.sh
sudo bash Anaconda$OUTPUT-Linux-x86_64.sh
