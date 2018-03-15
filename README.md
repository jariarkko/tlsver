
# TLS Version Detector

This tool retrieves the (highest) available TLS version on the given destination.

This program is a part of the Architecture Tester (archtester) collection of tools. See https://github.com/jariarkko/archtester and https://github.com/jariarkko/tlsver. The tool has been written by Jari Arkko at Ericsson Research.

# Installation

The easiest installation method is to retrieve the software from GitHub. There is one dependency on the hopping program, which needs to fetched and compiled first. These commands should suffice:

    git clone https://github.com/jariarkko/tlsver.git
    cd tlsver
    sudo make all install
    
  
# Usage

The basic usage is

    tlsver [options] [destination]

If left unspecified, the destination is www.google.com. The options are:

    -version

Outputs the version number.

    -debug
    -no-debug

Whether to output debug information or not.

    -quiet
    -not-quiet

Whether to silently ignore all errors etc, and only output the result. Errors will set the the exit code to an error, and some errors may not allow a result to be printed at all. Otherwise, the result will be "unknown" if the version cannot be determined.

    -draft
    -rfc

Whether to output information about exact draft version supported or not.

    -port p

Set the port to p. The default is 80.
