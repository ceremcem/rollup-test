require! 'on-idle'
require! 'prelude-ls': {last}
x = (a) ->
    console.log \hello!, last <[ 1 2 3 ]>
x!
