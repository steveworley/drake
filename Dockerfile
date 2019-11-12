FROM sickp/alpine-sshd:latest

# Add a generic drupal user.
RUN \
  passwd -d root && \
  adduser -D -s /bin/ash drupal && \
  passwd -u drupal && \
  chown -R drupal:drupal /home/drupal

COPY drush /usr/bin/drush
