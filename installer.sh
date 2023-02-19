npm i --save-dev @types/node
tsc get_anaconda_version.ts
npm install xml2js
npm install xml2js-xpath
npm install -g typescript
npm install -g ts-node
ts-node configurator.ts
OUTPUT=$(ts-node get_anaconda_version.ts)
wget https://repo.anaconda.com/archive/Anaconda$OUTPUT-Linux-x86_64.sh
sudo bash Anaconda$OUTPUT-Linux-x86_64.sh
