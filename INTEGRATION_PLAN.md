# Andy-IP-Skill 整合计划

## 目标

将分散在不同位置的IP相关技能统一整合到 `andy-ip-skill` 中，建立统一的维护和开源体系。

## 当前状态分析

### Claude Skills（~/.claude/skills/）
已识别的IP技能：
- ✅ andy-mp-writing
- ✅ andy-whitepaper
- ✅ andy-perspective
- ✅ ai-video-producer
- ✅ batch-image-text-producer
- ✅ ppt-nano-master
- ✅ content-compliance
- ✅ content-like-prediction

### Agents Skills（~/.agents/skills/）
已识别的IP技能：
- ✅ story（主入口）
  - story-long-write
  - story-short-write
  - story-long-analyze
  - story-short-analyze
  - story-long-scan
  - story-short-scan
  - story-deslop
  - story-cover
  - story-import
  - story-setup
- ✅ github-repo-to-social-video

### Desktop项目（~/Desktop/01 AI+IP/）
需要评估的内容：
- 🔄 AI+MBTI/skills/mbti-article-to-andy-illustration
- 🔄 其他可能的专项技能

## 整合策略

### 方案A：软链接模式（推荐）
**优势**：
- 保持原技能位置不变
- 技能仍可独立使用
- 易于维护和更新
- 不破坏现有工作流

**实施**：
```bash
andy-ip-skill/
├── skills-claude/        # 软链接到 ~/.claude/skills/
├── skills-agents/        # 软链接到 ~/.agents/skills/
└── skills-specialized/   # 软链接到专项技能
```

### 方案B：复制模式
**优势**：
- 完全独立的仓库
- 易于开源分发
- 版本控制清晰

**劣势**：
- 需要双向同步
- 维护成本高

**决策**：先用方案A，开源时用方案B复制出独立仓库

## 实施步骤

### Phase 1：建立软链接结构（当前）

```bash
# 1. 创建分类目录
mkdir -p ~/.claude/skills/andy-ip-skill/skills-claude
mkdir -p ~/.claude/skills/andy-ip-skill/skills-agents
mkdir -p ~/.claude/skills/andy-ip-skill/skills-specialized

# 2. 链接 Claude 技能
cd ~/.claude/skills/andy-ip-skill/skills-claude
ln -s ../../andy-mp-writing ./
ln -s ../../andy-whitepaper ./
ln -s ../../andy-perspective ./
ln -s ../../ai-video-producer ./
ln -s ../../batch-image-text-producer ./
ln -s ../../ppt-nano-master ./
ln -s ../../content-compliance ./
ln -s ../../content-like-prediction ./

# 3. 链接 Agents 技能
cd ~/.claude/skills/andy-ip-skill/skills-agents
ln -s ~/.agents/skills/story ./
ln -s ~/.agents/skills/github-repo-to-social-video ./

# 4. 链接专项技能（如有）
cd ~/.claude/skills/andy-ip-skill/skills-specialized
ln -s ~/Desktop/01\ AI+IP/AI+MBTI/skills/mbti-article-to-andy-illustration ./
```

### Phase 2：更新路由系统

- [x] 创建主入口 SKILL.md
- [x] 添加所有技能的路由规则
- [x] 测试路由功能
- [ ] 优化路由逻辑（智能匹配）

### Phase 3：文档完善

- [x] README.md（项目说明）
- [x] SKILL_INDEX.md（技能清单）
- [x] quick-start.md（快速开始）
- [x] LICENSE（MIT协议）
- [ ] best-practices.md（最佳实践）
- [ ] architecture.md（架构设计）
- [ ] examples/（使用示例）
  - [ ] mp-article-demo.md
  - [ ] video-production-demo.md
  - [ ] novel-writing-demo.md
  - [ ] multi-platform-demo.md

### Phase 4：开源准备

- [ ] 创建 GitHub 仓库
- [ ] 复制所有技能到独立仓库
- [ ] 添加 CI/CD（自动测试）
- [ ] 编写贡献指南
- [ ] 设置 Issue 模板
- [ ] 创建 Discussions

### Phase 5：生态建设

- [ ] 开发 VSCode 插件
- [ ] 创建 Web 演示界面
- [ ] 建立技能市场
- [ ] 社区激励机制

## 技能迁移检查清单

每个技能迁移时需要确认：

- [ ] SKILL.md 存在且格式正确
- [ ] 有清晰的 name 和 description
- [ ] 有明确的触发词
- [ ] 有使用示例
- [ ] 路由规则已添加
- [ ] 文档已更新
- [ ] 测试通过

## 质量标准

### 必须满足（P0）
- [x] 主入口路由功能正常
- [x] 所有技能可独立调用
- [ ] 基本文档完整
- [ ] LICENSE 明确

### 推荐满足（P1）
- [ ] 每个技能有详细说明
- [ ] 有使用示例
- [ ] 有最佳实践文档
- [ ] 有故障排查指南

### 可选满足（P2）
- [ ] 自动化测试
- [ ] 性能监控
- [ ] 使用统计
- [ ] 社区支持

## 风险与对策

### 风险1：技能依赖冲突
**对策**：
- 每个技能保持独立性
- 明确标注依赖关系
- 提供环境检查脚本

### 风险2：维护成本高
**对策**：
- 优先整合高频使用技能
- 低频技能保持现状
- 建立自动化测试

### 风险3：版本不一致
**对策**：
- 使用软链接保持同步
- 开源版本定期手动同步
- 添加版本检查机制

## 时间规划

### Week 1（当前）
- [x] 创建主入口和基本结构
- [x] 完成核心文档
- [ ] 建立软链接结构
- [ ] 测试基本功能

### Week 2
- [ ] 完善所有文档
- [ ] 添加使用示例
- [ ] 内部测试和优化

### Week 3
- [ ] 创建 GitHub 仓库
- [ ] 准备开源版本
- [ ] 编写详细的贡献指南

### Week 4
- [ ] 正式开源发布
- [ ] 社区推广
- [ ] 收集反馈

## 成功指标

### 技术指标
- 所有技能可正常调用
- 路由准确率 > 95%
- 文档覆盖率 100%
- 测试覆盖率 > 80%

### 使用指标
- 月活跃用户 > 100
- GitHub Stars > 200
- 社区贡献者 > 10

### 内容指标
- 使用 andy-ip-skill 产出内容 > 50篇/月
- 内容质量评分 > 8/10
- 用户满意度 > 90%

## 下一步行动

立即执行：
1. 运行迁移脚本建立软链接
2. 测试主入口路由功能
3. 完善剩余文档

近期规划：
1. 添加更多使用示例
2. 优化路由逻辑
3. 准备开源发布

长期规划：
1. 建立技能生态
2. 开发配套工具
3. 社区运营

---

**更新日期**：2026-06-29  
**负责人**：Andy Zhang  
**状态**：Phase 1 进行中
