# Pull official base image
FROM node:13.10-buster-slim

# Set working directory
WORKDIR /usr/src/viiru-home-spa

# Install and cache the app dependencies
COPY package.json /usr/src/viiru-home-spa/package.json
RUN yarn install
RUN yarn global add @vue/cli@4.5.7

# Start the app
CMD ["yarn", "serve", "--mode", "dev"]