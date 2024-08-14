# Updating Volume Mounts for Docker Compose Containers

By default theis ARR suite of software is already configured to set up volume mounts to their prespective config files and to ``/mnt/media`` and ``/mnt/media/downloads``.

 **If you wish to change them;** 

This guide will show you how to update volume mounts for Plex, Radarr, Sonarr, and Bazarr containers in a Docker Compose stack. These are the mount points you will be using to store your media such as movies and TV shows.

 We’ll be adding two new volume mounts:

- `/mnt/media/`
- `/mnt/media/downloads`


## Steps to Update Volume Mounts
### Update enviorment variable in .env

1. **Open the ``.env`` file for the stack you are deploying** ( ``nzb-get`` or ``torrents``)

   Navigate to the directory containing your `.env` file. Open the file using a text editor of your choice. For example, you can use `nano`:

   ```shell
   nano docker-compose.yml
   ```
2. **Update Volume Mounts for media**

   Locate the ``MEDIA_VOLUME_PATH`` variable in your `.env` file. It should look something like this:

   ```yaml
   MEDIA_VOLUME_PATH=/mnt/media
   ```
   and change it to another path of your choosing, using ``WD_1TB`` :

   ```yaml
   MEDIA_VOLUME_PATH=/mnt/WD_1TB/media
   ``` 

3. **Once the above are created you should create folders for your media.**

   *  It is best practice to organize by media type - for example, if your media directory is `/mnt/media`:

      * movies should should go in `/mnt/media/movies`

      * tv shows should go in `/mnt/media/tv`

### Manually hardcode volume mounts in docker-compose.yml

1. **Open Your Docker Compose File**

   Navigate to the directory containing your `docker-compose.yml` file. Open the file using a text editor of your choice. For example, you can use `nano`:

   ```shell
   nano docker-compose.yml
   ```

2. **Update Volume Mounts for Plex**

   Locate the section for the Plex container in your `docker-compose.yml` file. It should look something like this:

   ```yaml
   plex:
     image: plexinc/pms-docker
     volumes:
       - /path/to/plex/config:/config
       - /path/to/media:/data
   ```

   Update the `volumes` section to include the new mounts:

   ```yaml
   plex:
     image: plexinc/pms-docker
     volumes:
       - /path/to/plex/config:/config
       - /mnt/media/tv:/data/tv
       - /mnt/media/movies:/data/movies
   ```

3. **Update Volume Mounts for Radarr**

   Find the Radarr container configuration:

   ```yaml
   radarr:
     image: radarr/radarr
     volumes:
       - /path/to/radarr/config:/config
       - /path/to/media:/movies
   ```

   Add the new mounts:

   ```yaml
   radarr:
     image: radarr/radarr
     volumes:
       - /path/to/radarr/config:/config
       - /mnt/media/movies:/movies
   ```

4. **Update Volume Mounts for Sonarr**

   Locate the Sonarr container configuration:

   ```yaml
   sonarr:
     image: sonarr/sonarr
     volumes:
       - /path/to/sonarr/config:/config
       - /path/to/media:/tv
   ```

   Add the new mounts:

   ```yaml
   sonarr:
     image: sonarr/sonarr
     volumes:
       - /path/to/sonarr/config:/config
       - /mnt/media/tv:/tv
   ```

5. **Update Volume Mounts for Bazarr**

   Find the Bazarr container configuration:

   ```yaml
   bazarr:
     image: bazarr/bazarr
     volumes:
       - /path/to/bazarr/config:/config
       - /path/to/media:/media
   ```

   Add the new mounts:

   ```yaml
   bazarr:
     image: bazarr/bazarr
     volumes:
       - /path/to/bazarr/config:/config
       - /mnt/media/tv:/media/tv
       - /mnt/media/movies:/media/movies
   ```

6. **Save Your Changes**

   After updating the volume mounts for each container, save the changes to your `docker-compose.yml` file and exit the text editor.

7. **Apply the Changes**

   To apply the changes, restart your Docker Compose stack. Run the following command from the directory containing your `docker-compose.yml` file:

   ```shell
   docker-compose down
   docker-compose up -d
   ```

   This will stop the containers and restart them with the updated volume mounts.

## Verifying the Changes

You can verify that the new volume mounts are in place by checking the logs of each container or by inspecting the running containers:

```shell
docker inspect plex
docker inspect radarr
docker inspect sonarr
docker inspect bazarr
```

Look for the `Mounts` section in the output to confirm that the new volume mounts are correctly applied.

And that's it! You’ve successfully updated the volume mounts for Plex, Radarr, Sonarr, and Bazarr containers in your Docker Compose stack.
