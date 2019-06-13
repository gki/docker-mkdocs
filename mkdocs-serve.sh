#!/bin/sh
cd workspace

echo ""
while [ true ]
do
  echo "Waiting for mkdocs.yml in workspace..."
  if [ -e mkdocs.yml ]; then
    echo "Found mkdocs.yml!"
    break
  fi
  sleep 3
done

echo ""
mkdocs serve -a 0.0.0.0:8000
