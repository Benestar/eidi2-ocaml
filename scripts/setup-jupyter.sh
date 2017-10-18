#!/usr/bin/env bash

# Install jupyter using pip
sudo pip3 install --upgrade pip
sudo pip3 install jupyter
sudo chown vagrant:vagrant -R ~/.local

# Install the ocaml kernel
opam install -y jupyter
