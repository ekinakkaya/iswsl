# iswsl

Small bash script that checks if you are using WSL (Windows Subsystem for Linux) by looking at runtime system information (proc files).



### Install
Recommended to execute commands one at a time
```sh
cd
git clone https://github.com/ekinakkaya/iswsl.git
cd iswsl

sudo mv ./iswsl /usr/local/bin
sudo chmod 755 iswsl
cd .. && rm -r iswsl
```


or (recommended)

```sh
curl --silent https://raw.githubusercontent.com/ekinakkaya/iswsl/main/iswsl > ~/iswsl-script
sudo mv ~/iswsl-script /usr/local/bin/iswsl
sudo chmod 755 /usr/local/bin/iswsl
```


or one liner function adder to your .bashrc file

```sh
echo "iswsl () {" > iswsl-bashrc && curl --silent https://raw.githubusercontent.com/ekinakkaya/iswsl/main/iswsl-bashrc | tail -n +3 >> iswsl-bashrc && echo "}" >> iswsl-bashrc && cat iswsl-bashrc >> ~/.bashrc
```



### Example use case

```sh
if iswsl; then
    # do some wsl tasks
    echo wow, i'm in WSL
    
    # get the windows username
    cmd.exe /c "echo %USERNAME%"
else
    # do non-wsl tasks
    echo not in wsl
fi
```

