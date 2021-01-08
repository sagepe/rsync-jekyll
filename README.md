# Jekyll Rsync Deployer

This is a simple action intended to deploy the contents of `_site/` to a remote server using rsync over SSH.

It requires a `DEPLOY_KEY` secret and takes a single input, `dest`, in the form of a destination for the sync, e.g. `user@host.com:path/to/docroot`.

Example:

```
uses: sagepe/rsync-jekyll@v1
with:
  dest: 'user@host.com:path/to/docroot'
```
