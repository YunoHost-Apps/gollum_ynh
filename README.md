# Gollum for Yunohost

[![Install gollum with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=gollum)

A simple, Git-powered wiki with a sweet API and local frontend.

**[Checkout the official Gollum repository](https://github.com/gollum/gollum/)**

This app is inside a [Docker image](https://hub.docker.com/r/gollumorg/gollum).

## Forking an external git repo

This installer only does a `git init` in `/home/yunohost.docker/$YOUR_APP_NAME_HERE/wiki` (replace `$YOUR_APP_NAME_HERE` by the name you chose when installing this app).
To use an existing Git repository as your wiki source, you can do :

```bash
cd /home/yunohost.docker/$YOUR_APP_NAME_HERE
rm wiki/.git
git clone $YOUR_GIT_REMOTE_URL wiki
```

**Don't forget to replace `$YOUR_APP_NAME_HERE` by the name you chose when installing this app and `$YOUR_GIT_REMOTE_URL` with your actual URL for the Git repo you want to clone).**

---

_It was generated with [DockerApp Yunohost](https://github.com/aymhce/dockerappmodel_ynh/)_
