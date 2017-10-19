#!/usr/bin/env bash

# Install jupyter using pip
sudo pip3 install --upgrade pip
sudo pip3 install jupyter

# Install the ocaml kernel
opam install -y jupyter

# Fix ownership of folder
sudo chown vagrant:vagrant -R ~/.local
