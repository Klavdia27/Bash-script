### List

Output to the terminal list of files with extension **%EXT%**, search in the current folder and all subfolders. 
Result in two files **index.html** and **index.csv**


```
sh list mp3

sh list jpg

sh list txt
```

### Check-branch

Print  message to the terminal if branch exists on the local repository.
``` 
sh check-branch master # sh check-branch __BRANCH_NAME__
The branch master exists

sh check-branch fakeMaster # sh check-branch __BRANCH_NAME__
The branch fakeMaster doesn't exist
 ```
Bash script print result to the terminal and save result to file, the file is not appended, the content that was before is deleted.
```
sh check-branch master output.txt # sh check-branch %BRANCH_NAME% %FILE_NAME%
The branch fakeMaster doesn't exist and a file output.txt is created
```