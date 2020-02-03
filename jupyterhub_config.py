# jupyterhub_config.py
c = get_config()

# Change from JupyterHub to JupyterLab
c.Spawner.debug = True

# Specify users and admin
c.Authenticator.whitelist = {"uzver"}
c.Authenticator.admin_users = {"uzver"}
c.LocalAuthenticator.create_system_users = True
c.JupyterHub.admin_access=True
c.Authenticator.delete_invalid_users = True
