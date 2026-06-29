# Andy-IP-Skill：AI驱动的IP内容创作工具箱

> 一个聚合Andy所有IP相关技能的统一工具箱，覆盖从内容创作、视频制作到小说写作的全链路。

## 🎯 项目愿景

**让8亿人通过AI实现内容创作自由，让人类智慧闪耀宇宙。**

这不仅是一个技能库，更是一个完整的IP内容生产系统，融合了：
- 对抗式生成保证质量
- 深刻利他的价值观
- 工程化的生产流程
- 多平台适配能力

## 📦 技能分类

### 一、文字内容创作（Claude原生）

#### 1. andy-mp-writing - 公众号写作系统
**核心能力**：对抗式生成（3子Agent：Generator/Critic/Evaluator）
- 讲自己的故事 + 深刻利他 + 少营销
- 适用场景：AI科技解读、个人成长、产品思维、MBTI深度文章
- 输出：1500-2500字高质量公众号文章
- **触发词**：`/andy-mp-writing`、"写公众号"、"写篇文章"

#### 2. andy-whitepaper - 白皮书生成
**核心能力**：结构化深度内容生产
- 系统化研究 + 数据支撑 + 权威性
- 适用场景：行业分析、技术白皮书、商业报告
- 输出：5000+字深度报告
- **触发词**：`/andy-whitepaper`、"写白皮书"、"深度报告"

#### 3. andy-perspective - 视角分析
**核心能力**：多视角解构与分析
- 分析维度：用户视角、商业视角、技术视角、伦理视角
- 适用场景：复杂问题分析、决策支持
- 输出：多维度分析报告
- **触发词**：`/andy-perspective`、"多角度看"、"换个视角"

### 二、视觉内容创作（Claude原生）

#### 4. ai-video-producer - AI视频制作
**核心能力**：视频脚本 + 素材生成 + 成片指导
- 口播友好 + 节奏把控 + 视觉化
- 适用场景：知识科普、产品介绍、教程讲解
- 输出：完整视频脚本 + 制作指南
- **触发词**：`/ai-video-producer`、"做视频"、"视频脚本"

#### 5. batch-image-text-producer - 批量图文生产
**核心能力**：批量生成 + 风格统一 + 高效产出
- 模板化 + 可定制 + 快速迭代
- 适用场景：社交媒体内容、系列海报、批量文案
- 输出：批量图文内容包
- **触发词**：`/batch-image-text-producer`、"批量生成"、"图文内容"

#### 6. ppt-nano-master - 多风格PPT生成
**核心能力**：12+风格PPT自动生成
- 风格：白板/光辉/黑胶风/画架/立体/黑板报/旧画报/毛毡风/拟物毛玻璃/医疗/年度总结/开学第一课/林地/湿壁画
- 适用场景：演讲、汇报、培训、展示
- 输出：完整PPT文件
- **触发词**：`/ppt-nano-master`、"做PPT"、"super-ppt"

### 三、内容质量保障（Claude原生）

#### 7. content-compliance - 内容合规检测
**核心能力**：多平台合规检测
- 支持平台：小红书、抖音、公众号
- 检测维度：敏感词、违禁内容、平台规则
- 输出：合规报告 + 修改建议
- **触发词**：`/content-compliance`、"检查合规"、"能不能发"

#### 8. content-like-prediction - 内容效果预测
**核心能力**：基于历史数据预测内容表现
- 预测维度：点赞、转发、收藏、评论
- 适用场景：内容发布前评估、优化建议
- 输出：预测分数 + 优化建议
- **触发词**：`/content-like-prediction`、"能火吗"、"预测点赞"

### 四、网文创作系统（Codex/Agents）

#### 9. story - 网文工具箱
**核心能力**：网络小说全流程创作系统
- **子技能体系**：
  - `story-long-write` - 长篇小说写作
  - `story-short-write` - 短篇小说写作
  - `story-long-analyze` - 长篇拆文分析
  - `story-short-analyze` - 短篇拆文分析
  - `story-long-scan` - 长篇扫榜选题
  - `story-short-scan` - 短篇扫榜选题
  - `story-deslop` - 去AI味优化
  - `story-cover` - 封面生成
  - `story-import` - 小说导入
  - `story-setup` - 环境部署
- **适用场景**：起点/番茄/晋江/盐言等平台创作
- **输出**：完整小说项目（大纲+章节+封面）
- **触发词**：`/story`、"写小说"、"写网文"、"开书"
- **来源**：Codex/Agents技能（worldwonderer/oh-story-claudecode）

#### 10. github-repo-to-social-video - GitHub仓库转视频
**核心能力**：将GitHub项目转换为社交媒体视频
- 适用场景：技术项目推广、开源项目介绍
- 输出：适合社交平台的视频内容
- **触发词**：`/github-repo-to-social-video`
- **来源**：Agents技能

### 五、MBTI内容创作（专项）

#### 11. mbti-article-to-andy-illustration - MBTI文章配图
**核心能力**：为MBTI文章生成配图
- 适用场景：MBTI深度文章、性格分析内容
- 输出：匹配文章主题的插图
- **触发词**：MBTI相关内容创作
- **来源**：AI+MBTI项目

## 🚀 快速开始

### 安装

```bash
# 克隆仓库
git clone https://github.com/andyzhang0216/andy-ip-skill.git

# 进入目录
cd andy-ip-skill

# 链接到Claude Code技能目录（如已安装Claude Code）
ln -s $(pwd) ~/.claude/skills/andy-ip-skill

# 链接到Codex agents目录（如已安装Codex）
ln -s $(pwd) ~/.agents/skills/andy-ip-skill
```

### 使用主入口

```bash
# Claude Code / OpenCode
/andy-ip "我想写篇公众号文章"

# Codex CLI
$andy-ip "我想做个视频"

# OpenClaw
/skill andy-ip "帮我生成PPT"
```

### 直接使用子技能

```bash
# 示例1：写公众号文章
/andy-mp-writing

# 示例2：生成PPT
/ppt-nano-master

# 示例3：写小说
/story "我想写一本科幻长篇"

# 示例4：批量生成图文
/batch-image-text-producer
```

## 📖 使用场景

### 场景1：完整内容生产链路
1. `/andy-mp-writing` 生成公众号文章
2. `/content-compliance` 检查合规性
3. `/content-like-prediction` 预测效果
4. 优化后发布

### 场景2：多平台内容矩阵
1. `/andy-mp-writing` → 长文（公众号）
2. `/batch-image-text-producer` → 图文（小红书/朋友圈）
3. `/ai-video-producer` → 视频（抖音/视频号）
4. `/ppt-nano-master` → PPT（分享会/培训）

### 场景3：深度内容生产
1. `/andy-perspective` 多视角分析主题
2. `/andy-whitepaper` 生成白皮书
3. `/ppt-nano-master` 生成配套PPT
4. `/ai-video-producer` 生成宣传视频

### 场景4：网文创作全流程
1. `/story-long-scan` 扫榜选题
2. `/story-long-write` 写作开书
3. `/story-cover` 生成封面
4. `/story-deslop` 去AI味优化
5. 上传平台连载

## 🏗️ 技能架构

```
andy-ip-skill/
├── SKILL.md                    # 主入口路由器
├── README.md                   # 本文档
├── LICENSE                     # MIT开源协议
│
├── skills-claude/              # Claude原生技能
│   ├── andy-mp-writing/
│   ├── andy-whitepaper/
│   ├── andy-perspective/
│   ├── ai-video-producer/
│   ├── batch-image-text-producer/
│   ├── ppt-nano-master/
│   ├── content-compliance/
│   └── content-like-prediction/
│
├── skills-agents/              # Codex/Agents技能
│   ├── story/                  # 网文工具箱
│   │   ├── story-long-write/
│   │   ├── story-short-write/
│   │   ├── story-long-analyze/
│   │   ├── story-short-analyze/
│   │   ├── story-long-scan/
│   │   ├── story-short-scan/
│   │   ├── story-deslop/
│   │   ├── story-cover/
│   │   ├── story-import/
│   │   └── story-setup/
│   └── github-repo-to-social-video/
│
├── skills-specialized/         # 专项技能
│   └── mbti-article-to-andy-illustration/
│
├── docs/                       # 文档
│   ├── quick-start.md          # 快速开始
│   ├── best-practices.md       # 最佳实践
│   ├── architecture.md         # 架构设计
│   └── examples/               # 使用示例
│       ├── mp-article-demo.md
│       ├── video-production-demo.md
│       └── novel-writing-demo.md
│
└── templates/                  # 模板库
    ├── article-templates/
    ├── video-scripts/
    └── ppt-styles/
```

## 🎯 设计原则

### 1. First Principles（第一性原理）
- 从根本问题出发，不受行业惯例束缚
- 每个技能都要回答："这解决了什么本质问题？"

### 2. Musk五步工程法
1. **质疑需求**：这个功能真的必要吗？
2. **删除部分**：先删除，删错了再加回来
3. **简化优化**：只优化必须存在的部分
4. **加速周期**：简化后再提速
5. **自动化**：最后才考虑自动化

### 3. Karpathy编码四原则
1. **Think Before Coding**：先思考再编码，暴露假设
2. **Simplicity First**：最少代码解决问题
3. **Surgical Changes**：外科手术式修改，只改必改的
4. **Goal-Driven**：目标驱动，可验证

### 4. Andy核心价值观
- **讲自己的故事**：真实、第一人称、亲身经历
- **深刻利他**：给武器不给安慰，解决真问题
- **少营销**：不硬广、不套路、自然引导

## 🤝 贡献指南

### 贡献新技能

1. Fork本仓库
2. 在对应分类下创建技能目录
3. 添加SKILL.md（必须包含name、description、触发词）
4. 更新主入口SKILL.md的路由表
5. 更新本README的技能列表
6. 提交Pull Request

### 技能质量标准

**必须满足**：
- [ ] 有明确的SKILL.md定义
- [ ] 有清晰的触发词
- [ ] 有可验证的输出
- [ ] 遵循Andy核心价值观
- [ ] 包含使用示例

**推荐满足**：
- [ ] 有详细的README
- [ ] 有测试案例
- [ ] 有最佳实践文档
- [ ] 有错误处理机制

## 📊 技能统计

| 分类 | 技能数 | 状态 |
|------|--------|------|
| 文字内容创作 | 3 | ✅ 已开源 |
| 视觉内容创作 | 3 | ✅ 已开源 |
| 内容质量保障 | 2 | ✅ 已开源 |
| 网文创作系统 | 1主+10子 | 🔄 整合中 |
| 专项技能 | 1 | 🔄 整合中 |
| **总计** | **20+** | **持续更新** |

## 🗺️ Roadmap

### Phase 1：技能聚合（当前）
- [x] 创建主入口路由器
- [x] 整理现有技能清单
- [ ] 迁移Claude原生技能
- [ ] 整合Agents技能
- [ ] 编写统一文档

### Phase 2：质量提升
- [ ] 为所有技能添加示例
- [ ] 统一输出格式
- [ ] 添加自动化测试
- [ ] 优化路由逻辑

### Phase 3：生态扩展
- [ ] 开发VSCode插件
- [ ] 开发Web界面
- [ ] 建立技能市场
- [ ] 社区贡献激励

### Phase 4：AI增强
- [ ] 智能路由推荐
- [ ] 技能自动组合
- [ ] 质量自动评估
- [ ] 个性化定制

## 📄 开源协议

MIT License - 详见 [LICENSE](LICENSE)

## 👨‍💻 作者

**Andy Zhang** (@andyzhang0216)
- 公众号：AI酋长Andy
- GitHub：https://github.com/andyzhang0216
- 使命：让8亿人通过AI实现自由，让人类智慧闪耀宇宙

## 🙏 致谢

感谢所有为开源社区贡献的开发者，特别是：
- worldwonderer - oh-story-claudecode网文工具箱
- Claude Code团队 - 强大的AI编程环境
- Codex社区 - 多Agent协作探索

---

**让内容创作回归本质，让AI成为人类智慧的放大器。**
