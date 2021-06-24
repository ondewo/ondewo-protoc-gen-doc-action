FROM pseudomuto/protoc-gen-doc

COPY templates /templates
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
# CMD
