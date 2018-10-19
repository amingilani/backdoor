SETUP
-----

My script to setup persistent access to VPS nodes. It copies my SSH key
to `authorized_keys`, backs up existing `authorized_keys`, and doesn't copy
keys that already exist

To use, run:

```
curl https://raw.githubusercontent.com/amingilani/backdoor/master/setup.sh | bash
```

To adapt this for your own needs:

+ Fork this repo
+ Edit the `KEYS` array in `setup.sh`
+ Change `amingilani` to your username in the command above.


Demo
----

```
root@localhost:~# ls .ssh
ls: cannot access '.ssh': No such file or directory
root@localhost:~# curl https://raw.githubusercontent.com/amingilani/setup/master/setup.sh | bash
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  1376  100  1376    0     0  47448      0 --:--:-- --:--:-- --:--:-- 47448
Setting up Gilani's SSH key for remote access
Creating /root/.ssh
Creating /root/.ssh/authorized_keys
Copying key
Copying key
Done!
root@localhost:~# ls .ssh/
authorized_keys
root@localhost:~# # What happens if I accidentally run the script a second time?
root@localhost:~# curl https://raw.githubusercontent.com/amingilani/setup/master/setup.sh | bash
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  1376  100  1376    0     0  33560      0 --:--:-- --:--:-- --:--:-- 33560
Setting up Gilani's SSH key for remote access
Backing up existing /root/.ssh/authorized_keys to /root/.ssh/authorized_keys.2018_10_19__22_27_04.backup
Key exists skipping
Key exists skipping
Done!
```
