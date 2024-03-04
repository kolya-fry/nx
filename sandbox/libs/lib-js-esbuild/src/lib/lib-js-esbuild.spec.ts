import { libJsEsbuild } from './lib-js-esbuild';

describe('libJsEsbuild', () => {
  it('should work', () => {
    expect(libJsEsbuild()).toEqual('lib-js-esbuild');
  });
});
