" TODO: Move out to its own file?
function androiddev#install#debug()
  let old_dir = getcwd()
  if androiddev#util#JumpToRootDirectory()
    let output = system("ant installd")
    cd old_dir
    return output
  end
endfunction

function androiddev#install#release()
  let old_dir = getcwd()
  if androiddev#util#JumpToRootDirectory()
    let output = system("ant installr")
    cd old_dir
    return output
  end
endfunction
