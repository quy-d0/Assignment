#Shell can be seen as a command interpreter and a programming language (C Shell - csh, Bash Shell - bash)
#The command handles the hardware via the kernel
#Typical commands: ls, mv, mkdir, pwd

#1. Start with #!/bin/bash 

#!/bin/bash 

#2. Make the bash file executable 
chmod u+x filename.sh

#3. To run the script:
./con-sh-exe.sh

#4. Echo - command prints out text/value of variables
hello = xinchao
echo $hello

echo $(date)
echo 'date'
files = $(ls)
echo $files

#5. cat command is used to display contents of a document.
cat -n #add number
date >> #double the lines
sort -o 
grep #print line that match patterns 

#6. << is called a here documents, it allows displaying of content of what comes next

#
# Loop - while .. do .. done
#!/bin/bash
while [ −n ”$1 ” ] ; do
  echo $1
  shift
done
# Loop - until .. do .. done
# Loop - for...in...do...done
# case .. in .. esac

for i in $(ls ∗$1); do
  echo "Backup $i? yES/nO/qUIT"
  read answer
case $answer in
  y∗) echo "Backup $i"; cp $i $i .bak;;
  n∗) echo "Skip $i" ;;
  q∗) echo "Quited" ; exit ;;
  ∗) echo "Skip $i" ;;
esac
done
