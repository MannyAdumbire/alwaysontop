"Always on top allows for a single line of text to be sticky even when the page is scrolled
"Author: Manny Adumbire - mannadu.com
"Version: 1.0

let g:alwaysontop_linenumber=1


function! alwaysontop#StickLine()
				let b:cursor_pos = line(".")
				let b:firstline = line("w0")
				let b:lastline = line("$")
				if g:alwaysontop_linenumber < b:firstline	
								exe g:alwaysontop_linenumber.",".b:firstline ." fo"
				else
								exe "silent! ".g:alwaysontop_linenumber.",".b:lastline "foldopen! "
				endif
endfunction


"Setup auto group to prevent messing with default group settings
augroup alwaysontop
				au!
				au CursorMoved *  call alwaysontop#StickLine()
augroup END




