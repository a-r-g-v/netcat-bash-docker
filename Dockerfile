FROM debian
RUN apt-get update && apt-get -y upgrade 
RUN apt-get install -y netcat
EXPOSE 1234
CMD ["netcat","-l","-p","1234","-e","/bin/bash"]
