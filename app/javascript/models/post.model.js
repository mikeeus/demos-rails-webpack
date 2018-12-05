import { ApplicationRecord } from './application_record';

export const Post = ApplicationRecord.extend({
  static: {
    jsonapiType: 'posts'
  },

  attrs: {
    id: attr(),
    title: attr(),
    content: attr()
  },

  methods: {
    preview() {
      return this.content.slice(0, 50).trim() + '...'
    }
  }
})
