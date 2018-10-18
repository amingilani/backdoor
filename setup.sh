#!/usr/bin/env bash

DIR=$HOME/.ssh
FILE=$DIR/authorized_keys

# ensure directory exists
if [ ! -f $DIR ]; then
    mkdir $DIR
fi

# ensure authorized_keys exists
if [ -f $FILE ]; then
    cp $FILE "$FILE.pre-gilani.backup"
else
    touch $FILE
fi

# ensure appropriate permissions
chmod 600 $FILE

# copy the keys in
echo 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIL64YtJCc+nu25af0dDE00AvOYy3H/8TWHlBNu5W83yX gilani@magic' >> authorized_keys
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCbSpgibKMW5Zd62dpK7nUI44PXTe95+MMd05+czkh0IP47Meorcubne1+egX7cCioF36SFYoJKKXQKKFqxJMWZ7eP45WZB3TSOFOF8LpWf4vIyOV6b/ZK3fF5AE1Nc5IPPVhJb9Rc7zQNzKDQnFJLWfF75gvegoJK/omK+KbyGYqyEMMbZfRck69GmGX3IDDJUz/fy4DHJmwlAJjSWb9YfxyOEBh9kCpiHN9/vZD81N3U1I7R1VZyQ8Bkqa6fQraSDRL8NnvBJu+nEagOMtZ/Ng6PTqv4Cx3xSYVhfBk9iJR62WocxRIEoFxIAg3T3URDpmg5y66aNzN1R3gsX2XuoxY0HDZI3qRHFRcnfQrGzdPwV5XedrmR1ACr51TkRXAISJrzEvS1rn3GTwoXCM3K00Ppdm7s2rJQdqSEOTSiR73Ec5A58RERZ6e3vh6zkOaDrZAgMRf8cAF2yjZLq5hLscy1l7reNNY+t52g8+A0ALcHh9p1advbH6YnRMce5r3s= gilani@pixie' >> authorized_keys
