# daily-commit

如果你的文件路径是 `~/Desktop/tmp/daily-commit/script.sh`，你可以按照以下步骤停掉每天中午自动执行的 `cron` 任务：

### 1. 编辑 `crontab`

打开终端，输入以下命令来编辑当前用户的 `crontab`：

```bash
crontab -e
```

### 2. 查找并删除任务

在打开的编辑器中，查找如下行：

```bash
0 12 * * * ~/Desktop/tmp/daily-commit/script.sh
```

将这一行删除，或者在行前面加上 `#` 来注释掉它：

```bash
# 0 12 * * * ~/Desktop/tmp/daily-commit/script.sh
```

### 3. 保存并退出

保存文件并退出编辑器。具体的保存和退出方式取决于你使用的编辑器：

- **如果是 `nano`**：按 `Ctrl + O` 保存，然后按 `Ctrl + X` 退出。
- **如果是 `vi` 或 `vim`**：按 `Esc` 键，然后输入 `:wq` 并按 `Enter`。

### 4. 确认任务已被删除

你可以运行以下命令，查看当前的 `cron` 任务，确认你刚刚删除的任务不再列出：

```bash
crontab -l
```

如果没有显示你之前的任务，说明你已经成功停掉它。

### 其他注意事项

- 如果你在 `crontab` 中使用 `~` 符号，确保它能正确解析为用户的主目录。如果遇到问题，可以直接使用完整路径，例如 `/home/yourusername/Desktop/tmp/daily-commit/script.sh`。
- 如果你有多个 `cron` 任务，请确保只删除或注释掉你想要停掉的那一行。

通过这些步骤，你就可以成功停掉每天中午自动执行的脚本。