configfile: "config.yaml"

rule flye:
    input:
    "data/{sample}.fastq"
    output:
    "assembly/{sample}_assembly/"
    threads: 12
    shell:
    "flye --nano-raw {input} --out-dir {output} --threads {threads}"

rule medaka:
    input:
    "assembly/{sample}_assembly/assembly.fasta"
    output:
    "assembly/{sample}_assembly/medaka_polish/assembly.fasta"
    threads:
    shell:
