[![https://www.singularity-hub.org/static/img/hosted-singularity--hub-%23e32929.svg](https://www.singularity-hub.org/static/img/hosted-singularity--hub-%23e32929.svg)](https://singularity-hub.org/collections/4903)

# singularity_playground
This repo maintains the definition files used for building singularity images remotely. Each branch maintains a different environment but they usually have miniconda with python2 or python3 as base. The idea is to have images that are ready to be used and implemented into workflows e.g. [Snakemake](https://snakemake.readthedocs.io/en/stable/) or [Nextflow](https://snakemake.readthedocs.io/en/stable/). To do this all images circumvent activation of environments via activation scripts or command line functions e.g. `conda activate my_env` as those types of solutions are not well supported for images that are activated through workflows. Instead all necessary tool dependencies are installed into the base environment of the singularity image. 

## Building
Before the doing anything make sure singularity is installed and that you have privileges to run singularity as root.
To build the image type the following.

```bash
git clone --branch branch_name https://github.com/AroArz/singularity_playground 
cd singularity_playground
sudo singularity build branch.sif Singularity.branch.def
```

## Pulling
You can also pull images from [singularity hub](https://singularity-hub.org/collections/4903) by entering the following into the command line.

```bash
singularity pull shub://AroArz/singularity_playground:branch
```

## Testing
You can test the image after pulling by shelling or running a command. The following shows an example for the Graphlan branch.

Using shell:
```bash
singularity shell graphlan.sif
graphlan.py --help
```

Using run:
```bash
singularity run graphlan.sif graphlan.py --help
```
