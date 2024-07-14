params.vcf = "/home/ishagupta/nextflow_workflow/vcf_to_csv/nextflow_python/all.vcf.gz"

process VCFtoCSV {
    input:
    path vcf

    output:
    path "${vcf.baseName}.csv"

    script:
    """
    bcftools query -f '%CHROM,%POS,%ID,%REF,%ALT,%INFO/AC,%INFO/DP,%INFO/MQ\n' ${vcf} | sed 's/\\t/,/g' > ${vcf.baseName}.csv
    """
}

workflow {
    vcf_ch = Channel.fromPath(params.vcf)
    VCFtoCSV(vcf_ch)
    VCFtoCSV.out.view()
}
