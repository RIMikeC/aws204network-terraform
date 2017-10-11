This repository stores the terrraform for the 10.204/12 network.


### Guidance material

- Hashicorp's [best practices](https://github.com/hashicorp/best-practices/tree/master/terraform)

- Organisation Module Hirarchy [here](https://github.com/hashicorp/terraform/issues/3838)

### Repo layout
- The modules folder contains the reuseable code that defines resources
- The providers folder contains the code that calls the modules, using variables to differentiate between enviroments and projects

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

### /providers/aws

This contains one folder per project. If you want to test some code, then put it in a project/test subfolder.
Here it will be planned by make, but not applied.


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
