# helm-course
This project was taken from:
https://helm.sh/docs/chart_template_guide/getting_started/

```shell
# Create chart
helm create mychart

# install chart
helm install full-coral ./mychart
# retrieve the release
helm get manifest full-coral

helm install --debug --dry-run demo2 ./mychart

# use the Values.favoriteDrink
helm install demo3 ./mychart --dry-run --debug

helm install demo ./mychart --dry-run --debug --set favoriteDrink=slurm

# Delete a default key
helm install stable/drupal --set image=my-registry/drupal:0.1.0 --set livenessProbe.exec.command=[cat,docroot/CHANGELOG.txt] --set livenessProbe.httpGet=null

# Template Functions and Pipelines
# Template Directive {{}}



```

Built-in Objects:
Release:
    Name
    Namespace
    IsUpgrade
    IsInstall
    Revision
    Service
Values
Files
    Get
    GetBytes
    Glob
    Lines
    AsSecrets
    AsConfig
Capabilities:
    APIVersions
    APIVersions.Has
    KubeVersion
    KubeVersion.Major
    KubeVersion.Minor
    HelmVersion
    GitCommit
    GitTreeState
    GoVersion
Template:
    Name
    BasePath
