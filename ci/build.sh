#!/bin/bash

set -e

VERSION=`cat version/number`

pushd portfolio
  ./gradlew -PversionNumber=$VERSION clean assemble
popd

cp portfolio/build/libs/portfolio-$VERSION.jar build/.
