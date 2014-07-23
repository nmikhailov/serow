#!/bin/sh

# Build REST documentation
mkdir -p api-doc && cd api-doc

# Build docs
npm install -g aglio
aglio -i $TRAVIS_BUILD_DIR/docs/rest.apib -o index.html

### Only for master builds

# Get
git clone http://github.com/serow/serow.github.io site
mkdir -p site/docs/api
cp index.html site/docs/api
cd site

# Configure git
git config user.name $GIT_NAME
git config user.email $GIT_EMAIL
git config credential.helper "store --file=.git/credentials"
echo "https://$GH_TOKEN:@github.com" > .git/credentials

# Commit
git add docs/api
git commit -m 'CI: Automatic REST API doc update'
git push origin master