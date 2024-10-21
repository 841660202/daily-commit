#!/bin/bash
cd ~/Desktop/tmp/daily-commit
echo "Current directory: $(pwd)"
echo "Script path: \$0"

# 设置变量
REPO_DIR="."  # 替换为你的仓库路径
FILE_NAME="daily_commit.txt"    # 要提交的文件名
COMMIT_MESSAGE="Daily commit $(date '+%Y-%m-%d %H:%M:%S')"  # 提交信息

# 进入仓库目录
cd "$REPO_DIR" || exit

# 检查文件是否存在，如果不存在则创建
if [ ! -f "$FILE_NAME" ]; then
    echo "This is a new daily commit." > "$FILE_NAME"
else
    echo "Appending new line to $FILE_NAME"
    echo "Another daily commit on $(date '+%Y-%m-%d %H:%M:%S')" >> "$FILE_NAME"
fi

# 添加更改
# git add "$FILE_NAME"
git add .

# 提交更改
git commit -m "$COMMIT_MESSAGE"

# 推送到远程仓库
git push origin main  # 替换为你的主分支名称
