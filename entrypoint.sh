#!/bin/sh -l

cd ${GITHUB_WORKSPACE}
protoc -I. -Igoogleapis --doc_opt=markdown,$1 --doc_out=doc $(find ondewo -name '*.proto' | sort)
