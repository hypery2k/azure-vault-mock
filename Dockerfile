FROM node:lts
ENV SUMMARY="Azure Key Vault mock server"
ENV DESCRIPTION="Application runtime for Azure Key Vault mock server"
ENV AUTHOR="Martin Reinhardt"
ENV TZ="Europe/Berlin"
ENV CONSOLE_LOG="true"
ENV NODE_TLS_REJECT_UNAUTHORIZED=0

RUN npm install --location=global ms-vault-mock
