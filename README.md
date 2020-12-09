[![https://www.singularity-hub.org/static/img/hosted-singularity--hub-%23e32929.svg](https://www.singularity-hub.org/static/img/hosted-singularity--hub-%23e32929.svg)](https://singularity-hub.org/collections/4903)

# singularity_playground
This is a singularity image with miniconda3 as base. It will install MetaPhlAn3 and HUMAnN3 appropriately. 

## Building
Before the doing anything make sure singularity is installed and that you have privileges to run singularity as root.
To build the image type the following.

```bash
git clone https://github.com/AroArz/singularity_playground 
cd singularity_playground
sudo singularity build biobakery.sif biobakery.def
```

## Testing
```bash
singularity run snakemake.sif ### this is a simple test that will print contents in s3://ctmr-test
singularity run snakemake.sif snakemake --dryrun ### this is a simple test that will perform a dryrun of the snakefile
```
