#!/bin/fish
set rtpath (dirname (realpath ./build.fish))
for file in **.tex
  echo building $file
  cd (dirname $file)[1]
  xelatex -interaction=nonstopmode (string split "/" $file)[-1] >/dev/null
  cd $rtpath[1]
  echo finished building $file
end
