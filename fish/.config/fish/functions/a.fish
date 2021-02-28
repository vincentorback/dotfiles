complete --command a --exclusive --arguments '(__fish_complete_directories ~/../../Applications/)'

function a --description 'expand ~/../../Applications/'
  open $argv;
end
