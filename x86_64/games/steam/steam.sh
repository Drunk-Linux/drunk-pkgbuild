#!/bin/bash

# give sbin tools as steam uses lspci and etc
export PATH=$PATH:/usr/sbin:/sbin

# Start steam itself now
exec /usr/lib/steam/steam "$@"
