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

" TODO: Move out to its own file?
function androiddev#install#debug()
  return system("ant installd")
endfunction

function androiddev#install#release()
  return system("ant installr")
endfunction

function androiddev#build#test()
  return system("ant test")
endfunction
