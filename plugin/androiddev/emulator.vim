function! androiddev#emulator#list()
  echo "[Android.Dev] Searching for virtual devices..."
  let output = substitute(system("android list avd --no-ui -0 --compact"),"/\n$/","","g")
  let devices = split(output, "\n")
  echo devices
endfunction

function! androiddev#emulator#run(emulatorName)
  echo "[Android.Dev] Starting emulation " . a:emulatorName . "..."
  let output = system("emulator @" . a:emulatorName . " &")
  echom output
endfunction
