# Custom VSCodium-based Renku image

This template provides an example how to add custom packages to a Renku image using `apt`. It is based on the VSCodium base image, thus it provides VSCodium interface in the Renku Session.


### 1. Create repository
Click on **Use this template** and **Create a new repository** to create your own instance.

### 2. Modify the Dockerfile
Add any packages to the `apt install` command in the `Dockerfile`. You can use Github's online editor or clone the repository locally.
Optional: Add other docker stages to customize the image even more.

### 3. Commit changes
When you commit your changes, the Github action configured in the repository will automaticaly build the image.

### 4. Verify Github action
Under the **Actions** tab of your repository you can see the status and progress of the image build process.
When it's finished you can retrieve the image URL.

### 5. Retrieve the image URL
Click on **Packages** on the main page of the repository.
It will show a list of built images.
Copy the URL of the latest image, which will look like this
```
ghcr.io/<username>/<projectname>:sha-10dba5d
```
Note: the `sha-10dba5d` will likely be a different number in your case.

### 6. Create a new session launcher 
- In your Renkuproject create a new session launcher
- Select **External Environment**
- Paste the image URL into the **Container Image** field
- Click **Next** to start the session
