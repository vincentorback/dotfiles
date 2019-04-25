complete --command c --exclusive --arguments '(__fish_complete_directories ~/Sites/)'

function c --description 'expand ~/Sites/'
  cd $argv;
end
