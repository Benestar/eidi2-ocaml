#!/usr/bin/env bash

# Setup OPAM as described on the official website, cf. https://opam.ocaml.org/doc/Install.html
wget https://raw.github.com/ocaml/opam/master/shell/opam_installer.sh -O - | sudo sh -s /usr/local/bin

# Init opam
opam init -a -y --comp 4.04.2

cat > ~/.bashrc <<EOF
eval `opam config env`
EOF

# Configure an .ocamlinit
cat > ~/.ocamlinit <<EOF
#use "topfind";;
#thread;;
#camlp4o;;
EOF
