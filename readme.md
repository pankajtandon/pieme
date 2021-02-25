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
  
- Run the docker container:
  ```aidl
     docker run -d -p 5000:5000 chris/greg
  ```
  
  Above command starts the docker container in the background (`-d`). Because the ENTRYPOINT
  into the container specifies a server start, we are telling the server to start on port 5000.
  (This is not necessary).
  
  
  - Ensure that the container is running by typing `docker ps`
  
  - Now shell into the container by 
  
      ```aidl

      docker exec -it <containerId> bash  
      ```

  
  Once you are in the container, you can run
 
          pip -V
          or 
          python -V
       
  - To stop the container
    ```aidl
        docker stop <containerId>
    ```
  