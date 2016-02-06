CONFIG=/config

mkdir -p /sonos
cd /sonos

# try to remove the repo if it already exists
rm -rf node-sonos-http-api; true

git clone https://github.com/jishi/node-sonos-http-api

cd node-sonos-http-api

if [ ! -d $CONFIG ]; then
  mkdir $CONFIG
fi

if [ ! -f $CONFIG/settings.json ]; then
	echo "{}" > $CONFIG/settings.json
fi

ln -s $CONFIG/settings.json

npm install

npm start
