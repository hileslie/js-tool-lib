#!/usr/bin/env sh

VERSION=`npx select-version-cli`
nrm use npm
npm i

read -p "Releasing $VERSION - are you sure? (y/n)" -n 1 -r

echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
  echo "Releasing $VERSION ..."
  VERSION=$VERSION npm run dist
  echo "Dist $VERSION ..."

  # publish npm
  npm version $VERSION --message "[release] $VERSION"
  if [[ $VERSION =~ "beta" ]]
  then
    npm publish --tag beta
  else
    npm publish
  fi

  # commit
  git add -A
  git commit -m "[build] $VERSION"
  npm version $VERSION --message "[release] $VERSION"
  git push

fi
# nrm use npm

# npm i

# npm run dist