# Dev notes

## Learn more

Extension guide:

- https://code.visualstudio.com/api/language-extensions/syntax-highlight-guide

Similar extensions:

- https://github.com/microsoft/vscode/tree/master/extensions/markdown-basics
- https://github.com/asciidoctor/asciidoctor-vscode
- https://github.com/vscode-restructuredtext/vscode-restructuredtext

Well done official extension:

- https://github.com/Microsoft/vscode-go


## Inital setup for publishing

I've followed https://code.visualstudio.com/api/working-with-extensions/publishing-extension.

- **Install vsce:** I've jumped this step and used a custom Docker image. See `./Dockerfile`.

- **Get a Personal Access Token:** I've created an organization in Azure DevOps (https://dev.azure.com/aureliojargas) and then a short-lived personal token.

- **Create a publisher:** This step did not work for me using `vsce`. I used the alternative option of creating it in https://marketplace.visualstudio.com/manage.


## Packaging and publishing

Inside the custom Docker container:

    vsce login aureliojargas
    vsce package
    unzip -l /src/txt2tags-0.0.1.vsix  # check the contents
    vsce publish

Check the package in https://marketplace.visualstudio.com/manage/publishers/aureliojargas
