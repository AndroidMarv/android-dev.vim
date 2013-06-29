function! androiddev#util#CheckForAdt()
  if exists("g:android_sdk_path")
    return g:android_sdk_path
  else
    let l:path = substitute(system("which android"),"/tools/android\n","", "g")
    if isdirectory(l:path) 
      return l:path
    else
      return 0
    end
  end
endfunction

function! androiddev#util#RunCommand(program, arguments)
  let l:argstr = join(a:arguments, " ")
  let l:output = system(shellescape(a:program) . " " . shellescape(l:argstr))
  return l:output
endfunction
