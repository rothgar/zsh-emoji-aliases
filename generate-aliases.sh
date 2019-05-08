#!/bin/bash

DATA_URL="https://raw.githubusercontent.com/alexmick/emoji-data-python/master/emoji_data_python/data/emoji.json"

echo -e $(curl -s "${DATA_URL}" \
	| jq -r -M '.[] | "alias -g :\(.short_name):=\"\\U\(.unified)\","' `# add an extra , for newline` \
	| sed -r 's/-([0-9A-Z]{3,5})/\\U\1/g')														 `# handle emoji variants` \
	| tr ',' '\n'                                                      `# wrapped echo removes newlines` \
	| sed -e 's/^[ \t]*//'                                             `# remove leading space` \
	> emoji.aliases
