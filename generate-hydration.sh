#!/bin/sh
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

#
cp $DIR/.hydration/server-rollup.config.js $DIR/rollup.config.js
npm run build
cat $DIR/.hydration/header-to-css.html > $DIR/public/index.html
node $DIR/.hydration/server-side-build.js css >> $DIR/public/index.html
cat $DIR/.hydration/header-to-body.html >> $DIR/public/index.html
node $DIR/.hydration/server-side-build.js html >> $DIR/public/index.html
cat $DIR/.hydration/footer.html >> $DIR/public/index.html


cp $DIR/.hydration/client-rollup.config.js $DIR/rollup.config.js
npm run build
