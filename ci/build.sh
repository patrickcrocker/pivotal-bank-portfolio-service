#!/bin/bash

set -e

VERSION=`cat version/number`

pushd portfolio-service
  ./gradlew -PversionNumber=$VERSION clean assemble
popd

cp portfolio-service/build/libs/portfolio-$VERSION.jar build/.
