#!/usr/bin/env sh

VERSION=`npx select-version-cli`

read -p "Releasing $VERSION - are you sure? (y/n)" -n 1 -r

echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
  echo "Releasing $VERSION ..."
  VERSION=$VERSION npm run dist
  echo "dist $VERSION ..."

  npm version $VERSION --message "[release] $VERSION"
  if [[ $VERSION =~ "beta" ]]
  then
    npm publish --tag beta
  else
    npm publish
  fi
fi
# nrm use npm

# npm i

# npm run dist