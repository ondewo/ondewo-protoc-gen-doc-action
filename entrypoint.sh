#!/bin/sh -l

FORMAT=${1}
OUTFILE=${2}.${FORMAT}
OUTDIR=doc
mkdir -p ${OUTDIR}

protoc -I. -Igoogleapis --doc_opt=/templates/${FORMAT}.tmpl,${OUTFILE} --doc_out=${OUTDIR} $(find ondewo -name '*.proto' | sort)
