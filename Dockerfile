FROM pseudomuto/protoc-gen-doc

COPY templates/custom-markdown.tmpl /templates/custom-markdown.tmpl
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
# CMD
