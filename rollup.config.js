// rollup.config.js
import resolve from 'rollup-plugin-node-resolve';
import commonjs from 'rollup-plugin-commonjs';

export default {
    input: 'index.js',
    output: {
        file: 'dist/rollup-bundle.js',
        format: 'cjs'
    },
    plugins: [
        resolve({
            // pass custom options to the resolve plugin
            customResolveOptions: {
              moduleDirectory: 'node_modules'
            }
        }),
        commonjs()
    ]
};
