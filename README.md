# Liquibase Sync Hub Action
Official GitHub Action to run Liquibase Sync Hub in your GitHub Action Workflow. For more information on how sync hub works visit the [Official Liquibase Documentation](https://docs.liquibase.com/commands/home.html).
## Sync Hub
Synchronize the local DatabaseChangeLog table with Liquibase Hub
## Usage
```yaml
steps:
- uses: actions/checkout@v3
- uses: liquibase-github-actions/sync-hub@v4.17.1
  with:
    # The JDBC database connection URL
    # string
    # Required
    url: ""

    # The root changelog
    # string
    # Optional
    changelogFile: ""

    # The default catalog name to use for the database connection
    # string
    # Optional
    defaultCatalogName: ""

    # The default schema name to use for the database connection
    # string
    # Optional
    defaultSchemaName: ""

    # The JDBC driver class
    # string
    # Optional
    driver: ""

    # The JDBC driver properties file
    # string
    # Optional
    driverPropertiesFile: ""

    # Used to identify the specific Connection in which to record or extract data at Liquibase Hub. Available in your Liquibase Hub Project at https://hub.liquibase.com.
    # string
    # Optional
    hubConnectionId: ""

    # Used to identify the specific Project in which to record or extract data at Liquibase Hub. Available in your Liquibase Hub account at https://hub.liquibase.com.
    # string
    # Optional
    hubProjectId: ""

    # Password to use to connect to the database
    # string
    # Optional
    password: ""

    # Username to use to connect to the database
    # string
    # Optional
    username: ""

```

### Secrets
It is a good practice to protect your database credentials with [GitHub Secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets)

## Optional Liquibase Global Inputs
The liquibase sync hub action accepts all valid liquibase global options as optional parameters. A full list is available in the official [Liquibase Documentation](https://docs.liquibase.com/parameters/command-parameters.html).

### Example
```yaml
steps:
  - uses: actions/checkout@v3
  - uses: liquibase-github-actions/sync-hub@v4.17.1
    with:
      url: ""
      headless: true
      licenseKey: ${{ secrets.LIQUIBASE_LICENSE_KEY }}
      logLevel: INFO
```

## Feedback and Issues
This action is automatically generated. Please submit all feedback and issues with the [generator repository](https://github.com/liquibase/github-action-generator/issues).
