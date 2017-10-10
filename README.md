

Modules are stored in this repo and may be used in service repos to deploy code.

### Guidance material

- Hashicorp's [best practices](https://github.com/hashicorp/best-practices/tree/master/terraform)

- Hashicorps reccommendation on how to manage [multiple environments ](https://atlas.hashicorp.com/help/intro/use-cases/multiple-environments)

- Organisation Module Hirarchy [here](https://github.com/hashicorp/terraform/issues/3838)

### Repo layout
- The modules folder contains reused modules
- The providers folder contains environment specific terraform code that should only contain modules if used more than once.

### How to

#### Modifying an environment

1. Navigate to the aws account (environment) you want to apply changes to
    - e.g providers/aws/dev/
2. Run ```terraform init``` to get the modules and configure the remote state
3. Run ```terraform plan``` to plan the changes, note what is changing and be sure you want to maken those changes
4. Run ```terraform apply``` to apply the changes. 

#### Modifying modules

Ideally before you apply changes, you will test the modules in the test account.
This is highlighted in the Terraform best practices documentation.

# Folder structure


### /modules

Put your modules in here.

### /modules/test

Module test folders should be in here

### /providers/aws

Set up your environment aws accounts in here.

```
.
├── README.md
├── circle.yml
├── modules
│   ├── management
│   │   └── main.tf
│   ├── product_module
│   │   └── main.tf
│   └── test
│       ├── management
│       │   └── main.tf
│       └── product_module
│           └── main.tf
└── providers
    └── aws
        ├── dev
        │   ├── config
        │   │   └── ci_override.tf
        │   └── main.tf
        ├── management
        │   ├── config
        │   │   └── ci_override.tf
        │   └── main.tf
        ├── prod
        │   ├── config
        │   │   └── ci_override.tf
        │   └── main.tf
        └── staging
            ├── config
            │   └── ci_override.tf
            └── main.tf



```
