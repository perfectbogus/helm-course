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
