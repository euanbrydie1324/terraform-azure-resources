# Azure Resource Deployment

## Instructions

### Azure set-up

Make sure subscriptions have been created for dev, stg and prd environments with a designated service principal, 

In main.tf provide the correct values for client_id, client_secret and tenant_id. 

In dev.tfvars, stg.tfvars and prd.tfvars add the required subscription id's

### Initialize Terraform and Create Workspaces

1. Initialize Terraform:
    ```sh
    terraform init
    ```

2. Create workspaces for each environment:
    ```sh
    terraform workspace new dev
    terraform workspace new stg
    terraform workspace new prd
    ```

### Deploy to Different Environments

Select the appropriate workspace and apply the configuration with the corresponding variable file.

#### For Development:
1. Select the `dev` workspace:
    ```sh
    terraform workspace select dev
    ```

2. Apply the configuration:
    ```sh
    terraform apply -var-file="dev.tfvars"
    ```

#### For Staging:
1. Select the `stg` workspace:
    ```sh
    terraform workspace select stg
    ```

2. Apply the configuration:
    ```sh
    terraform apply -var-file="stg.tfvars"
    ```

#### For Production:
1. Select the `prd` workspace:
    ```sh
    terraform workspace select prd
    ```

2. Apply the configuration:
    ```sh
    terraform apply -var-file="prd.tfvars"
    ```

## Notes

- Ensure that you have the correct permissions and credentials set up for deploying resources to Azure.
- Review the variable files (`dev.tfvars`, `stg.tfvars`, `prd.tfvars`) to ensure they contain the correct values for each environment.
- Always run `terraform plan` before `terraform apply` to review the changes that will be made.

For more information, refer to the [Terraform documentation](https://www.terraform.io/docs/index.html).