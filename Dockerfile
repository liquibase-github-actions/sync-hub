# Code generated by protoc-gen-liquibase. DO NOT EDIT.
FROM liquibase/liquibase:4.17.2
COPY sync_hub.sh /entry.sh
ENTRYPOINT ["/entry.sh"]
