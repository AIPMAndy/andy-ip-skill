# MDskill 系列完整工作流

> Markdown写作 → 精美排版 → 一键发布到公众号

## 🎯 MDskill 三剑客

### 1. MDskill - 写作阶段
**仓库**：https://github.com/AIPMAndy/MDskill  
**Stars**：⭐ 2  
**定位**：专业Markdown编辑器

**核心优势**：
- ✅ Apple Silicon原生优化，性能极致
- ✅ 实时预览，所见即所得
- ✅ 专注写作体验，零干扰
- ✅ 支持代码高亮、数学公式、表格

**适用场景**：
- 长文写作（技术文章、教程、白皮书）
- 代码文档编写
- 知识库管理

---

### 2. MDskill-Web - 排版阶段
**仓库**：https://github.com/AIPMAndy/MDskill-Web  
**Stars**：⭐ 47  
**定位**：文章排版神器

**核心优势**：
- ✅ 一键生成12+精美主题
- ✅ 自动适配移动端阅读
- ✅ 代码块、引用、列表样式精致
- ✅ 导出HTML/PDF/图片

**适用场景**：
- 公众号文章排版
- 技术博客美化
- 电子书排版
- 简历/文档美化

---

### 3. obsidian-mdskill - 发布阶段
**仓库**：https://github.com/AIPMAndy/obsidian-mdskill  
**定位**：公众号发布工具

**核心优势**：
- ✅ 一键转换为微信公众号格式
- ✅ 完美适配微信编辑器
- ✅ 保留所有样式（代码高亮、表格、引用）
- ✅ 无需手动调整，直接粘贴

**适用场景**：
- 公众号内容发布
- 知乎/掘金同步发布
- 企业微信文章分享

---

## 🔄 完整工作流示例

### 场景：发布一篇技术教程到公众号

#### 第1步：用 MDskill 写作
```bash
# 打开MDskill编辑器
# 专注写作，使用Markdown语法
# 实时预览效果
```

内容示例：
```markdown
# 如何用AI提升内容创作效率

## 核心方法

1. **选题策划**
   - 用户痛点分析
   - 关键词研究

2. **内容生成**
   - AI辅助写作
   - 人工润色优化

## 代码示例

​```python
def generate_content(topic):
    return ai.create(topic)
​```
```

#### 第2步：用 MDskill-Web 排版
1. 访问 https://mdskill-web.vercel.app
2. 粘贴Markdown内容
3. 选择主题（推荐"科技蓝"或"极简黑"）
4. 一键生成精美排版
5. 预览效果，微调样式

**效果对比**：
- 原始Markdown：朴素文本
- 排版后：标题层次分明、代码高亮、引用框精美

#### 第3步：用 obsidian-mdskill 发布
1. 在MDskill-Web点击"复制HTML"
2. 打开公众号编辑器
3. 直接粘贴（Ctrl+V / Cmd+V）
4. 所有样式完美保留
5. 发布！

**时间对比**：
- 传统方式：写作2小时 + 排版调整1小时 = 3小时
- MDskill流程：写作2小时 + 一键排版3分钟 = 2小时3分钟
- **效率提升**：33% ⚡

---

## 💼 真实使用案例

### 案例1：技术博主日更
**用户**：前端开发者，每天分享一个技术知识点

**之前痛点**：
- 在Word里写，排版丑
- 复制到公众号后格式全乱
- 代码块没有高亮
- 每天花30分钟调格式

**使用MDskill后**：
- MDskill写作（专注内容）
- MDskill-Web一键排版（选"代码风"主题）
- obsidian-mdskill复制粘贴
- **排版时间从30分钟降到2分钟** ⚡

---

### 案例2：产品经理写PRD
**用户**：B端产品经理，需要写详细需求文档

**之前痛点**：
- Word格式僵硬
- 多人协作版本混乱
- 导出PDF样式不统一

**使用MDskill后**：
- MDskill写作（Markdown易于版本控制）
- Git管理版本（团队协作）
- MDskill-Web导出精美PDF
- **文档质量提升，协作效率提升50%** 📈

---

### 案例3：培训讲师制作讲义
**用户**：企业培训讲师，每月制作5份课程讲义

**之前痛点**：
- PPT太重，Markdown太简陋
- 想要网页版讲义但不会前端
- 打印版和网页版要做两遍

**使用MDskill后**：
- MDskill写作（结构化内容）
- MDskill-Web生成网页版（学员在线查看）
- 同时导出PDF版（打印装订）
- **制作时间从2天降到4小时** 🚀

---

## 🎨 主题选择建议

| 内容类型 | 推荐主题 | 特点 |
|---------|---------|------|
| 技术教程 | 代码风/科技蓝 | 代码高亮清晰 |
| 产品思考 | 极简黑/商务灰 | 专业感强 |
| 生活分享 | 温暖橙/清新绿 | 亲和力强 |
| 深度长文 | 阅读模式 | 护眼，适合长时间阅读 |
| 数据报告 | 图表风 | 表格、图表展示友好 |

---

## 🔧 进阶技巧

### 1. 自定义CSS样式
在MDskill-Web中可以注入自定义CSS：

```css
/* 自定义标题颜色 */
h1 { color: #2563eb; }

/* 自定义代码块背景 */
pre { background: #1e293b; }

/* 自定义引用框样式 */
blockquote {
  border-left: 4px solid #f59e0b;
  background: #fef3c7;
}
```

### 2. 批量处理文章
如果有多篇文章需要排版：

```bash
# 写个脚本调用MDskill-Web API
for file in *.md; do
  curl -X POST https://api.mdskill.com/convert \
    -d @"$file" \
    > "${file%.md}.html"
done
```

### 3. 配合AI工具
```
用户：写一篇关于XXX的文章
AI：生成Markdown内容
→ 复制到MDskill微调
→ MDskill-Web排版
→ obsidian-mdskill发布
```

---

## 🆚 与其他方案对比

| 方案 | MDskill系列 | 微信原生编辑器 | 秀米/135编辑器 | Typora+手动 |
|-----|-----------|-------------|--------------|-----------|
| **写作体验** | ⭐⭐⭐⭐⭐ | ⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐⭐ |
| **排版速度** | ⭐⭐⭐⭐⭐ | ⭐⭐ | ⭐⭐⭐⭐ | ⭐⭐ |
| **样式质量** | ⭐⭐⭐⭐⭐ | ⭐⭐ | ⭐⭐⭐⭐ | ⭐⭐⭐ |
| **代码高亮** | ⭐⭐⭐⭐⭐ | ❌ | ⭐⭐⭐ | ⭐⭐⭐⭐ |
| **学习成本** | ⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐ |
| **费用** | 免费 | 免费 | 部分付费 | 免费 |

---

## 📚 相关资源

- [MDskill GitHub](https://github.com/AIPMAndy/MDskill)
- [MDskill-Web GitHub](https://github.com/AIPMAndy/MDskill-Web)
- [obsidian-mdskill GitHub](https://github.com/AIPMAndy/obsidian-mdskill)
- [Markdown语法速查](https://www.markdownguide.org/cheat-sheet/)

---

## 💡 最佳实践

### ✅ 推荐做法
1. **写作与排版分离**：先专注内容，后考虑样式
2. **建立模板库**：常用文章类型保存为模板
3. **版本控制**：Markdown文件用Git管理
4. **定期备份**：重要文章多处备份

### ❌ 避免的坑
1. 不要在公众号编辑器里直接写作（易丢失）
2. 不要过度排版（内容>形式）
3. 不要每篇文章换主题（保持品牌一致性）
4. 不要忽略移动端预览

---

**让写作回归写作，让排版交给工具。**

Made with ❤️ by [Andy](https://github.com/AIPMAndy)
