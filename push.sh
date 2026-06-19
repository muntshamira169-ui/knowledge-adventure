#!/bin/bash
# 🚀 知识大冒险 - GitHub Pages 一键部署
# 在系统终端中运行: bash push.sh

cd "$(dirname "$0")"

echo "🚀 正在推送到 GitHub Pages..."
echo "   仓库: https://github.com/muntshamira169-ui/knowledge-adventure"
echo ""

git remote add origin https://github.com/muntshamira169-ui/knowledge-adventure.git 2>/dev/null
git branch -M main
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "============================================"
    echo "  ✅ 推送成功！"
    echo ""
    echo "  下一步："
    echo "  1. 打开 https://github.com/muntshamira169-ui/knowledge-adventure/settings/pages"
    echo "  2. Source 选 'Deploy from a branch'"
    echo "  3. Branch 选 'main' → Save"
    echo ""
    echo "  1-2分钟后访问："
    echo "  https://muntshamira169-ui.github.io/knowledge-adventure/"
    echo "============================================"
else
    echo ""
    echo "❌ 推送失败，请确认："
    echo "  1. 已在 github.com 创建了空仓库 knowledge-adventure"
    echo "  2. 已安装 git 并登录 GitHub"
fi
