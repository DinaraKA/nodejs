FROM node:18-alpine

# Remove global npm if it's not needed (removes cross-spawn too)
RUN rm -rf /usr/local/lib/node_modules/npm \
    && rm -rf /usr/local/bin/npm \
    && rm -rf /usr/local/bin/npx

# Set working directory
WORKDIR /app

# Copy the application
COPY app.js index.html .

# Expose app port
EXPOSE 8080

# Run the app
ENTRYPOINT ["node", "app.js"]