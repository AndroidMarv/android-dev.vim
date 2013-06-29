" TODO: Move to the project's root directory.
function! androiddev#build#debug()
  return system("ant debug")
endfunction

function! androiddev#build#release()
  return system("ant release")
endfunction

function androiddev#build#clean()
  return system("ant clean")
endfunction

function androiddev#build#test()
  return system("ant test")
endfunction
