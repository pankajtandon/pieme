Bootstrapping PiePie
===

- Install docker on your development machine.
- Checkout the project
- From project root:
  ```
     docker build -t chris/greg:latest .
  ```
  
  Doing above will build an image (which you can subsequently customize) on your local machine. The 
  name of the image is `chris/greg` (but it can be anything). The `latest` tag specifies that it 
  is the most recent version of the image build. The `.` at the end specifies that the image is to use a
  file called `Dockerfile` (default)  in the current directory.
  
- Run the docker container and shell into it:
  ```aidl
     docker run -it chris/greg bash
  ```
  
  Above command starts the docker container and then shells into it (using bash). The `-it` flag
  specifies to run the container interactively.
  
  Once you are in the container, you can run
  
  ```
      pip -V
      or 
      python -V
  ```
  
- You can view the container running (by opening a seperate terminal) and typing:

   ```aidl
      docker ps
   ```
  
To run the container in the background:

   ```aidl
      docker run -d chris/greg bash
      and then
      docker ps to get the containerId
      and then 
      docker exec -it containerId bash  
   ```
  