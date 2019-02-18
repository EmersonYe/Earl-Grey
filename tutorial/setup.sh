if ! [ -d scripts ]; then
	echo "Scripts folder not detected. Downloading..."
	curl -LOks https://github.com/EmersonYe/Earl-Grey/raw/master/scripts.zip
	unzip -q scripts.zip
	rm -f scripts.zip
	SCRIPT_FOLDER=$(realpath scripts)
	echo "Scripts downloaded and unzipped to $SCRIPT_FOLDER."
else
	SCRIPT_FOLDER=$(realpath scripts)
	echo "Scripts folder detected at $SCRIPT_FOLDER. Skipping download."
fi
echo "Setup successful."
