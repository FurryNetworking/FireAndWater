npm i --save-dev @types/node
tsc get_anaconda_version.ts
OUTPUT=$(node get_anaconda_version.js)
wget https://repo.anaconda.com/archive/Anaconda$OUTPUT-Linux-x86_64.sh
sudo bash Anaconda$OUTPUT-Linux-x86_64.sh
