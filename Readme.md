### List

Выводит в терминал список файлов расширения %EXT%, поиск в текущей папке и всех подпапках. 
Результат в двух файлах **index.html** и  **index.csv**

```
sh list mp3

sh list jpg

sh list txt
```

### Check-branch

Выводит в терминал сообщение существует ли ветка на локальном репозитории.
``` 
sh check-branch master # sh check-branch __BRANCH_NAME__
The branch master exists

sh check-branch fakeMaster # sh check-branch __BRANCH_NAME__
The branch fakeMaster doesn't exist
 ```
Bash скрипт выводит результат в терминал и сохраняет результат в файл, файл не дописывается, то есть удаляется содержимое, которое было до.
```
sh check-branch master output.txt # sh check-branch %BRANCH_NAME% %FILE_NAME%
The branch fakeMaster doesn't exist and a file output.txt is created
```