# Use the official lightweight Apache image
FROM httpd:alpine

# Copy your JSON into the default doc root
COPY data.json /usr/local/apache2/htdocs/data.json
COPY stack /usr/local/apache2/htdocs/stack
RUN chown -R www-data:www-data /usr/local/apache2/htdocs

# (Optional) If you need to adjust MIME types or add headers, 
# you can also copy in a custom httpd.conf or an .htaccess file:
# COPY httpd.conf /usr/local/apache2/conf/httpd.conf
