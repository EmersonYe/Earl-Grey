if ! [ -d scripts ]; then
	echo "Scripts folder not detected. Downloading..."
	curl -LOks https://github.com/EmersonYe/Earl-Grey/raw/master/scripts.zip
	unzip -q scripts.zip
	rm -f scripts.zip
	echo "Scripts folder successfully downloaded."
else
	echo "Scripts folder detected. Skipping download."
fi
echo "Setup successful."
