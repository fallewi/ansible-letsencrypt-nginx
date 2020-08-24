# Deploy Let's Encrypt Cert to NGINX
This repository contains Ansible playbooks that will generate a Let's Encrypt SSL certificate on your local machine and deploy it along with a static website to an NGINX web server.

## Requirements
- Ansible v2.9.11+ installed on local machine (Has been tested on a Mac)
- Ubuntu 18.04 (Target Machine)
- The playbook requires Cloudflare DNS (Used to validate SSL cert)

## Using

1. First add your Cloudflare email, API Token and Zone to a file located at `~/.secrets/cloudflare` using the following example:

```
export CF_EMAIL=<youremail>
export CF_API_TOKEN=<yourtoken>
export CF_ZONE=<yourdomain>
```

2. Modify the `domain` variable in the **vars.yml** file and add any subdomains that should belong in the certificate.

3. Copy your static website into the **site** or change the path in the **vars.yml**. 

4. Assign the hosts and user by modifying the **inventory.yml** file.

5. Copy your SSH public key to the target machine then run the following:

```
./deploy
```
