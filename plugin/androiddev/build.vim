" TODO: Move to the project's root directory.
function! androiddev#build#debug()
  let old_path = getcwd()
  if androiddev#util#JumpToRootDirectory()
    return system("ant debug")
  endif
endfunction

function! androiddev#build#release()
  let old_path = getcwd()
  if androiddev#util#JumpToRootDirectory()
    return system("ant release")
  endif
endfunction

function androiddev#build#clean()
  let old_path = getcwd()
  if androiddev#util#JumpToRootDirectory()
    return system("ant clean")
  endif
endfunction

function androiddev#build#test()
  let old_path = getcwd()
  if androiddev#util#JumpToRootDirectory()
    return system("ant test")
  endif
endfunction
