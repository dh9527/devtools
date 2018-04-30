[![license](https://img.shields.io/github/license/mashape/apistatus.svg)](https://github.com/dh9527/devtools)

# devtools

一些开发脚本工具，如linux终端 bash，sh脚本，windows下的powershell 等

### powershell

```powershell
<#
# by YinLu
# 管道处理切换输出编码为utf8再切换回gb2312,
# 此问题解决git commit -m 中文备注信息 => 查看git log $args中文乱码的问题
# 乱码形式 => git commit -m <E6><B5><8B><E8><AF><95> ....
# 不直接profile定义OutputEncoding为utf8是因为powershell提示信息将变为英文，明显不是想要的
#>

function chcpencoding {

    begin {
        [System.Console]::OutputEncoding=[System.Text.Encoding]::GetEncoding(65001)
    }
	
    process {
        $_
    }
	
    end {
        [System.Console]::OutputEncoding=[System.Text.Encoding]::GetEncoding(936)
    }
	
}
```

```text

用法 Usage：

git log --stat | chcpencoding
git $args | chcpencoding

```

### bash, sh

unix 环境shell脚本

### TODO:





