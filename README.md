# nextflow_VCF-to-CSV
 NEXTFLOW PIPELINE (VCF-to-CSV) USING CONDA FOR DEPENDENCY MANAGEMENT


PRE-REQUISITE:
1)Nextflow requires Bash 3.2 (or later) and Java 11 (or later, up to 21) to be installed.
2)Download the executable package in your terminal window:

wget -qO- https: #get.nextflow.io | bash

or

curl -s https: #get.nextflow.io | bash

3)Make the binary executable:

chmod +x nextflow

4)To add Nextflow to your system PATH:

export PATH="/path/to/nextflow:$PATH"

E.g., export PATH="/home/ishagupta/nextflow/:$PATH"

5)Reload the shell configuration file by running:

source ~/.bashrc

6)Ensure installation:

nextflow -version

7)Create env.yaml file with content:
<br>

![image](https://github.com/user-attachments/assets/dd02b513-d9ff-4388-8aa6-6d3d6fc25c7c)

<br>

9)Given the env.yml recipe file, the environment can be created using the command shown below:

conda env create --file env.yaml

10)Check if the environment was created successfully with the command shown below:

conda env list

<br>

![image](https://github.com/user-attachments/assets/5e0b9f84-d05f-4744-9863-1cfdb48e74ce)

<br>

11)Run:

nextflow run vcf_to_csv.nf -with-conda /home/ishagupta/anaconda3/envs/vcftocsv

<br>

![image](https://github.com/user-attachments/assets/9010b7b9-d224-481c-8209-74536988c818)

<br>
