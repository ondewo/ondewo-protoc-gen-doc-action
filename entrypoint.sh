#!/bin/sh -l

OUTDIR=doc
mkdir -p ${OUTDIR}
OUTFILE=${1}.md
protoc -I. -Igoogleapis --doc_opt=/templates/custom-markdown.tmpl,${OUTFILE} --doc_out=${OUTDIR} $(find ondewo -name '*.proto' | sort)
