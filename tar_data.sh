#/usr/bin/env bash

set -e
set -x

if [[ ! -e data ]]; then
  echo "There is no data directory to work with"
  exit 1
fi

if [[ ! "$(ls -A data/git/repositories/unfoldingword/*.git)" ]]; then
  echo "There are no repos in data/git/repositories/unfoldingword"
  exit 1
fi 

rm -rf unfoldingword_repos/*.git.tar.gz

for repo in data/git/repositories/unfoldingword/*.git; do tar -czf unfoldingword_repos/$(basename $repo).tar.gz $repo; done

rm -rf data.tar.gz

tar --exclude='data/git/repositories/unfoldingword' -czf data.tar.gz data

cp data/gitea/conf/app.ini ./app.ini

