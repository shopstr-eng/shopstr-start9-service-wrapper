#!/bin/sh

set -e

npm install
npm run build
exec npm run start
