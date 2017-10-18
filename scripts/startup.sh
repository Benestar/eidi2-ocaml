#!/usr/bin/env bash

# Close other jupyter instances
jupyter notebook stop 8888

cat << 'EOF'
               ,,__
     ..  ..   / o._)   ___   ____                _ 
    /--'/--\  \-'||   / _ \ / ___|__ _ _ __ ___ | |
   /        \_/ / |  | | | | |   / _` | '_ ` _ \| |
 .'\  \__\  __.'.'   | |_| | |__| (_| | | | | | | |
   )\ |  )\ |         \___/ \____\__,_|_| |_| |_|_|
  // \\ // \\
 ||_  \\|_  \\_    -- two humps are better than one
 '--' '--'' '--'

Starting Jupyter - You can reach the server at http://192.168.33.10:8888/

To terminate the server, execute `vagrant suspend` in this command line.
EOF

# Serve jupyter from vm
nohup jupyter notebook --no-browser --ip=* \
    --NotebookApp.token='' --NotebookApp.notebook_dir='~/notebooks' \
    >> /vagrant/scripts/jupyter.log 2>&1 &
