#!/bin/bash
git clone https://github.com/erikaheidi/yamldocs.git
cd yamldocs
composer install
ln -s /app/yamldocs/bin/yamldocs /bin/yamldocs