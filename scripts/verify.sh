#!/bin/bash
# Andy-IP-Skill 验证脚本
# 用途：验证所有技能和文档的完整性

set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

BASE_DIR="$HOME/.claude/skills/andy-ip-skill"
PASS=0
FAIL=0

echo "================================"
echo "Andy-IP-Skill 完整性验证"
echo "================================"
echo ""

# 检查基础目录
echo -e "${BLUE}=== 1. 检查基础目录 ===${NC}"
if [ -d "$BASE_DIR" ]; then
    echo -e "${GREEN}✓ 基础目录存在${NC}"
    PASS=$((PASS + 1))
else
    echo -e "${RED}✗ 基础目录不存在${NC}"
    FAIL=$((FAIL + 1))
    exit 1
fi
echo ""

# 检查核心文档
echo -e "${BLUE}=== 2. 检查核心文档 ===${NC}"
CORE_DOCS=(
    "SKILL.md"
    "README.md"
    "LICENSE"
    "SKILL_INDEX.md"
    "INTEGRATION_PLAN.md"
    "PROJECT_SUMMARY.md"
    "CHANGELOG.md"
)

for doc in "${CORE_DOCS[@]}"; do
    if [ -f "$BASE_DIR/$doc" ]; then
        echo -e "${GREEN}✓ $doc${NC}"
        PASS=$((PASS + 1))
    else
        echo -e "${RED}✗ $doc 缺失${NC}"
        FAIL=$((FAIL + 1))
    fi
done
echo ""

# 检查文档目录
echo -e "${BLUE}=== 3. 检查文档目录 ===${NC}"
DOC_FILES=(
    "docs/quick-start.md"
    "docs/best-practices.md"
)

for doc in "${DOC_FILES[@]}"; do
    if [ -f "$BASE_DIR/$doc" ]; then
        echo -e "${GREEN}✓ $doc${NC}"
        PASS=$((PASS + 1))
    else
        echo -e "${RED}✗ $doc 缺失${NC}"
        FAIL=$((FAIL + 1))
    fi
done
echo ""

# 检查脚本
echo -e "${BLUE}=== 4. 检查脚本文件 ===${NC}"
if [ -f "$BASE_DIR/scripts/integrate.sh" ]; then
    if [ -x "$BASE_DIR/scripts/integrate.sh" ]; then
        echo -e "${GREEN}✓ integrate.sh (可执行)${NC}"
        PASS=$((PASS + 1))
    else
        echo -e "${YELLOW}⊙ integrate.sh (不可执行)${NC}"
        PASS=$((PASS + 1))
    fi
else
    echo -e "${RED}✗ integrate.sh 缺失${NC}"
    FAIL=$((FAIL + 1))
fi
echo ""

# 检查软链接结构
echo -e "${BLUE}=== 5. 检查技能链接 ===${NC}"

echo "Claude 原生技能:"
CLAUDE_COUNT=0
if [ -d "$BASE_DIR/skills-claude" ]; then
    for skill in "$BASE_DIR/skills-claude"/*; do
        if [ -L "$skill" ]; then
            if [ -e "$skill" ]; then
                CLAUDE_COUNT=$((CLAUDE_COUNT + 1))
            else
                echo -e "${RED}✗ $(basename $skill) - 链接损坏${NC}"
                FAIL=$((FAIL + 1))
            fi
        fi
    done
    echo -e "${GREEN}✓ $CLAUDE_COUNT 个有效链接${NC}"
    PASS=$((PASS + 1))
else
    echo -e "${RED}✗ skills-claude 目录不存在${NC}"
    FAIL=$((FAIL + 1))
fi

echo "Agents 技能:"
AGENTS_COUNT=0
if [ -d "$BASE_DIR/skills-agents" ]; then
    for skill in "$BASE_DIR/skills-agents"/*; do
        if [ -L "$skill" ]; then
            if [ -e "$skill" ]; then
                AGENTS_COUNT=$((AGENTS_COUNT + 1))
            else
                echo -e "${RED}✗ $(basename $skill) - 链接损坏${NC}"
                FAIL=$((FAIL + 1))
            fi
        fi
    done
    echo -e "${GREEN}✓ $AGENTS_COUNT 个有效链接${NC}"
    PASS=$((PASS + 1))
else
    echo -e "${RED}✗ skills-agents 目录不存在${NC}"
    FAIL=$((FAIL + 1))
fi

echo "专项技能:"
SPECIALIZED_COUNT=0
if [ -d "$BASE_DIR/skills-specialized" ]; then
    for skill in "$BASE_DIR/skills-specialized"/*; do
        if [ -L "$skill" ]; then
            if [ -e "$skill" ]; then
                SPECIALIZED_COUNT=$((SPECIALIZED_COUNT + 1))
            else
                echo -e "${YELLOW}⊙ $(basename $skill) - 可选技能未安装${NC}"
            fi
        fi
    done
    if [ $SPECIALIZED_COUNT -gt 0 ]; then
        echo -e "${GREEN}✓ $SPECIALIZED_COUNT 个有效链接${NC}"
        PASS=$((PASS + 1))
    else
        echo -e "${YELLOW}⊙ 无专项技能（可选）${NC}"
    fi
else
    echo -e "${YELLOW}⊙ skills-specialized 目录不存在（可选）${NC}"
fi

TOTAL_SKILLS=$((CLAUDE_COUNT + AGENTS_COUNT + SPECIALIZED_COUNT))
echo -e "${GREEN}总计: $TOTAL_SKILLS 个技能链接${NC}"
echo ""

# 检查SKILL.md格式
echo -e "${BLUE}=== 6. 检查SKILL.md格式 ===${NC}"
if grep -q "^name: andy-ip-skill" "$BASE_DIR/SKILL.md"; then
    echo -e "${GREEN}✓ name 字段存在${NC}"
    PASS=$((PASS + 1))
else
    echo -e "${RED}✗ name 字段缺失${NC}"
    FAIL=$((FAIL + 1))
fi

if grep -q "^description:" "$BASE_DIR/SKILL.md"; then
    echo -e "${GREEN}✓ description 字段存在${NC}"
    PASS=$((PASS + 1))
else
    echo -e "${RED}✗ description 字段缺失${NC}"
    FAIL=$((FAIL + 1))
fi

if grep -q "## 路由表" "$BASE_DIR/SKILL.md"; then
    echo -e "${GREEN}✓ 路由表存在${NC}"
    PASS=$((PASS + 1))
else
    echo -e "${RED}✗ 路由表缺失${NC}"
    FAIL=$((FAIL + 1))
fi
echo ""

# 检查README完整性
echo -e "${BLUE}=== 7. 检查README完整性 ===${NC}"
README_SECTIONS=(
    "## 🎯 项目愿景"
    "## 📦 技能分类"
    "## 🚀 快速开始"
    "## 📖 使用场景"
    "## 🎯 设计原则"
)

for section in "${README_SECTIONS[@]}"; do
    if grep -q "$section" "$BASE_DIR/README.md"; then
        echo -e "${GREEN}✓ $section${NC}"
        PASS=$((PASS + 1))
    else
        echo -e "${RED}✗ $section 缺失${NC}"
        FAIL=$((FAIL + 1))
    fi
done
echo ""

# 统计信息
echo -e "${BLUE}=== 8. 统计信息 ===${NC}"
echo "文档文件: $(find "$BASE_DIR" -name "*.md" | wc -l | xargs)"
echo "脚本文件: $(find "$BASE_DIR" -name "*.sh" | wc -l | xargs)"
echo "总代码行数: $(find "$BASE_DIR" -name "*.md" -o -name "*.sh" | xargs wc -l 2>/dev/null | tail -1 | awk '{print $1}')"
echo "技能链接数: $TOTAL_SKILLS"
echo ""

# 最终结果
echo "================================"
if [ $FAIL -eq 0 ]; then
    echo -e "${GREEN}✓ 验证通过！${NC}"
    echo -e "${GREEN}通过: $PASS 项${NC}"
    echo ""
    echo "🎉 Andy-IP-Skill 已准备就绪！"
    echo ""
    echo "立即使用:"
    echo "  /andy-ip \"我想做内容\""
    echo ""
    echo "查看文档:"
    echo "  cat $BASE_DIR/README.md"
else
    echo -e "${RED}✗ 验证失败${NC}"
    echo -e "${GREEN}通过: $PASS 项${NC}"
    echo -e "${RED}失败: $FAIL 项${NC}"
    echo ""
    echo "请检查上述失败项并修复"
    exit 1
fi
echo "================================"
