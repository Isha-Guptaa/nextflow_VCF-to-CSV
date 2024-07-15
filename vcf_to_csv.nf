params.vcf = "/data/isha/Documents/repo/nextflow_VCF-to-CSV/NA12878.haplotypecaller.filtered_VEP.ann.vcf.gz"

process VCFtoCSV {
    input:
    path vcf

    output:
    path "${vcf.baseName}.csv"

    script:
    """
    bcftools query -f '%CHROM,%POS,%ID,%REF,%ALT,%INFO/AC,%INFO/DP,%INFO/MQ\n' ${vcf} -o ${vcf.baseName}.csv
    """
}

workflow {
    vcf_ch = Channel.fromPath(params.vcf)
    VCFtoCSV(vcf_ch)
    VCFtoCSV.out.view()
}
