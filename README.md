# rapidpro-docker-compose

A deployable rapidpro docker-compose setup. Batteries included:
- ssl via letsencrypt
- backing services: elasticsearch, postgres, redis, etc.
- celery tasks

To deploy, copy `sample.env` to `.env`, edit it for correct values and then run `docker-compose up`

Works reasonably well on a single host, however, doesn't seem to want to send text messages via twilio... will dig into why.
