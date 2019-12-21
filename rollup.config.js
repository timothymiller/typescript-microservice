import strip from '@rollup/plugin-strip';
import cleanup from 'rollup-plugin-cleanup';
import visualizer from 'rollup-plugin-visualizer';

export default {
    input: 'build/app.js',
    output: {
      file: 'prod/app.js',
      format: 'cjs'
    },
    plugins: [
      strip(),
      cleanup(),
      visualizer()
    ]
  };