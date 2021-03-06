# This file contains the instructions for building docker image of PredPsych
# Brief discription from Wikipedia:
# Docker is a set of coupled software-as-a-service and platform-as-a-service products 
# that use operating-system-level virtualization to develop and deliver software in packages called containers. 

# The dockers allow a transfer of so called images across platforms. 
# This is similar to having a fully built programs that are sure to work.

# Advantages of using docker:
# 1. Since docker runs on your hardware directly, it doesn't change any programs or software of your operating system.
#     This means that if you are already running R/Rstudio on your computer, the docker image doesn't influence any of those programs
# 2. Since the image is already built, you already have a running version of R,Rstudio, predpsych and other packages installed.

# To run PredPsych docker image, ensure that you have sufficient space (approx around 2 GB).
# Follow the steps in sequence:

1. Download and install docker (https://www.docker.com/products/docker-desktop for mac and windows, 
                                https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-docker-ce for Ubuntu) 

2. For windows:
  Double click docker_win.cmd (alternately run it as administrator).
  
 Use the username as rstudio and the password as the password (predpsych) in the browser.
 
 That's it! you are ready to use PredPsych
 

Advanced (for other OS):

After step 1:

2. In command line, use:
   > docker pull ateshkoul/predpsych
This should install the predpsych latest image

3. Run the docker in your browser:
   > docker run --rm -p 8787:8787 -e PASSWORD=predpsych ateshkoul/predpsych

 4. Open your browser and use the address:
    > localhost:8787/
 Use the username as rstudio and the password as the password (predpsych) in the previous command.
 
 That's it! you are ready to use PredPsych
 
 # Common Issues:
 1. Ensure that you use sudo in case of Ubuntu.
 2. Ensure that no other program is using localhost (jupyter notebook/dask etc.)
