#!/bin/bash
# Andy-IP-Skill 技能整合脚本
# 用途：建立软链接结构，整合分散的IP技能

set -e  # 遇到错误立即退出

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# 基础路径
BASE_DIR="$HOME/.claude/skills/andy-ip-skill"
CLAUDE_SKILLS="$HOME/.claude/skills"
AGENTS_SKILLS="$HOME/.agents/skills"
DESKTOP_IP="$HOME/Desktop/01 AI+IP"

echo "================================"
echo "Andy-IP-Skill 技能整合脚本"
echo "================================"
echo ""

# 检查基础目录是否存在
if [ ! -d "$BASE_DIR" ]; then
    echo -e "${RED}错误: $BASE_DIR 不存在${NC}"
    echo "请先确保 andy-ip-skill 已创建"
    exit 1
fi

# 创建分类目录
echo -e "${YELLOW}Step 1: 创建分类目录${NC}"
mkdir -p "$BASE_DIR/skills-claude"
mkdir -p "$BASE_DIR/skills-agents"
mkdir -p "$BASE_DIR/skills-specialized"
echo -e "${GREEN}✓ 目录创建完成${NC}"
echo ""

# 链接 Claude 技能
echo -e "${YELLOW}Step 2: 链接 Claude 原生技能${NC}"
CLAUDE_SKILLS_LIST=(
    "andy-mp-writing"
    "andy-whitepaper"
    "andy-perspective"
    "ai-video-producer"
    "batch-image-text-producer"
    "ppt-nano-master"
    "content-compliance"
    "content-like-prediction"
)

cd "$BASE_DIR/skills-claude"
for skill in "${CLAUDE_SKILLS_LIST[@]}"; do
    if [ -d "$CLAUDE_SKILLS/$skill" ]; then
        if [ ! -L "$skill" ]; then
            ln -s "$CLAUDE_SKILLS/$skill" "./$skill"
            echo -e "${GREEN}✓ 已链接: $skill${NC}"
        else
            echo -e "${YELLOW}⊙ 已存在: $skill${NC}"
        fi
    else
        echo -e "${RED}✗ 未找到: $skill${NC}"
    fi
done
echo ""

# 链接 Agents 技能
echo -e "${YELLOW}Step 3: 链接 Agents/Codex 技能${NC}"
AGENTS_SKILLS_LIST=(
    "story"
    "story-long-write"
    "story-short-write"
    "story-long-analyze"
    "story-short-analyze"
    "story-long-scan"
    "story-short-scan"
    "story-deslop"
    "story-cover"
    "story-import"
    "story-setup"
    "github-repo-to-social-video"
)

cd "$BASE_DIR/skills-agents"
for skill in "${AGENTS_SKILLS_LIST[@]}"; do
    if [ -d "$AGENTS_SKILLS/$skill" ]; then
        if [ ! -L "$skill" ]; then
            ln -s "$AGENTS_SKILLS/$skill" "./$skill"
            echo -e "${GREEN}✓ 已链接: $skill${NC}"
        else
            echo -e "${YELLOW}⊙ 已存在: $skill${NC}"
        fi
    else
        echo -e "${RED}✗ 未找到: $skill (可能需要单独安装)${NC}"
    fi
done
echo ""

# 链接专项技能
echo -e "${YELLOW}Step 4: 链接专项技能${NC}"
cd "$BASE_DIR/skills-specialized"

# MBTI 配图技能
if [ -d "$DESKTOP_IP/AI+MBTI/skills/mbti-article-to-andy-illustration" ]; then
    if [ ! -L "mbti-article-to-andy-illustration" ]; then
        ln -s "$DESKTOP_IP/AI+MBTI/skills/mbti-article-to-andy-illustration" "./mbti-article-to-andy-illustration"
        echo -e "${GREEN}✓ 已链接: mbti-article-to-andy-illustration${NC}"
    else
        echo -e "${YELLOW}⊙ 已存在: mbti-article-to-andy-illustration${NC}"
    fi
else
    echo -e "${YELLOW}⊙ 未找到 MBTI 配图技能（可选）${NC}"
fi
echo ""

# 生成技能清单
echo -e "${YELLOW}Step 5: 生成技能清单${NC}"
cd "$BASE_DIR"

cat > "SKILLS_LINKED.txt" << EOF
# Andy-IP-Skill 已链接技能清单
# 生成时间: $(date)

## Claude 原生技能 (skills-claude/)
EOF

ls -1 "$BASE_DIR/skills-claude" >> "SKILLS_LINKED.txt" 2>/dev/null || true

cat >> "SKILLS_LINKED.txt" << EOF

## Agents 技能 (skills-agents/)
EOF

ls -1 "$BASE_DIR/skills-agents" >> "SKILLS_LINKED.txt" 2>/dev/null || true

cat >> "SKILLS_LINKED.txt" << EOF

## 专项技能 (skills-specialized/)
EOF

ls -1 "$BASE_DIR/skills-specialized" >> "SKILLS_LINKED.txt" 2>/dev/null || true

echo -e "${GREEN}✓ 清单已生成: SKILLS_LINKED.txt${NC}"
echo ""

# 验证链接
echo -e "${YELLOW}Step 6: 验证链接完整性${NC}"
total_count=0
valid_count=0

for dir in skills-claude skills-agents skills-specialized; do
    if [ -d "$BASE_DIR/$dir" ]; then
        for skill in "$BASE_DIR/$dir"/*; do
            if [ -L "$skill" ]; then
                total_count=$((total_count + 1))
                if [ -e "$skill" ]; then
                    valid_count=$((valid_count + 1))
                else
                    echo -e "${RED}✗ 损坏的链接: $(basename $skill)${NC}"
                fi
            fi
        done
    fi
done

echo -e "${GREEN}有效链接: $valid_count / $total_count${NC}"
echo ""

# 完成
echo "================================"
echo -e "${GREEN}整合完成！${NC}"
echo "================================"
echo ""
echo "技能位置: $BASE_DIR"
echo "使用方式:"
echo "  - Claude Code: /andy-ip"
echo "  - Codex CLI:   \$andy-ip"
echo ""
echo "查看完整文档:"
echo "  cat $BASE_DIR/README.md"
echo ""
echo "查看技能清单:"
echo "  cat $BASE_DIR/SKILLS_LINKED.txt"
echo ""
