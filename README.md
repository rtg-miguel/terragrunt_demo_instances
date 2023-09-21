# Buckets module

Contains these files:
- `config_example.yaml` - what a configuration file for this module could look like. You can use it to test the module locally with:
```shell
terraform plan -var configuration_file=config_example.yaml
```
- `locals.tf` - reads the yaml file that holds the configuration
- `main.tf`
- `variables.tf`
