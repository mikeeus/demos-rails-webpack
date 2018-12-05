<template>
  <div>
    <h1>Posts</h1>
    <div v-if="error" class="error">{{error}}</div>
    <div class="loading" v-if="loading">Loading...</div>
    <ul>
      <li v-for="post of posts" :key="post.id">
        <h3>{{post.title}}</h3>
        <p v-html="post.preview()"></p>
      </li>
    </ul>
  </div>
</template>

<script>
import {Post} from './models/post.model'

export default {
  data: function () {
    return {
      posts: [],
      error: null,
      loading: true
    }
  },

  created() {
    Post.all()
        .then(res => {
          this.posts = res.data
          this.loading = false
        })
        .catch(err => {
          this.error = err
          this.loading = false           
        })
  }
}
</script>

<style scoped>
h1 {
  text-align: center;
}
ul {
  list-style: none;
}
</style>
