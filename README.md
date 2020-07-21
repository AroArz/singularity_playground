# singularity_playground
This is a singularity image with miniconda3 as base. It will install snakemake and s3cmd appropriately. To change host base and host bucket please edit snakemake.def. To apply a different snakefile make changes to Snakefile. When changes have been made to respective files, please build a new to incorporate respective changes.


## Building
Before the doing anything make sure singularity is installed and that you have privileges to run singularity as root.
To build the image type the following.

```bash
git clone https://github.com/AroArz/singularity_playground 
cd singularity_playground
cp ~/.s3cfg s3cfg
sudo singularity build snakemake.sif snakemake.def
```

## Testing
```bash
singularity run snakemake.sif ### this is a simple test that will print contents in s3://ctmr-test
singularity run snakemake.sif snakemake --dryrun ### this is a simple test that will perform a dryrun of the snakefile
```
