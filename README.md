# Andy IP Skill - AI驱动的IP内容创作工具箱

> 让每个人都能用AI打造个人品牌，让内容创作更简单、更高效。

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Skills Count](https://img.shields.io/badge/Skills-30+-blue.svg)](./skills-claude)
[![GitHub Repos](https://img.shields.io/badge/Ecosystem-20+%20Repos-green.svg)](./docs/github-repos-integration.md)

## 🎯 这是什么？

Andy IP Skill 是一个**统一的个人品牌内容创作工具箱**，整合了30+个AI技能和20+个开源仓库，覆盖从文案创作、PPT制作、视频生成到内容合规的完整链路。

**核心理念**：工具不该分散，能力应该聚合。一个仓库，解决所有IP内容创作需求。

## ✨ 核心能力

### 📝 文案创作
- **andy-mp-writing** - 公众号爆款文章创作（多篇融合+人设注入+利他逻辑）
- **copywriting** - 通用文案创作框架
- **batch-image-text-producer** - 批量图文内容生产
- **content-like-prediction** - 内容点赞预测

### 🎨 PPT工具链
- **ppt-nano-master** - 12+风格PPT快速生成
- **ppt-master** - PPT大师版（高级定制）
- **guizang-ppt-skill** - 归藏风格PPT

关联开源项目：
- [PPTskill](https://github.com/AIPMAndy/PPTskill) - AI生成原生可编辑PPTX
- [LivePPT](https://github.com/AIPMAndy/LivePPT) - 电影级网页演示

### 🎬 视频创作
- **ai-video-producer** - AI视频制片人（选题+脚本+画面）
- **react-video** - React视频生成
- **react-video-generator** - React视频生成器
- **video-frames** - 视频帧分析与处理
- **video-content-analysis** - 视频内容深度分析

关联开源项目：
- [github-repo-to-social-video](./skills-agents/github-repo-to-social-video) - 仓库转短视频

### ✅ 内容合规
- **content-compliance** - 多平台合规检测（小红书/抖音/公众号）

关联开源项目：
- [Andy-Content-Checker](https://github.com/AIPMAndy/Andy-Content-Checker) - 内容审核工具

### 📖 故事/长文创作
- **story (网文工具箱)** - 12个专业写作技能
  - 人物塑造、情节设计、世界观构建、对话润色等

### 🧠 战略与视角
- **andy-perspective** - Andy视角分析
- **andy-whitepaper** - 白皮书创作

## 📦 技能分类

### Skills-Claude（17个）
Claude Code专用技能，位于 `~/.claude/skills/`

```
skills-claude/
├── ai-video-producer/
├── andy-mp-writing/
├── andy-perspective/
├── andy-whitepaper/
├── batch-image-text-producer/
├── content-compliance/
├── content-like-prediction/
├── copywriting/
├── guizang-ppt-skill/
├── ppt-master/
├── ppt-nano-master/
├── react-best-practices/
├── react-content-generator/
├── react-video/
├── react-video-generator/
├── video-content-analysis.md/
└── video-frames/
```

### Skills-Agents（12个）
Agents生态技能，支持多种AI平台

```
skills-agents/
├── story/                              # 网文工具箱（12个子技能）
├── github-repo-to-social-video/        # 仓库转短视频
├── systematic-debugging/               # 系统化调试
├── code-review-and-quality/           # 代码审查
└── ...
```

### Skills-Specialized（0个）
专业领域技能（待补充）

## 🌐 生态整合

除了本地技能，还整合了**20+个开源GitHub仓库**，形成完整的IP内容创作生态：

### 内容生产
- [copyflow](https://github.com/AIPMAndy/copyflow) - 一个主题→10种风格文案+AI配图
- [wechat-explosive-article-skill](https://github.com/AIPMAndy/wechat-explosive-article-skill) - 公众号爆款创作

### 排版工具
- [obsidian-mdskill](https://github.com/AIPMAndy/obsidian-mdskill) - Markdown转公众号HTML
- [MDskill](https://github.com/AIPMAndy/MDskill) - Modern Markdown Editor
- [MDskill-Web](https://github.com/AIPMAndy/MDskill-Web) - 文章排版神器

### IP打造系统
- [IPClaw-for-Seniors](https://github.com/AIPMAndy/IPClaw-for-Seniors) - 让爸妈也能做IP
- [IPClaw-Speech](https://github.com/AIPMAndy/IPClaw-Speech) - AI口播助手
- [IPClawForHealth](https://github.com/AIPMAndy/IPClawForHealth) - 大健康IP打造

### 设计资源
- [AndyImage](https://github.com/AIPMAndy/AndyImage) - AI图像生成提示词库
- [andy-liquid](https://github.com/AIPMAndy/andy-liquid) - 液态效果整合
- [FreeDesign](https://github.com/AIPMAndy/FreeDesign) - 120+精选设计项目

**完整列表**：查看 [GitHub仓库整合文档](./docs/github-repos-integration.md)

## 🚀 快速开始

### 使用Claude Code技能

```bash
# 在Claude Code中调用
/andy-mp-writing  # 创作公众号文章
/ppt-nano-master  # 生成PPT
/ai-video-producer  # 制作视频脚本
/content-compliance  # 检查内容合规
```

### 使用Agents技能

```bash
# 使用story工具箱
/story character-deep-dive  # 人物深度塑造
/story plot-architect      # 情节架构设计

# GitHub仓库转视频
/github-repo-to-social-video
```

### 克隆到本地

```bash
# 克隆仓库
git clone https://github.com/AIPMAndy/andy-ip-skill.git
cd andy-ip-skill

# 查看技能列表
ls skills-claude/
ls skills-agents/
ls skills-specialized/
```

## 📖 使用文档

- [GitHub仓库整合说明](./docs/github-repos-integration.md) - 20+个开源仓库的详细介绍
- [技能使用指南](./docs/) - 每个技能的详细用法（待补充）

## 🤝 贡献指南

欢迎贡献新的技能或改进现有技能：

1. Fork 本仓库
2. 在对应目录下添加新技能
3. 更新README.md
4. 提交Pull Request

**技能开发规范**：
- 每个技能必须包含 `SKILL.md` 说明文档
- 清晰的功能描述和使用示例
- 遵循Andy的核心原则（简洁、高效、可验证）

## 💡 设计理念

### 1. 统一入口
不用在多个仓库间切换，一个工具箱解决所有问题。

### 2. 模块化设计
每个技能独立运行，可单独使用也可组合使用。

### 3. 生态整合
本地技能 + GitHub开源项目，形成完整IP创作生态。

### 4. 持续进化
根据实际使用反馈，不断优化和新增技能。

## 🎯 适用场景

- **个人创作者**：快速生产高质量内容
- **企业品牌**：批量生成营销素材
- **知识IP**：系统化打造个人品牌
- **内容团队**：提升协作效率

## 📊 技能统计

- Claude Code技能：17个
- Agents技能：12个
- 专业技能：0个
- **总计：29个技能**
- **生态仓库：19个**

## 📜 许可证

MIT License - 详见 [LICENSE](LICENSE) 文件

## 🔗 相关链接

- [Andy的Freedom House框架](https://github.com/AIPMAndy/andy-follows/blob/main/docs/freedom-house.md)
- [Andy的GitHub主页](https://github.com/AIPMAndy)
- [完整生态工具列表](./docs/github-repos-integration.md)

## ⭐ Star History

如果这个工具箱对你有帮助，请给个Star支持一下！

---

**让AI成为你的内容创作引擎，让个人品牌打造更简单。**

Made with ❤️ by [Andy](https://github.com/AIPMAndy)
