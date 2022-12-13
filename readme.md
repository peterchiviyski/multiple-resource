# Creating Terraform Resources in Multiple Regions example


It is configured to generates resources in multiple locations

# Prerequisite
You need to have [Terraform CLI](https://learn.hashicorp.com/tutorials/terraform/install-cli) >= 0.12 installed on you workstation. 

# How to use the repo

* Clone this repo locally to a folder of your choice
```
git clone https://github.com/peterchiviyski/multiple-resource.git
```

Declare a provider for the alternate region. You’ll now have two providers. The original one for your primary region, and the new one for your alternate.
Give the new provider an alias.
Declare resources that reference the new alias in their provider attribute with the format aws.[alias]. This also works for data sources, which is handy for dynamically interpolating region names into resource properties like their name.




* initialize Terraform  
```
terraform init
```

* Check the plan in order to see the changes which terraform is going to made.
```
terraform plan
```

* Apply the plan which terraform is going to execute based on our configuration (main.tf)
```
terraform apply
```
