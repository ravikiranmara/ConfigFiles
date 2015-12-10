set-alias vim "C:\Program Files\Vim\vim74\vim.exe"
set-alias gvim "C:\Program Files\Vim\vim74\gvim.exe"
set-alias vimdiff "C:\Program Files\Vim\vim74\diff.exe"

set-alias d "set-location"
set-alias f "set-location .."

set-alias n "C:\windows\system32\notepad2.exe"
function l
{
	ls  | Format-Wide -AutoSize -Property name
}

function ll
{
    param ($dir = ".", $all = $false) 

    $origFg = $host.ui.rawui.foregroundColor 
    if ( $all ) { $toList = ls -force $dir }
    else { $toList = ls $dir }

    foreach ($Item in $toList)  
    { 
        Switch ($Item.Extension)  
        { 
            ".Exe" {$host.ui.rawui.foregroundColor = "Yellow"} 
            ".cmd" {$host.ui.rawui.foregroundColor = "Red"} 
            ".msh" {$host.ui.rawui.foregroundColor = "Red"} 
            ".vbs" {$host.ui.rawui.foregroundColor = "Red"} 
            Default {$host.ui.rawui.foregroundColor = $origFg} 
        } 
        if ($item.Mode.StartsWith("d")) {$host.ui.rawui.foregroundColor = "Green"}
        $item 
    }  
    $host.ui.rawui.foregroundColor = $origFg 
}

set-location c:\ravi
