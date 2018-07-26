require! 'on-idle'
require! 'prelude-ls': {map}
x = (a) ->
    <- on-idle
    console.log if a
        \hello
    else
        map (.x), [12345]

x!
