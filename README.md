# Description 

This is the test project to see if we can replace browserify with rollup seamlessly. 

# Test

### Install 

```console 
git clone https://github.com/ceremcem/rollup-test
cd rollup-test 
npm i
```

### Do

* Clean the output 

      rm dist/*

* Build a bundle with Browserify: 

      ./build-browserify.sh
      # output => dist/browserify-bundle.js
      
* Build a bundle with Rollup: 

      ./build-rollup.sh
      # output => dist/rollup-bundle.js
      
### Expect 

1. ...browserify bundle to work (*SUCCESS*): 

       node ./dist/browserify-bundle.js
       hello! 3
      
2. ...rollup bundle to work (*SUCCESS*): 

       node ./dist/rollup-bundle.js
       hello! 3

3. ...rollup bundle containing **only** the necessary codes ([*FAIL*](https://github.com/ceremcem/rollup-test/issues/2))

      ```console
      $ ls -lh
      -rw-r--r-- 1 ceremcem ceremcem 31K Aug 10 21:23 browserify-bundle.js
      -rw-r--r-- 1 ceremcem ceremcem 30K Aug 10 21:23 rollup-bundle.js
      ```

