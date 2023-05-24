# linux-machine-setup
Scripts, Tools, Settings and Notes for setting up a new linux machine (Kubuntu or Ubuntu)

## Machine Structure
- Here's the structure of folders arranged for this machine to keep things organised.
```
/home
    ├── work/software/flatpak   -- for storing flatpak software binaries and other data
    └── <username>
        └── work
            ├── docker-volumes  -- contains persistent data of docker containers
            ├── files           -- work-related files
            ├── repos           -- repositories
            ├── slack           -- download directory for slack (you may create directories for other messengers)
            ├── software        -- softwares and tools
            └── tokens          -- secrets and sensitive information (you may want to lock this directory for security)
```

* **Note**: All the scripts in this repository assume relative paths based on the folder structure mentioned above.
