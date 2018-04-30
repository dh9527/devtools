<# 
# 管道处理切换输出编码为utf8再切换回gb2312,
# 此问题解决git commit -m 中文备注信息 => 查看git log $args中文乱码的问题
# 不直接profile定义OutputEncoding为utf8是因为powershell提示信息将变为英文，明显不是想要的
#>
function chcpencoding {

	begin {
        [System.Console]::OutputEncoding=[System.Text.Encoding]::GetEncoding(65001)
    }
	
    process {
        # If $_.name.toLower().endsWith(".exe")
        # 输出 Write-Output $_
        $_
    }
	
    end {
        [System.Console]::OutputEncoding=[System.Text.Encoding]::GetEncoding(936)
    }
	
}