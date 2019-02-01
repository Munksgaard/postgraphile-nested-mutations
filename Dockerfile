FROM node:alpine
LABEL description="Instant high-performance GraphQL API for your PostgreSQL database https://github.com/graphile/postgraphile"

RUN npm install -g postgraphile@4.3.2
RUN npm install -g postgraphile-plugin-nested-mutations@1.0.0-alpha.21

EXPOSE 5000
ENTRYPOINT ["postgraphile", "-n", "0.0.0.0"]