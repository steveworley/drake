FROM sickp/alpine-sshd:latest

# Add a generic drupal user.
RUN \
  passwd -d root && \
  adduser -D -s /bin/ash drupal && \
  passwd -u drupal drupal && \
  chwon -R drupal:drupal /home/drupal

COPY add-user /usr/bin
RUN chmod +x /usr/bin/add-user && add-user
COPY drush /usr/bin/drush
