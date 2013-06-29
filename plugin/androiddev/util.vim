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

function! androiddev#util#GetRootDirectory()
  let current_path = getcwd()
  while 1 
    if filereadable(current_path . "/ant.properties")
      return current_path
    endif

    let items = split(current_path, "/")
    if !len(items)
      return 0
    endif

    let current_path = substitute(current_path,"/" .items[-1],"","g")
  endwhile
endfunction

function! androiddev#util#JumpToRootDirectory()
  let current_path = getcwd()
  let root_path = androiddev#util#GetRootDirectory()

  if root_path
    cd root_path
    endif
endfunction
