#!/usr/bin/env bash

export NOTION_EXPORT_PATH="../export"
cd notion-export-workspace
rm -rf "${NOTION_EXPORT_PATH}"
export_start=$(date +%Y%m%d-%H%M%S)
yarn
yarn start export
cd ..

git add .
git commit -m "Export ${export_start}"
git push