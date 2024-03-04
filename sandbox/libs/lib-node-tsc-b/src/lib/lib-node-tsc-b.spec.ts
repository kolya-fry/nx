import { libNodeTscB } from './lib-node-tsc-b';

describe('libNodeTscB', () => {
  it('should work', () => {
    expect(libNodeTscB()).toEqual('lib-node-tsc-b');
  });
});
