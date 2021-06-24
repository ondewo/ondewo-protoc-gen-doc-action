FROM pseudomuto/protoc-gen-doc

# COPY resources/custom-markdown.tmpl resources/custom-markdown.tmpl

# CMD protoc -I. -Igoogleapis --doc_opt=markdown,nlu.md --doc_out=doc $(find ondewo -name '*.proto' | sort)
CMD ls ${$GITHUB_WORKSPACE}
