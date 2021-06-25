FROM pseudomuto/protoc-gen-doc

COPY resources /resources
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
