# 手动推送 Andy-IP-Skill 到 GitHub

## 问题诊断

当前问题：
- ❌ 无法解析 api.github.com（DNS/网络问题）
- ❌ gh CLI token 已失效

## 解决方案

### 步骤1：检查网络

```bash
# 测试网络连接
ping github.com
ping api.github.com

# 如果ping不通，可能需要：
# 1. 检查网络连接
# 2. 检查防火墙/VPN设置
# 3. 检查DNS设置
```

### 步骤2：重新认证 gh CLI

```bash
# 方式1：通过浏览器认证
gh auth login

# 按提示选择：
# ? What account do you want to log into? GitHub.com
# ? What is your preferred protocol for Git operations? HTTPS
# ? Authenticate Git with your GitHub credentials? Yes
# ? How would you like to authenticate GitHub CLI? Login with a web browser

# 方式2：使用token认证
gh auth login --with-token
# 然后粘贴你的GitHub Personal Access Token
```

生成token地址：https://github.com/settings/tokens/new
需要的权限：
- ✅ repo（完整仓库访问）
- ✅ workflow
- ✅ admin:org（如果要创建组织仓库）

### 步骤3：创建仓库并推送

**方式A：使用 gh CLI（推荐）**

```bash
cd ~/.claude/skills/andy-ip-skill

# 创建私有仓库
gh repo create andy-ip-skill \
  --private \
  --source=. \
  --description "Andy IP内容创作工具箱 - 聚合所有IP相关技能的统一入口" \
  --push
```

**方式B：手动创建（如果gh CLI仍有问题）**

1. 打开浏览器访问：https://github.com/new

2. 填写信息：
   - Repository name: `andy-ip-skill`
   - Description: `Andy IP内容创作工具箱 - 聚合所有IP相关技能的统一入口`
   - **选择 Private ✓**
   - ❌ 不要勾选 "Add a README file"
   - ❌ 不要勾选 "Add .gitignore"
   - ❌ 不要勾选 "Choose a license"
   
3. 点击 "Create repository"

4. 在终端执行：

```bash
cd ~/.claude/skills/andy-ip-skill

# 添加远程仓库（根据你的GitHub用户名修改）
git remote add origin git@github.com:andyzhang0216/andy-ip-skill.git

# 或使用HTTPS（如果SSH有问题）
# git remote add origin https://github.com/andyzhang0216/andy-ip-skill.git

# 推送代码
git push -u origin main
```

### 步骤4：验证推送成功

访问：https://github.com/andyzhang0216/andy-ip-skill

应该看到：
- 🔒 私有仓库标识
- ✅ 完整的README.md（自动显示）
- ✅ 35个文件
- ✅ 2个提交
- ✅ MIT License标识

## 当前Git状态

```
项目位置: ~/.claude/skills/andy-ip-skill
分支: main
提交数: 2
文件数: 35
代码行: 2837

最新提交:
- c67480e docs: 添加GitHub推送指南
- 781bf07 feat: 初始化 Andy-IP-Skill v1.0.0-alpha
```

## 快速命令

```bash
# 查看当前状态
cd ~/.claude/skills/andy-ip-skill
git status

# 查看提交历史
git log --oneline

# 查看远程仓库（推送后）
git remote -v

# 查看GitHub仓库信息（推送后）
gh repo view
```

## 推送后的后续操作

### 1. 添加Topics标签

访问仓库页面，点击⚙️设置，在Topics中添加：
- `ai`
- `content-creation`
- `claude-code`
- `claude-skill`
- `ip`
- `writing-tools`

### 2. 配置仓库设置

在 Settings 中：
- ✅ Issues：启用（方便反馈）
- ❌ Wikis：禁用（文档在README中）
- ❌ Projects：禁用（暂不需要）
- ✅ Discussions：可选（未来社区）

### 3. 添加分支保护（可选）

Settings → Branches → Add rule:
- Branch name pattern: `main`
- ✅ Require pull request reviews before merging
- ✅ Require status checks to pass before merging

## 注意事项

### 关于软链接

Git记录的是软链接本身，不是链接的内容。推送后GitHub上显示：

```
skills-claude/andy-mp-writing -> ../../andy-mp-writing
```

这意味着：
- ✅ 本地使用完全正常
- ⚠️ 其他人clone需要先安装依赖技能
- 💡 未来公开时考虑改为实际文件或submodules

### 如果要让其他人也能用

需要添加安装脚本或文档说明：
1. 先安装各个独立技能
2. 运行 `scripts/integrate.sh` 建立链接
3. 或将软链接替换为实际文件副本

---

**准备就绪，等待网络恢复后执行！**
