#!/usr/bin/env bash
set -e

CONCEPTRECID=$(jq -r '.conceptrecid' publish_result.json)
TITLE=$(jq -r '.metadata.title' metadata.json)

export ISSUED_DOI=$CONCEPTRECID
export CFF_TITLE="$TITLE"

echo "authors:" > authors.yaml

jq -c '.metadata.creators[]' metadata.json | while read -r creator; do
  NAME=$(echo "$creator" | jq -r '.name')
  GIVEN=$(echo "$NAME" | cut -d',' -f2 | xargs)
  FAMILY=$(echo "$NAME" | cut -d',' -f1 | xargs)

  echo "  - family-names: \"$FAMILY\"" >> authors.yaml
  echo "    given-names: \"$GIVEN\"" >> authors.yaml

  ORCID=$(echo "$creator" | jq -r '.orcid // empty')
  AFFIL=$(echo "$creator" | jq -r '.affiliation // empty')
  WEBSITE=$(echo "$creator" | jq -r '.website // empty')

  [[ -n "$ORCID" ]] && echo "    orcid: \"$ORCID\"" >> authors.yaml
  [[ -n "$AFFIL" ]] && echo "    affiliation: \"$AFFIL\"" >> authors.yaml
  [[ -n "$WEBSITE" ]] && echo "    website: \"$WEBSITE\"" >> authors.yaml
done

envsubst < .github/template/CITATION_template.cff > CITATION_tmp.cff
cat CITATION_tmp.cff authors.yaml > CITATION.cff