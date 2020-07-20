# singularity_playground

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
sing run snakemake.sif ### this is a simple test that will print contents in s3://ctmr-test
sing run snakemake.sif snakemake --dryrun ### this is a simple test that will perform a dryrun of the snakefile
```
