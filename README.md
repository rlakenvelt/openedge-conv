# OpenEdge backup conversion

Setup to convert OpenEdge database backups from version 11 to version 12

## Prerequisites
- Place an OpenEdge version 11 Linux install file in the v11 directory and name it PROGRESS_OE_11.tar.gz
- Place an OpenEdge version 12 Linux install file in the v12 directory and name it PROGRESS_OE_12.tar.gz. This must be a full install, not a service pack
- Place an OpenEdge version 11 activation file in the v11 directory and name it ActivationFile.txt
- Place an OpenEdge version 12 activation file in the v12 directory and name it ActivationFile.txt

## Conversion

Start environment:

```
docker compose up -d
```

This starts two docker containers:
- One with OpenEdge version 11
- One with OpenEdge version 12

The /tmp directory in both containers as well as the /tmp/convert directory on the host is shared.
Copy the backup file that must be converted in the /tmp/convert directory on the host. The file must have a .bck extension.
Copy the structure file for the datbase in the /tmp/convert directory on the host. 
Execute conversion:

```
convert-backup.sh <databasename>
```

This will:
- Restore the database using the v11 container
- Truncate the bi file using the v11 container
- Convert the database from v11 to 12 using the v12 container
- Create a new backup using the v12 container. The name of the backup is <databasename>_12.bck




