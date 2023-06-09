# Virgin Wallstreet journal reader (who gets blocked by paywall)
# VS chad ekantipur reader
#
# Since college finished, I've turned into a 40yr old dad, who reads kantipur every morning. So, this repo

current_date=$(date -u +"%Y-%m-%d")

# check if today's newspaper is already downloaded
if [ ! -f ~/Kantipur/$current_date.pdf ]; then
	mkdir -p ~/Kantipur && curl -k 'https://epaper.ekantipur.com/kantipur/download/2023-06-08' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:109.0) Gecko/20100101 Firefox/114.0' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8' -H 'Accept-Language: en-US,en;q=0.5' -H 'Accept-Encoding: gzip, deflate, br' -H 'DNT: 1' -H 'Connection: keep-alive' -H 'Referer: https://epaper.ekantipur.com/kantipur' -H 'Upgrade-Insecure-Requests: 1' -H 'Sec-Fetch-Dest: document' -H 'Sec-Fetch-Mode: navigate' -H 'Sec-Fetch-Site: same-origin' -H 'Sec-Fetch-User: ?1' -H 'TE: trailers'  -o ~/Kantipur/$current_date.pdf

fi

# Open the file
if [[ "$OSTYPE" == "linux-gnu" ]]; then
	xdg-open ~/Kantipur/$current_date.pdf
elif [[ "$OSTYPE" == "darwin"* ]]; then
	open ~/Kantipur/$current_date.pdf
else
	echo "Unsupported operating system: $OSTYPE"
fi
