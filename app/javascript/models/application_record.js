import { SpraypaintBase } from 'spraypaint';

export const ApplicationRecord = SpraypaintBase.extend({
  static: {
    baseUrl: '',
    apiNamespace: '/api/v1',
  }
})
