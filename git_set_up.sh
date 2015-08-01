printf "Detected OS: $OSTYPE\n"

printf "What is your name?\n"
read name
git config --global user.name "$name"

printf "What is your email?\n"
read email
git config --global user.email "$email"

git config --global push.default matching
git config --global pull.default matching

printf "Setting some cool shortcuts.\n"
printf "git co = git checkout\n"
printf "git br = git branch\n"
printf "git ci = git commit\n"
printf "git st = git status\n"

git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status

printf "Generating ssh key.\n"
ssh-keygen -t rsa -b 4096 -C "$email"

#Git Bash and other lightweight bash shells for Windows.
if [ "$OSTYPE" == "msys" ]
  then
    clip < ~/.ssh/id_rsa.pub
    printf "Your ssh key has been copied to the clipboard. Please copy it into your Git repositiory account (like your GitHub account).\n"
#Cygwin
elif [ "$OSTYPE" == "cygwin" ]
  then
    putclip < ~/.ssh/id_rsa.pub
    printf "Your ssh key has been copied to the clipboard. Please copy it into your Git repositiory account (like your GitHub account).\n"
#OS X
elif [ "$OSTYPE" == "darwin" ]
  then
    cat ~/.ssh/id_rsa.pub | pbcopy
    printf "Your ssh key has been copied to the clipboard. Please copy it into your Git repositiory account (like your GitHub account).\n"
#Linux and miscellaneous.
else
    printf "\n"
    cat ~/.ssh/id_rsa.pub
    printf "\nPlease copy the ssh key above to your Git repositiory account (like your GitHub account).\n"
    printf "Press enter to continue."
    read next
fi

printf "All done! Please restart bash to be sure your changes take effect.\n"
printf "Press enter to finish the program.\n"
read stuff
