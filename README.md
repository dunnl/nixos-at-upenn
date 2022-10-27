# nixos-at-upenn

NixOS modules necessary for Penn life. Desired modules to be included here:

- Support for connecting to Wifi
- Support for using the University VPN
- ???

## SecureW2_JoinNow

[SecureW2](https://www.securew2.com/ "SecureW2 website") is a network
management service used by a lot of universities including Penn. The
simplest way to join the wireless network at Penn from a *nix machine
is to join the dedicated "Connect to Penn" network, which prompts the
user to download and execute a bash script named
`SecureW2_JoinNow.run`. This script extracts an embedded tarball,
which yields a set of Python modules---executing the `main.py` module
will configure the user's machine to connect to the wireless network.
Sadly, this script expects the user to have Python installed, and
furthermore expects the machine to use to Linux [Filesystem Hierarchy
Standard](https://refspecs.linuxfoundation.org/FHS_3.0/fhs/index.html). To
execute this script, run it from within the nix shell at
`SecureW2_JoinNow/shell.nix`. (The script itself must be downloaded
from Penn's campus.)
