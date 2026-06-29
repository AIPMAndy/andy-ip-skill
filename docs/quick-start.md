# Andy-IP-Skill 快速开始指南

## 前置条件

- 已安装 Claude Code、Codex CLI 或 OpenCode
- 已配置基本的 AI 环境
- 了解基本的命令行操作

## 安装步骤

### 方式1：直接使用（推荐）

如果你已经在使用 Claude Code：

```bash
# 克隆到本地
cd ~/Downloads
git clone https://github.com/andyzhang0216/andy-ip-skill.git

# 链接到技能目录
ln -s ~/Downloads/andy-ip-skill ~/.claude/skills/andy-ip-skill

# 验证安装
ls -la ~/.claude/skills/andy-ip-skill
```

### 方式2：源码安装

```bash
# 克隆到技能目录
git clone https://github.com/andyzhang0216/andy-ip-skill.git ~/.claude/skills/andy-ip-skill

# 进入目录
cd ~/.claude/skills/andy-ip-skill

# 查看技能列表
cat README.md
```

### 方式3：多环境安装

如果你同时使用 Claude Code 和 Codex：

```bash
# 克隆到共享位置
git clone https://github.com/andyzhang0216/andy-ip-skill.git ~/ai-skills/andy-ip-skill

# 链接到 Claude
ln -s ~/ai-skills/andy-ip-skill ~/.claude/skills/andy-ip-skill

# 链接到 Agents
ln -s ~/ai-skills/andy-ip-skill ~/.agents/skills/andy-ip-skill
```

## 第一次使用

### 1. 测试主入口

```bash
# 在 Claude Code 中输入
/andy-ip 我想做内容
```

你会看到路由菜单，选择你想做的内容类型。

### 2. 直接使用子技能

**写公众号文章**：
```bash
/andy-mp-writing
```

系统会问你3个问题：
1. 主题是什么？
2. 目标读者是谁？
3. 有什么亲身经历或观察？

**生成PPT**：
```bash
/ppt-nano-master
```

告诉它你要做什么主题的PPT，它会生成12种风格供选择。

**写小说**：
```bash
/story "我想写一本都市爽文"
```

## 常见使用场景

### 场景1：日常公众号更新

```bash
# 1. 确定选题（可选）
/andy-perspective "AI对教育的影响"

# 2. 写文章
/andy-mp-writing
# 主题：AI让教育回归本质
# 读者：教育工作者、家长
# 故事：我观察到我女儿用AI学习的变化

# 3. 检查合规
/content-compliance

# 4. 预测效果
/content-like-prediction

# 5. 优化后发布
```

### 场景2：制作课程PPT

```bash
# 1. 生成PPT
/ppt-nano-master
# 主题：First Principles思维方法
# 风格：选择"白板风"（教学场景）

# 2. 如果需要配套视频
/ai-video-producer
# 告诉它PPT的内容，生成配套口播脚本
```

### 场景3：批量生产社交媒体内容

```bash
# 1. 批量生成图文
/batch-image-text-producer
# 主题：AI工具使用技巧
# 数量：10条
# 平台：小红书

# 2. 逐条检查合规
/content-compliance
```

### 场景4：开启网文创作

```bash
# 1. 扫榜选题
/story-long-scan
# 告诉它你想写的类型（如：都市、科幻、玄幻）

# 2. 拆文学习
/story-long-analyze
# 提供一本你想学习的同类爆款书

# 3. 开始写作
/story-long-write
# 按照提示完成大纲、人设、开篇

# 4. 生成封面
/story-cover

# 5. 去AI味
/story-deslop
```

## 核心技能使用要点

### andy-mp-writing（最常用）

**成功三要素**：
1. **讲自己的故事**：必须有真实的第一人称经历
2. **深刻利他**：给读者可执行的建议，不是心灵鸡汤
3. **少营销**：结尾可以引导，但不能破坏阅读体验

**输入技巧**：
- ✅ "我最近观察到公司里用AI的同事工作效率提升了3倍"
- ✅ "后台有人问我怎么让孩子学会提问"
- ❌ "有个朋友说..." （不要用"有个朋友"）
- ❌ "研究表明..." （除非你真的研究过）

### story（网文创作）

**首次使用必须**：
```bash
/story-setup
```
这会初始化创作环境。

**写作流程**：
1. 选题（扫榜） → 2. 拆文学习 → 3. 大纲设定 → 4. 开始连载

**去AI味技巧**：
- 每写完一章都跑一次 `/story-deslop`
- 重点优化对话和动作描写
- 避免"嘴角微微上扬"这类AI痕迹

### ppt-nano-master

**12种风格选择指南**：
- **白板/光辉**：商务汇报、正式演讲
- **黑胶风/画架**：创意展示、设计类
- **立体/拟物毛玻璃**：科技产品、现代感
- **黑板报/开学第一课**：教育培训
- **旧画报/毛毡风**：复古怀旧风格
- **医疗**：医疗健康领域
- **年度总结**：年终汇报
- **林地/湿壁画**：自然、艺术主题

## 故障排查

### 问题1：技能无法找到

```bash
# 检查技能是否正确链接
ls -la ~/.claude/skills/andy-ip-skill

# 如果不存在，重新链接
ln -s <你的克隆路径> ~/.claude/skills/andy-ip-skill
```

### 问题2：路由不工作

```bash
# 确认 SKILL.md 存在
cat ~/.claude/skills/andy-ip-skill/SKILL.md

# 尝试直接调用子技能
/andy-mp-writing
```

### 问题3：子技能报错

某些技能（如story系列）依赖特定环境：

```bash
# 对于story技能，需要先setup
/story-setup

# 对于需要浏览器的技能，确保browser-cdp可用
/browser-cdp
```

## 进阶使用

### 技能组合

**组合1：深度内容生产**
```bash
/andy-perspective → /andy-whitepaper → /ppt-nano-master → /ai-video-producer
```

**组合2：多平台分发**
```bash
/andy-mp-writing → /batch-image-text-producer → /ai-video-producer
```

**组合3：内容质量保障**
```bash
(任何内容) → /content-compliance → /content-like-prediction → 优化 → 发布
```

### 自定义工作流

在 `~/.claude/skills/` 创建自己的组合技能：

```bash
# 创建自定义技能
mkdir ~/.claude/skills/my-content-flow

# 编写 SKILL.md
# 在其中调用 andy-ip-skill 的子技能
```

## 获取帮助

- **查看完整文档**：`cat ~/.claude/skills/andy-ip-skill/README.md`
- **提问题**：https://github.com/andyzhang0216/andy-ip-skill/issues
- **查看示例**：`~/.claude/skills/andy-ip-skill/docs/examples/`

## 下一步

1. 阅读 [最佳实践](./best-practices.md)
2. 查看 [使用示例](./examples/)
3. 了解 [架构设计](./architecture.md)

---

开始你的第一个内容创作吧！🚀
