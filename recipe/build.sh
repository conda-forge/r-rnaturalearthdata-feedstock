#!/bin/bash

set -o errexit -o pipefail

export DISABLE_AUTOBREW=1
mv DESCRIPTION DESCRIPTION.old
grep -va '^Priority: ' DESCRIPTION.old > DESCRIPTION
${R} CMD INSTALL --build .
