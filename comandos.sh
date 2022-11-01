ffmpeg -loglevel fatal -i 'rtsp://0.0.0.0/stream' -vframes 1 -r 1 output.jpg #Capturar imagen desde stream RTSP a archivo
ffmpeg -loglevel fatal -i 'rtsp://0.0.0.0/stream' -vframes 1 -r 1 -f singlejpeg - | base64 #Capturar imagen desde stream RTSP a string base64
wget -qO- http://ipecho.net/plain | xargs echo #Conocer la ip publica 
yay -Scc #Borrar cache
pacman-key --refresh-keys #Actualizar claves de pacman
gpg --search-keys 'FFFFFFFFFFFFFFFFFFFf' #Buscar y agregar clave publica
nc -u -l 5000 | jq --unbuffered -r '.|[."accx", ."accy", ."accz", ."acct"] |@csv ' > test2 #Server UDP, parseo de JSON y guardado en archivo de CSV
xmrig --donate-level 2 -o pool.supportxmr.com:443 -u 494PNXYq4BHJ1n7AE1TsdXNawwemipcnGY6E9HCCE3hnDTZz4AqqQGjTHzc7kCt8pXbpcjXsKHLzMXLmYzLVi1HdG3zXKhQ -k --tls -p Yoga --threads=4 #Minar Monero dentro del pool supportcmr.com
sam build --use-container --build-image amazon/aws-sam-cli-build-image-python3.8 #Construir proyecto SAM con python 3.8
sam deploy
sam deploy --guided
