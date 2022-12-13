OUTPUT=$(tsc get_anaconda_version.ts)
wget https://repo.anaconda.com/archive/Anaconda$OUTPUT-Linux-x86_64.sh
sudo bash Anaconda$OUTPUT-Linux-x86_64.sh
