#!/usr/bin/env bash

export NOTION_EXPORT_PATH="../export"
cd notion-export-workspace
[ -f "node_modules" ] || yarn
yarn start "${@}"
cd ..
