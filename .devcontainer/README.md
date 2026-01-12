# Dev Container Setup for Quantum Computing Projects

This dev container provides a complete environment for running both Bronze-Qiskit and IQM quantum computing projects.

## What's Included

- **Python 3.12** (compatible with both Bronze-Qiskit and IQM)
- **Jupyter Lab** (auto-starts on port 8888)
- **All dependencies**:
  - qiskit[visualization]>=1.0
  - qiskit-aer==0.14.0.1
  - iqm-client[qiskit]>=33.0.2
  - matplotlib
  - jupyterlab

## Prerequisites

1. **Docker Desktop** - Download from [docker.com](https://www.docker.com/products/docker-desktop/)
2. **VS Code** - Download from [code.visualstudio.com](https://code.visualstudio.com/)
3. **Dev Containers Extension** - Install from VS Code Extensions marketplace

## How to Use

### First Time Setup

1. Make sure Docker Desktop is running
2. Open this folder in VS Code
3. When prompted, click **"Reopen in Container"**
   - Or press `F1` and select `Dev Containers: Reopen in Container`
4. Wait for the container to build (first time takes 3-5 minutes)

### What Happens Automatically

1. ✅ Python 3.12 environment is created
2. ✅ All packages are installed
3. ✅ Jupyter Lab starts automatically on http://localhost:8888
4. ✅ Port 8888 is forwarded to your local machine

### Working with Notebooks

**Option 1: VS Code Jupyter Extension (Recommended)**
- Just open any `.ipynb` file
- VS Code will automatically connect to the Python kernel
- Run cells directly in VS Code

**Option 2: Jupyter Lab Web Interface**
- Access at http://localhost:8888
- No token required (disabled for convenience)
- Full Jupyter Lab interface

### Checking Jupyter Lab Status

```bash
# View Jupyter Lab logs
cat /tmp/jupyter.log

# Check if Jupyter is running
ps aux | grep jupyter
```

### Stopping/Restarting Jupyter Lab

```bash
# Stop Jupyter Lab
pkill jupyter

# Restart Jupyter Lab
bash .devcontainer/start-jupyter.sh
```

## Project Structure

```
bronze-qiskit/
├── .devcontainer/
│   ├── devcontainer.json       # Dev container configuration
│   ├── start-jupyter.sh        # Jupyter auto-start script
│   └── README.md              # This file
├── quantum-with-qiskit/       # Bronze-Qiskit tutorials (100+ notebooks)
├── IQM/                       # IQM Resonance notebook
├── requirements.txt           # Original Bronze-Qiskit requirements
└── requirements-complete.txt  # Combined requirements for both projects
```

## Troubleshooting

### Jupyter Lab not accessible?
- Check Docker Desktop is running
- Verify port 8888 is forwarded: VS Code → PORTS tab
- Check logs: `cat /tmp/jupyter.log`

### Package installation failed?
- Rebuild container: `F1` → `Dev Containers: Rebuild Container`

### Python version issues?
- Verify Python version: `python --version` (should be 3.12.x)