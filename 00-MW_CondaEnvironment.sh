#!/bin/bash


################################################################################
# 2025-01 code
# Creates the Haase environment

conda create -n 2025_Haase
conda activate 2025_Haase
conda install -c conda-forge -c bioconda pyclesperanto-prototype numpy scikit-image pandas seaborn stackview
    # # pyclesperanto offers GPU support.
conda install -c conda-forge apoc-backend
    # https://github.com/haesleinhuepf/apoc
conda install -c conda-forge -c bioconda pooch
    # turned out to be necessary to load available online example datasets
conda install jupyter
    # to run jupyter notebooks

################################################################################
# OLD CODE (used to install the environment at older laptop)

# List current conda environments
conda env list

### Didn't work
# # Create a conda environment 
# conda create -n 2025_Haase
# # Install packages from 1st notebook (00_trailer.ipynb)
# conda install -c conda-forge -c bioconda numpy scikit-image pandas seaborn apoc stackview
# # Install mamba version 1.5.9 (due to bug)
# # https://github.com/mamba-org/mamba/issues/3661
# # I already had mamba installed, though, using
# # conda install -c conda-forge mamba
# conda install -c conda-forge mamba=1.5.9
# mamba install -c conda-forge pyclesperanto-prototype

### 2nd attempt
conda create -n 2025_Haase2
conda install -c conda-forge mamba=1.5.9
mamba install -c conda-forge pyclesperanto-prototype
conda install -c conda-forge -c bioconda numpy scikit-image pandas seaborn apoc stackview

# To get pyclesperanto-prototype to work, I needed to run additional commands to get openCL to work.
# Original error message:
# import pyclesperanto_prototype
# (..)
# pyopencl._cl.LogicError: clGetPlatformIDs failed: PLATFORM_NOT_FOUND_KHR
#
# Fix:
mamba install -c conda-forge ocl_icd_wrapper_apple
# 
# Based onthe section “Troubleshooting: Graphics cards drivers” at https://github.com/clEsperanto/pyclesperanto_prototype. 
# See also: /Users/m.wehrens/Documents/PROJECTS/_LABJOURNALS/Labjournal_TECH_openCL_pyclesperanto_prototype.docx

# Check installation graphics device also:
cle.get_device()

# Then, following introduction/readme, install Napari:
conda install -c conda-forge python=3.9 devbio-napari
    # This takes quite some time to resolve...

# I managed to install napari the following way:
 conda install -c conda-forge napari # probably redundant
 mamba install devbio-napari -c conda-forge
 
 

