<h1>Vim</h1>

# 1. 技巧

| 功能 | 步骤 | 简要描述 |
| :-: | :-: | :-: |
| visual block模式 | normal => ctrl + v | 进入到可视化模式
| 指定代码块移动 | normal => : => n1, n2, m n3 | [n1, n2]的内容移动到n3行之下
| 指定代码块拷贝 | normal => : => n1, n3 co n3 | [n1, n2]的内容拷贝到n3行之下
| 指定列位置多行插入 | normal => visual block => select => shift + i => edit => esc | FIXME
| 选中区域末列位置多行插入 | normal => visual block => select => shift + a => edit => esc | FIXME
| 选中矩形区域剪切 | normal => visual block => select => x | FIXME
| 代码补全 | normal => insert => ctrl + shift + p | FIXME
| open时定位行数 | vim XXX.log +N | 打开XXX.log时自动定位到N行
| 当前字符转换大小写，并递增光标 | normal => ~ | FIXME
| 当前n个字符转换大小写，并递增光标n位 | normal => n => ~ | 普通模式下，输入n(具体字符数)，然后再按~
| 所有行首/行尾插入字符 | normal => : => %s/^/\t/g or %s/$/hello/g | FIXME
| 替换单(多)个字符 | 光标移动到字符处 => normal => n(替换字符数，可选) => r + replace char| FIXME
| 光标跳跃到第一行/最后一行 | normal => gg or shift + g | FIXME
| 光标跳跃到行首 | insert => Home | FIXME 
| 光标跳跃到行首 | normal => shift + 6 | FIXME 
| 光标跳跃到行首 | normal => 0 | FIXME 
| 光标跳跃到行尾 | insert => End | FIXME 
| 光标跳跃到行尾 | normal => shift + $ | FIXME 
| 光标跳跃到从该行起第n行行尾 | normal => n => shift + $ | FIXME 
| 删除该行 | normal => dd | FIXME
| 复制该行 | normal => yy | FIXME
| 粘贴复制内容 | normal => p | FIXME
| 删除整个文件 | normal => gg => d => shift + g | FIXME
| 删除文件末行到该行之间的所有行（包括该行）| normal => d => shift + g | FIXME
| 删除文件首行到该行之间的所有行（包括该行）| normal => d => gg | FIXME
| 选中代码块(行) | normal => shift + v => ⬆⬇ | FIXME
| 选中代码块(字符) | normal => v => ⬆⬇ | FIXME
| 剪切单个字符 | normal => x | FIXME
| 剪切多个字符 | normal => n => x | FIXME
| 剪切代码块 | 任意方式选中 => x | FIXME
| 复制代码块 | 任意方式选中 => y | FIXME
| 局部全局替换 | normal => 选中代码块 => : => '<,'>s/xxx/aaa/g | 将区域中的xxx全部替换为aaa
| 单行全局替换 | normal => : => s/xxx/aaa/g | 将该行中的xxx全部替换为aaa
| 全文件全局替换 | normal => : => %s/xxx/aaa/g | 将文件中的xxx全部替换为aaa
| 单行首次匹配替换 | normal => : => s/xxx/aaa | 将改行中首次匹配到的xxx替换为aaa
| 局部首次匹配替换 | normal => 选中代码块 => : => '<,'>s/xxx/aaa | 将区域中首次匹配到的xxx替换为aaa
| 全文件首次匹配替换 | normal => : => %s/xxx/aaa | 将区域中首次匹配到的xxx替换为aaa
