<h1 align="center">
  <a href="https://github.com/jtmb">
    <img src="https://m.media-amazon.com/images/I/81lEZsk5bZL._AC_UF1000,1000_QL80_.jpg" alt="Logo" width="125" height="125">
  </a>
</h1>

<div align="center">
  <b>ARR-STACK 4 Dummies</b> - a beginner driven docker compose configuration designed to deploy a set of popular media management tools.
  <br />
  <br />
  <a href="https://github.com/jtmb/retropie/issues/new?assignees=&labels=bug&title=bug%3A+">Report a Bug</a>
</div>
<br>
<details open="open">
<summary>Table of Contents</summary>


- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started) 
- [Environment Variables Explained](#environment-variables-explained)
- [Contributing](#contributing)
- [License](#license)

</details>
<br>

---
<br>

## Prerequisites
- Docker installed on your system.

### Getting Started

Make sure you are in your ``$HOME`` directory:

```shell 
cd $HOME
```

Download this repository to your home directory :


```shell
git clone https://github.com/jtmb/arr-stack-4-dummies.git
```

cd to the directrory of the compose file ``nzb-get`` or ``torrents`` :

```shell
cd $HOME/arr-stack-4-dummies/nzb-get
```

***Don't forget to*** **[edit](how-to/edit-env-files.md)** ***your ``.env`` file and set vars before running ``docker compose up -d``***

***Also see:*** **[How to edit docker volume mounts](how-to/add-media-volume-mounts.md)**

Run docker compose stack in detached mode :
```shell
docker compose up -d
```

## Environment Variables explained
```yml
COMPOSE_PROJECT_NAME=media-stack
```  
The name of your stack in docker.

```yml
VOLUME_PATH=/mnt/container-program-files
```  
The path where your container volume mounts whill be stored. 

```yml
VPN_SERVICE_PROVIDER=nord
OPENVPN_USER=nord_user
OPENVPN_PASSWORD=nord_password
SERVER_REGIONS=canada
VPN_TYPE=openvpn
```
Pass in your service provider credentials and VPN type in GlueTun.     
***You only need to worry about these if you deployed ``torrents``.***  
See [here](https://github.com/qdm12/gluetun-wiki/tree/main/setup/providers) for a list of vpn providers and their respective docker compose deployments/enviorment variables.


## Contributing

First off, thanks for taking the time to contribute! Contributions are what makes the open-source community such an amazing place to learn, inspire, and create. Any contributions you make will benefit everybody else and are **greatly appreciated**.

Please try to create bug reports that are:

- _Reproducible._ Include steps to reproduce the problem.
- _Specific._ Include as much detail as possible: which version, what environment, etc.
- _Unique._ Do not duplicate existing opened issues.
- _Scoped to a Single Bug._ One bug per report.

## License

This project is licensed under the **GNU GENERAL PUBLIC LICENSE v3**. Feel free to edit and distribute this template as you like.

See [LICENSE](LICENSE) for more information. 

