# Personal Scripts
This is just a bunch of script I use on my GNU/Linux machine.

# How to use
```
mkdir -p tmp && cd tmp
git clone https://github.com/thuhtoosan/personal-scripts.git && cd personal-scripts
cp <script you want> ~/<destination folder>
cd ~/<destination folder>
./<script file> <arguments>
```

## init-devel
It's quite annoying to write the same boilerplate code every-single-time I do a project so I made it. It initializes the files you provided by simply copying them from the template directory. 

### Prerequisite
- You need to create the templates you want to use in the template directory first! 

### Usage
`$ init-devel.sh <filenames>`

### Example
```
$ init-devel.sh index.html styles.css app.js
Created index.html using template.
Created styles.css using template.
Created app.js using template.
```
