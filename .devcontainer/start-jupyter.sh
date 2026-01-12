#!/bin/bash

# Start Jupyter Lab in the background
nohup jupyter lab --ip=0.0.0.0 --port=8888 --no-browser --allow-root --NotebookApp.token='' --NotebookApp.password='' > /tmp/jupyter.log 2>&1 &

echo "Jupyter Lab started on port 8888"
echo "Access it at: http://localhost:8888"
echo "Logs available at: /tmp/jupyter.log"
