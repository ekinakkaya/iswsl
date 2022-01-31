# iswsl

Small script that checks if you are using WSL (Windows Subsystem for Linux) by looking at runtime system information.


### Install
```sh
git clone https://github.com/ekinakkaya/iswsl.git
cd iswsl
./install.sh
cd .. && rm -r iswsl
```


# Example use case

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

