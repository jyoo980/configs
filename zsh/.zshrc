alias g="git"
alias gnb="git_new_branch"
alias gcb="git_checkout_branch"
alias ..="cd ../"

alias upload="upload_to_recycle"
alias lprint="print_from_recycle"
alias lprint_slides="print_slides_from_recycle"

function upload_to_recycle() {
  scp "$1" jmsy@recycle.cs.washington.edu:/cse/web/homes/jmsy
}

function print_from_recycle() {
  cat "$1" | ssh jmsy@recycle.cs.washington.edu "lpr -P pgc270 -o sides=two-sided-long-edge"
}

function print_slides_from_recycle() {
  cat "$1" | ssh jmsy@recycle.cs.washington.edu "lpr -P pg224 -o sides=two-sided-long-edge -o landscape -o number-up=4 -o page-border=single"
}

function git_new_branch() {
  git checkout -b "yoo/$1"
}

function git_checkout_branch() {
  git checkout "yoo/$1"
}
