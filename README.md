# Kubernetes configs for canonical websites

## WIP

An script to generate new project configurations and qa will be added soon.

### Generate YAML files for a new site

Production:

``` bash
# E.g. for canonical.com
helm template -f sites/canonical-com.yaml ./charts/production | microk8s.kubectl apply -f -
```

Staging:
``` bash
# E.g. for canonical.com
helm template -f sites/canonical-com.yaml ./charts/staging | microk8s.kubectl apply -f -
```

### Apply kubernetes manifests

Run local QA:
``` bash
# E.g. for canonical.com
helm template -f sites/canonical-com.yaml -f qa-overrides.yaml ./charts/production | microk8s.kubectl apply -f -
```

Deploy apply:
``` bash
# E.g. for canonical.com
microk8s.kubectl apply --recursive --filename manifests/canonical/production
```
