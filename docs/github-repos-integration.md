# GitHub 仓库整合说明

本文档列出所有与个人品牌/内容创作相关的 GitHub 开源仓库，供参考和整合。

## 🎯 核心 IP 工具仓库

### 内容生产自动化
1. **copyflow** - 内容生产自动化引擎
   - 地址：https://github.com/AIPMAndy/copyflow
   - 功能：一个主题 → 10种风格文案 + AI配图 + 即发素材
   - 状态：✅ 已开源

2. **wechat-explosive-article-skill** - 公众号爆款文章创作
   - 地址：https://github.com/AIPMAndy/wechat-explosive-article-skill
   - 功能：多篇融合+人设注入+利他+文笔润色+对抗式审核
   - 状态：✅ 已开源

### 内容合规与质量
3. **Andy-Content-Checker** - 内容审核工具
   - 地址：https://github.com/AIPMAndy/Andy-Content-Checker
   - 功能：小红书/抖音/公众号合规检查
   - 状态：✅ 已开源

4. **content-compliance** (本地技能)
   - 功能：多平台合规检测
   - 状态：✅ 已整合

### PPT 工具链
5. **PPTskill** - AI生成原生可编辑PPTX
   - 地址：https://github.com/AIPMAndy/PPTskill
   - 功能：无需设计技能，AI直接生成PPTX
   - 状态：✅ 已开源

6. **LivePPT** - 电影级网页演示
   - 地址：https://github.com/AIPMAndy/LivePPT
   - 功能：把PPT变成电影级网页展示
   - 状态：✅ 已开源

7. **ppt-nano-master** (本地技能)
   - 功能：12+风格PPT生成
   - 状态：✅ 已整合

8. **ppt-master** (本地技能)
   - 功能：PPT大师版
   - 状态：✅ 已整合

9. **guizang-ppt-skill** (本地技能)
   - 功能：归藏PPT风格
   - 状态：✅ 已整合

### Markdown/排版工具
10. **obsidian-mdskill** - Markdown转公众号HTML
    - 地址：https://github.com/AIPMAndy/obsidian-mdskill
    - 功能：精美样式，一键复制到公众号编辑器
    - 状态：✅ 已开源

11. **MDskill** - Modern Markdown Editor
    - 地址：https://github.com/AIPMAndy/MDskill
    - 功能：Apple Silicon优化的Markdown编辑器
    - 状态：✅ 已开源

12. **MDskill-Web** - 文章排版神器
    - 地址：https://github.com/AIPMAndy/MDskill-Web
    - 功能：一键生成精美排版
    - 状态：✅ 已开源

### 图像/设计资源
14. **AndyImage** - AI图像生成提示词库
    - 地址：https://github.com/AIPMAndy/AndyImage
    - 功能：GPT Image 2, Midjourney, Stable Diffusion, DALL-E, Flux, Ideogram
    - 状态：✅ 已开源

15. **andy-liquid** - 液态效果整合
    - 地址：https://github.com/AIPMAndy/andy-liquid
    - 功能：高级感视觉效果
    - 状态：✅ 已开源

16. **FreeDesign** - 面向开发者的设计资源大全
    - 地址：https://github.com/AIPMAndy/FreeDesign
    - 功能：120+ 精选设计项目
    - 状态：✅ 已开源

### IP 打造完整系统
17. **IPClaw-for-Seniors** - 让爸妈也能做IP
    - 地址：https://github.com/AIPMAndy/IPClaw-for-Seniors
    - 功能：3分钟发布第一条内容，30天建立个人品牌
    - 状态：✅ 已开源

18. **IPClaw-Speech** - AI口播助手
    - 地址：https://github.com/AIPMAndy/IPClaw-Speech
    - 功能：选题生成与文案创作
    - 状态：✅ 已开源

19. **IPClawForHealth** - 大健康行业创始人IP打造
    - 地址：https://github.com/AIPMAndy/IPClawForHealth
    - 功能：口播视频创作工具
    - 状态：✅ 已开源

### 辅助工具
20. **wechat-article-exporter** - 微信公众号文章批量下载
    - 地址：https://github.com/AIPMAndy/wechat-article-exporter
    - 功能：批量下载，支持阅读量与评论数据，HTML 100%还原
    - 状态：✅ 已开源（Fork）

21. **HTMLskill** - Python-first HTML生成框架
    - 地址：https://github.com/AIPMAndy/HTMLskill
    - 功能：带设计系统的HTML生成
    - 状态：✅ 已开源

## 📦 整合策略

### Level 1：核心技能（已在 andy-ip-skill）
- ✅ andy-mp-writing
- ✅ ai-video-producer
- ✅ ppt-nano-master
- ✅ content-compliance
- ✅ batch-image-text-producer
- ✅ story（网文工具箱）

### Level 2：扩展技能（建议添加）
- [ ] copywriting - 文案创作
- [ ] ppt-master - PPT大师版
- [ ] guizang-ppt-skill - 归藏PPT
- [ ] react-video - React视频
- [ ] react-video-generator - React视频生成器
- [ ] duizhaochao-script-generator - 剧本生成器

### Level 3：生态工具（作为文档引用）
- copyflow（GitHub仓库）
- PPTskill（GitHub仓库）
- LivePPT（GitHub仓库）
- MDskill系列（GitHub仓库）
- IPClaw系列（GitHub仓库）

## 🔗 如何使用这些仓库

### 1. 直接使用（独立工具）
访问对应仓库，按README安装使用

### 2. 整合到 andy-ip-skill
```bash
# 克隆到本地
cd /tmp
gh repo clone AIPMAndy/copyflow

# 创建技能包装器
cd andy-ip-skill/skills-claude
mkdir copyflow-integration
# 编写SKILL.md调用copyflow工具
```

### 3. 作为参考文档
在 andy-ip-skill 的文档中引用这些工具的最佳实践

## 🎯 推荐整合优先级

### P0（立即整合）
1. copywriting - 基础文案能力
2. ppt-master/guizang-ppt-skill - 补充PPT风格

### P1（近期整合）
3. react-video 系列 - 增强视频能力
4. duizhaochao-script-generator - 剧本创作

### P2（文档引用）
5. 所有GitHub开源工具作为生态补充

## 📝 更新日志

- 2026-07-14：初始整理，列出所有IP相关仓库
- 待续...

---

**让内容创作工具形成生态，让IP打造更简单。**
