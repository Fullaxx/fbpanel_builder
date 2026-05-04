# fbpanel_builder
A docker image specifically created to build fbpanel

## Pull the Images or Build them locally
### Ubuntu Images
```
docker pull ghcr.io/fullaxx/fbpanel_builder:resolute
docker pull ghcr.io/fullaxx/fbpanel_builder:noble
docker pull ghcr.io/fullaxx/fbpanel_builder:jammy
docker pull ghcr.io/fullaxx/fbpanel_builder:focal
```
### Debian Images
```
docker pull ghcr.io/fullaxx/fbpanel_builder:trixie
docker pull ghcr.io/fullaxx/fbpanel_builder:bookworm
docker pull ghcr.io/fullaxx/fbpanel_builder:bullseye
```
### Fedora Images
```
docker pull ghcr.io/fullaxx/fbpanel_builder:fedora43
docker pull ghcr.io/fullaxx/fbpanel_builder:fedora42
docker pull ghcr.io/fullaxx/fbpanel_builder:fedora41
docker pull ghcr.io/fullaxx/fbpanel_builder:fedora40
```
### Build locally
```
docker build -f Dockerfile.resolute -t ghcr.io/fullaxx/fbpanel_builder:resolute .
docker build -f Dockerfile.noble    -t ghcr.io/fullaxx/fbpanel_builder:noble .
docker build -f Dockerfile.jammy    -t ghcr.io/fullaxx/fbpanel_builder:jammy .
docker build -f Dockerfile.focal    -t ghcr.io/fullaxx/fbpanel_builder:focal .
docker build -f Dockerfile.trixie   -t ghcr.io/fullaxx/fbpanel_builder:trixie .
docker build -f Dockerfile.bookworm -t ghcr.io/fullaxx/fbpanel_builder:bookworm .
docker build -f Dockerfile.bullseye -t ghcr.io/fullaxx/fbpanel_builder:bullseye .
docker build -f Dockerfile.fedora43 -t ghcr.io/fullaxx/fbpanel_builder:fedora43 .
docker build -f Dockerfile.fedora42 -t ghcr.io/fullaxx/fbpanel_builder:fedora42 .
docker build -f Dockerfile.fedora41 -t ghcr.io/fullaxx/fbpanel_builder:fedora41 .
docker build -f Dockerfile.fedora40 -t ghcr.io/fullaxx/fbpanel_builder:fedora40 .
```
