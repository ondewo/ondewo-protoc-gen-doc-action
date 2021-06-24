FROM pseudomuto/protoc-gen-doc

# COPY resources/custom-markdown.tmpl resources/custom-markdown.tmpl
COPY entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
# CMD protoc -I. -Igoogleapis --doc_opt=markdown,nlu.md --doc_out=doc $(find ondewo -name '*.proto' | sort)
