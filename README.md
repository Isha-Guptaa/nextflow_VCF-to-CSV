# nextflow_VCF-to-CSV
 NEXTFLOW PIPELINE (VCF-to-CSV) USING CONDA FOR DEPENDENCY MANAGEMENT


# PRE-REQUISITE:
1)Nextflow requires Bash 3.2 (or later)
<br>
2)Java 11 (or later, up to 21) to be installed.
<br>
# Input:

Germeline VCF : https://nf-co.re/sarek/3.4.2/results/sarek/results-b5b766d3b4ac89864f2fa07441cdc8844e70a79e/test_full_germline_aws/annotation/haplotypecaller/NA12878/?file=NA12878.haplotypecaller.filtered_VEP.ann.vcf.gz

(file: NA12878.haplotypecaller.filtered_VEP.ann.vcf.gz)

# steps:
1)Download the executable package in your terminal window:

wget -qO- https: #get.nextflow.io | bash

or

curl -s https: #get.nextflow.io | bash

2)Make the binary executable:

chmod +x nextflow

3)To add Nextflow to your system PATH:

export PATH="/path/to/nextflow:$PATH"

E.g., export PATH="/home/ishagupta/nextflow/:$PATH"

4)Reload the shell configuration file by running:

source ~/.bashrc

5)Ensure installation:

nextflow -version

6)Create env.yaml file with content:
<br>

![image](https://github.com/user-attachments/assets/dd02b513-d9ff-4388-8aa6-6d3d6fc25c7c)

<br>

7)Given the env.yml recipe file, the environment can be created using the command shown below:

conda env create --file env.yaml

8)Check if the environment was created successfully with the command shown below:

conda env list

<br>

![image](https://github.com/user-attachments/assets/5e0b9f84-d05f-4744-9863-1cfdb48e74ce)

<br>

9)Run:

nextflow run vcf_to_csv.nf -with-conda /home/ishagupta/anaconda3/envs/vcftocsv

<br>

![image](https://github.com/user-attachments/assets/9010b7b9-d224-481c-8209-74536988c818)

<br>
