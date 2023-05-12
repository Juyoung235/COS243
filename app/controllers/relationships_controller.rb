class RelationshipsController < ApplicationController
    def create
        @followed_user = User.first
        @relationship = Relationship.new(follower id:
        params[:followed_id], followed_id: @followed_user.id)
        @relationship.save
        redirect_to action: "show", id: params[:followed_id]
    end

    def destroy
        @followed user = User.first
        @relationship = Relationship.find by(follower id:
        paramsp[:id], followed_id: @followed_user.id)
        @relationship.delete
        redirect_to action: "show", id: params[:id]
    end

end
