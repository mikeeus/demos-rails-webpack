import { SpraypaintBase } from 'spraypaint';

export const ApplicationRecord = SpraypaintBase.extend({
  static: {
    baseUrl: '',
    apiNamespace: '/',
    jwtStorage: 'tokenKey',
  
    generateAuthHeader: (token) => token
  }
})
