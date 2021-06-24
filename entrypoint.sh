#!/bin/sh -l

cd ${GITHUB_WORKSPACE}
OUTDIR=doc
mkdir -p ${OUTDIR}
OUTFILE=${1}.md
protoc -I. -Igoogleapis --doc_opt=markdown,${OUTFILE} --doc_out=${OUTDIR} $(find ondewo -name '*.proto' | sort)
