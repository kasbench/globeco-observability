To install:

```bash
helm install prometheus prometheus-community/prometheus -f values.yaml -n monitor
```


To uninstall:

```bash
helm uninstall prometheus -n monitor    
```