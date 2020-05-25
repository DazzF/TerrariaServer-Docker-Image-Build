# Use the official image as a parent image.
FROM mono:3.10-onbuild

# Set the working directory.
#WORKDIR /usr/terraria/

# Run the command inside your image filesystem.
RUN npm install

# Inform Docker that the container is listening on the specified port at runtime.
EXPOSE 7777

# Run the specified command within the container.
CMD [ "mono", "./TerrariaServer.exe -config TerrariaServer.config" ]

# Copy the rest of your app's source code from your host to your image filesystem.
COPY . .
