import { libJsTsc } from './lib-js-tsc';

describe('libJsTsc', () => {
  it('should work', () => {
    expect(libJsTsc()).toEqual('lib-js-tsc');
  });
});
