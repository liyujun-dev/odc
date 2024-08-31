# odc

Run [OWASP dependency-check](https://github.com/jeremylong/DependencyCheck) **offline**

## Usage

```bash
docker run --rm \
  -e user=$USER \
  -u `id -u $USER`:`id -g $USER` \
  -v `pwd`:/src:z \
  ghcr.io/liyujun-dev/odc \
  --scan /src \
  --format "ALL" \
  --out /src/reports
```
