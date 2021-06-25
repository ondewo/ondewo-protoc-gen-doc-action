#!/bin/sh -l

OUTDIR=doc
mkdir -p ${OUTDIR}

# for each specified output format
for format in $(echo ${1} | tr "," "\n"); do
  if [ "${format}" = "html" ]; then
    # copy resources for html format
    cp -r /resources/html/* ${OUTDIR}
  fi

  # generate the documentation in given format
  protoc \
    -I. \
    -Igoogleapis \
    --doc_opt=/resources/templates/${format}.tmpl,${2}.${format} \
    --doc_out=${OUTDIR} \
    $(find -name '*.proto' | sort)
done
