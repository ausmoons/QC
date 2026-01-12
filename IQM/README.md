# IQM Quantum Computing

This folder contains examples for running quantum circuits on IQM's real quantum hardware using IQM Resonance.

## Quick Start

### Using Docker (Recommended)

The dev container automatically sets up everything you need:

1. **Start Docker Desktop**
2. **Open in VS Code** and select "Reopen in Container"
3. **Open** `qiskit_sample_notebook.ipynb`
4. **Run the cells** - you'll be prompted to enter your IQM Resonance API token
5. **Done!** Your circuit will run on IQM Garnet quantum computer

### Getting Your API Token

1. Go to [IQM Resonance](https://resonance.meetiqm.com/)
2. Log in to your account
3. Open the account drawer
4. Copy your API token
5. Paste it when prompted in the notebook

## Requirements

Already installed via Docker:
- Python 3.12
- iqm-client[qiskit]>=33.0.2
- qiskit[visualization]
- matplotlib

## Supported Quantum Computers

- **IQM Garnet** - Default in the example
- Check [IQM Resonance](https://resonance.meetiqm.com/) for available devices
