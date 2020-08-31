class BloggersController < ApplicationController

    def index
        @bloggers = Blogger.all
    end

    

    def show
        @blogger = Blogger.find(params[:id])
        
    end

    def new
        @blogger = Blogger.new
    end

    def create
        @blogger = Blogger.create(blogger_params)
        if @blogger.valid?
        redirect_to blogger_path(@blogger)
        else
            flash[:my_errors]=@blogger.errors.full_messages
            redirect_to new_blogger_path
        end
    end

    def edit
        @blogger = Blogger.find(params[:id])
    end

    def update
        @blogger = Blogger.find(params[:id])
        @blogger.update(@blogger_params)
        redirect_to  blogger_path(@blogger)
    end


    private

    def blogger_params
        params.require(:blogger).permit!
    end

end
