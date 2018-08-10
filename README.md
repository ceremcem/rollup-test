# Description 

This is the test project to see if we can replace browserify with rollup seamlessly. 

# Test

### Do

* Build a bundle with Browserify: 

      ./build-browserify.sh
      # output => dist/browserify-bundle.js
      
* Build a bundle with Rollup: 

      ./build-browserify.sh
      # output => dist/browserify-bundle.js
      
### Expect 

1. ...browserify bundle to work (*SUCCESS*): 

       node ./dist/browserify-bundle.js
      
2. ...rollup bundle to work (*FAIL*): 

       node ./dist/browserify-bundle.js

3. ...rollup bundle containing **only** the necessary codes.

