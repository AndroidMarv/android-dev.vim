" TODO: Move out to its own file?
function androiddev#install#debug()
  return system("ant installd")
endfunction

function androiddev#install#release()
  return system("ant installr")
endfunction
