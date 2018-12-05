module Api
  module V1
    class PostsController < ApplicationController
      def index
        posts = PostResource.all(params)
        render jsonapi: posts
      end
    end
  end
end
