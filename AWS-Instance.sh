#at Ubutu
bash # to connect to Ubutu
cd #go to local directory where .pem file is saved
ssh # connect local server to ASW server

#at local machine
cd #go to local directory where .pem is located 
chmat 400 file.pem #to protect pem file 

#Create a file on the local machine and copy it up to the remote machine
scp -i abx.pem local_directory ubuntu@DNS:file_name

#Create a file on the remote machine and copy it back to local machine using scp
scp -i abx.pem ubuntu@DNS :/home/ubuntu local_directory
