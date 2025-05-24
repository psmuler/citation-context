#!/usr/bin/env bash
set -e

CONCEPTRECID=$(jq -r '.conceptrecid' publish_result.json)
TITLE=$(jq -r '.metadata.title' metadata.json)

export ISSUED_DOI=$CONCEPTRECID
export CFF_TITLE="$TITLE"

echo "authors:" > authors.yaml

echo "DEBUG: Looping over creators"
jq '.metadata.creators' metadata.json

jq -c '.metadata.creators[]' metadata.json | while read -r creator; do
  echo "DEBUG: Processing creator: $creator"
  NAME=$(echo "$creator" | jq -r '.name')
  GIVEN=$(echo "$NAME" | cut -d',' -f2 | xargs)
  FAMILY=$(echo "$NAME" | cut -d',' -f1 | xargs)

  echo "  - family-names: \"$FAMILY\"" >> authors.yaml
  echo "    given-names: \"$GIVEN\"" >> authors.yaml
  echo "$creator" | jq -r 'to_entries[] | select(.key != "name") | "    \(.key): \"\(.value)\""' >> authors.yaml
done 

envsubst < .github/template/CITATION-template.cff > CITATION-tmp.cff

echo "DEBUG: Generated CITATION-tmp.cff"
cat CITATION-tmp.cff
echo "DEBUG: Generated authors.yaml"
cat authors.yaml

cat CITATION-tmp.cff authors.yaml > CITATION.cff