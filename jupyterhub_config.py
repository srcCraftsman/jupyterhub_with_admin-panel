# jupyterhub_config.py
c = get_config()

# Change from JupyterHub to JupyterLab
c.Spawner.debug = True

# Specify users and admin
c.Authenticator.whitelist = {"kratos"}
c.Authenticator.admin_users = {"kratos"}
c.LocalAuthenticator.create_system_users = True
c.JupyterHub.admin_access=True
