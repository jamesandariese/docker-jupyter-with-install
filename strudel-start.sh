#!/bin/bash

pip install $PIP_INSTALL

exec /usr/local/bin/start-notebook.sh
