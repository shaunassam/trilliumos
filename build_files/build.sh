#!/bin/bash

set -ouex pipefail

# Set logo and name details
/ctx/base/00-image-info.sh

# Enable repos
/ctx/base/01-pre-setup.sh

# Install packages
/ctx/base/02-system-packages.sh

# Install Flatpaks
/ctx/base/03-flatpaks.sh

#### Apply Overrides 
/ctx/base/08-override-schemas.sh

#### Clean up
/ctx/base/09-finalize-cleanup.sh