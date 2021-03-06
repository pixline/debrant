# We include default installations of WordPress with this Vagrant setup.
# In order for that to respond properly, default databases should be
# available for use.
CREATE DATABASE IF NOT EXISTS `wp_themetest`;
GRANT ALL PRIVILEGES ON `wp_themetest`.* TO 'wp'@'localhost' IDENTIFIED BY 'wp';
CREATE DATABASE IF NOT EXISTS `wp_network`;
GRANT ALL PRIVILEGES ON `wp_network`.* TO 'wp'@'localhost' IDENTIFIED BY 'wp';

# Create an external user with privileges on all databases in mysql so
# that a connection can be made from the local machine without an SSH tunnel
GRANT ALL PRIVILEGES ON *.* TO 'external'@'%' IDENTIFIED BY 'external';
