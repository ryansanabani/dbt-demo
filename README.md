# dbt-demo

This repository is the standart [dbt demo using dbt Core](https://docs.getdbt.com/tutorial/learning-more/getting-started-dbt-core), Google Cloud Platform (GCP), and Big Query.

* GCP
  * Practice creating a BigQuery project and dataset
  * Generating [service account](https://cloud.google.com/endpoints/docs/openapi/service-account-authentication) keyfile credentials
  
* dbt Core
  * Initializing project
  * Configuring database connection in profiles.yml
  * Testing connection and running sample models
  * Organizing logic with {{ref}} to separate cleaning and transforming data
  * Creating generic tests with documentation in `schema.yml` files, return 0 and pass
    * unique, not null values, accepted values, relationships to other models

* Github practice
  * created personal access [token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token) and pushed to remote
