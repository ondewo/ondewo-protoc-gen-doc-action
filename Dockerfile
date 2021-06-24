FROM pseudomuto/protoc-gen-doc

RUN printenv
COPY resources/custom-markdown.tmpl ${GITHUB_WORKSPACE}/resources/custom-markdown.tmpl
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
# CMD
