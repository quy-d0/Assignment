#Shell can be seen as a command interpreter and a programming language (C Shell - csh, Bash Shell - bash)
#The command handles the hardware via the kernel
#Typical commands: ls, mv, mkdir, pwd

#1. Start with #!/bin/bash 

#2. Make the bash file executable 
chmod u+x filename.sh

#3. To run the script:
./con-sh-exe.sh

#4. Echo - command prints out text/value of variables
hello = xinchao
echo $hello
unset #delete variables

echo $(date)
echo 'date'
files = $(ls)
echo $files

#5. Common commands

cat -n #display contents of a document -add number
date >> #double the lines
sort -u # sort -eliminate duplicates
grep #print line that match patterns 
mkdir name #create directory if it does not exsit 
apropos keywords #search fro keywords in index databse
cp #copy
mv abc.txt cbc.txt #mv: move
rm txt.txt #remove file
rm -r temp #remove folder/directory
<< # a here documents, it allows displaying of content of what comes next
head -n 15 # read the first 15 lines
tai -n 10
wc filename.txt #count workds in the files 
split -l 2 filename.txt resutl.txt #split 2 line of each file from filename.txt and name the new file as result.txt
cut -f 1, 3, -d "-"

# 6. Loop - while .. do .. done
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
