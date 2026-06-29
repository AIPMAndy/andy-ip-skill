# Andy-IP-Skill 技能清单

> 完整的IP内容创作技能索引

## 按分类索引

### 📝 文字内容创作

| 技能名 | 触发词 | 输出 | 来源 | 状态 |
|--------|--------|------|------|------|
| andy-mp-writing | `/andy-mp-writing` | 公众号文章（1500-2500字） | Claude | ✅ |
| andy-whitepaper | `/andy-whitepaper` | 白皮书（5000+字） | Claude | ✅ |
| andy-perspective | `/andy-perspective` | 多维度分析报告 | Claude | ✅ |

### 🎬 视觉内容创作

| 技能名 | 触发词 | 输出 | 来源 | 状态 |
|--------|--------|------|------|------|
| ai-video-producer | `/ai-video-producer` | 视频脚本+制作指南 | Claude | ✅ |
| batch-image-text-producer | `/batch-image-text-producer` | 批量图文内容包 | Claude | ✅ |
| ppt-nano-master | `/ppt-nano-master` | 多风格PPT | Claude | ✅ |
| github-repo-to-social-video | `/github-repo-to-social-video` | GitHub转视频 | Agents | 🔄 |

### ✅ 内容质量保障

| 技能名 | 触发词 | 输出 | 来源 | 状态 |
|--------|--------|------|------|------|
| content-compliance | `/content-compliance` | 合规报告+修改建议 | Claude | ✅ |
| content-like-prediction | `/content-like-prediction` | 预测分数+优化建议 | Claude | ✅ |

### 📚 网文创作系统

| 技能名 | 触发词 | 输出 | 来源 | 状态 |
|--------|--------|------|------|------|
| story | `/story` | 路由入口 | Agents | ✅ |
| story-long-write | `/story-long-write` | 长篇小说 | Agents | ✅ |
| story-short-write | `/story-short-write` | 短篇小说 | Agents | ✅ |
| story-long-analyze | `/story-long-analyze` | 长篇拆文 | Agents | ✅ |
| story-short-analyze | `/story-short-analyze` | 短篇拆文 | Agents | ✅ |
| story-long-scan | `/story-long-scan` | 长篇扫榜 | Agents | ✅ |
| story-short-scan | `/story-short-scan` | 短篇扫榜 | Agents | ✅ |
| story-deslop | `/story-deslop` | 去AI味 | Agents | ✅ |
| story-cover | `/story-cover` | 封面生成 | Agents | ✅ |
| story-import | `/story-import` | 小说导入 | Agents | ✅ |
| story-setup | `/story-setup` | 环境部署 | Agents | ✅ |

### 🎯 专项技能

| 技能名 | 触发词 | 输出 | 来源 | 状态 |
|--------|--------|------|------|------|
| mbti-article-to-andy-illustration | 自动触发 | MBTI配图 | Specialized | 🔄 |

## 按使用频率索引

### 高频使用（⭐⭐⭐⭐⭐）

1. **andy-mp-writing** - 每周至少2-3次
2. **content-compliance** - 每次发布前必用
3. **ppt-nano-master** - 演讲/培训必备

### 中频使用（⭐⭐⭐）

4. **batch-image-text-producer** - 批量生产时
5. **ai-video-producer** - 做视频时
6. **story-long-write** - 网文创作者

### 低频使用（⭐⭐）

7. **andy-whitepaper** - 深度报告时
8. **content-like-prediction** - 大型内容发布前
9. **andy-perspective** - 复杂问题分析

### 专用场景（⭐）

10. story系列其他技能 - 网文创作专用
11. github-repo-to-social-video - GitHub项目推广
12. mbti配图 - MBTI内容专用

## 按输出类型索引

### 长文本输出
- andy-mp-writing（1500-2500字）
- andy-whitepaper（5000+字）
- story-long-write（连载小说）

### 结构化输出
- andy-perspective（多维度报告）
- content-compliance（检测报告）
- story-long-analyze（拆文报告）

### 视觉输出
- ppt-nano-master（PPT文件）
- batch-image-text-producer（图文包）
- story-cover（封面图）

### 指导性输出
- ai-video-producer（脚本+制作指南）
- content-like-prediction（评分+建议）
- story-deslop（优化建议）

## 技能依赖关系

```
andy-ip-skill (主入口)
├── 独立技能（无依赖）
│   ├── andy-mp-writing
│   ├── andy-whitepaper
│   ├── andy-perspective
│   ├── ppt-nano-master
│   └── content-compliance
│
├── 需要外部工具
│   ├── ai-video-producer (需要视频编辑工具)
│   ├── batch-image-text-producer (需要图片生成工具)
│   └── github-repo-to-social-video (需要GitHub访问)
│
└── 需要环境配置
    └── story系列 (需要先运行story-setup)
```

## 技能组合推荐

### 组合1：公众号全流程
```
andy-perspective → andy-mp-writing → content-compliance → content-like-prediction
```

### 组合2：多平台分发
```
andy-mp-writing (长文) ┬→ batch-image-text-producer (图文)
                         ├→ ai-video-producer (视频)
                         └→ ppt-nano-master (PPT)
```

### 组合3：网文创作流程
```
story-long-scan → story-long-analyze → story-long-write → story-cover → story-deslop
```

### 组合4：深度内容生产
```
andy-perspective → andy-whitepaper ┬→ ppt-nano-master
                                    └→ ai-video-producer
```

## 更新日志

### v1.0.0 (2026-06-29)
- ✅ 创建主入口路由系统
- ✅ 整合8个Claude原生技能
- ✅ 整合story网文工具箱（11个子技能）
- ✅ 添加GitHub转视频技能
- ✅ 创建完整文档体系
- 🔄 待整合MBTI专项技能

### 规划中
- [ ] 添加更多内容合规平台支持
- [ ] 增强内容效果预测能力
- [ ] 开发Web界面
- [ ] 建立技能市场

## 技能维护状态

| 状态 | 说明 | 图标 |
|------|------|------|
| 活跃维护 | 定期更新，bug及时修复 | ✅ |
| 整合中 | 正在迁移或整合到统一体系 | 🔄 |
| 计划中 | 已规划但未开始开发 | 📋 |
| 已废弃 | 不再维护 | ❌ |

---

**总计**：20+ 技能 | 8个独立技能 + 11个网文子技能 + 若干专项技能

最后更新：2026-06-29
