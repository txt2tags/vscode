# A handy Docker image to use the `vsce` command to pack/publish VS Code extensions.
#
# Build the image:
#
#    docker build -t vsce .
#
# Run the image from the extension repository:
#
#    docker run -it -v "$PWD:/src" vsce

FROM node:alpine
RUN npm install --global --silent vsce

# Folder to map the extension repository
WORKDIR /src

# Force a command line prompt, since the original image calls the Node REPL
ENTRYPOINT ["ash"]
