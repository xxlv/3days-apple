class HomeController < ApplicationController

    before_filter :authorize!,:only => [:me,:update_me,:my_ask]


    def index
    end

    def hot
        @questions = Question.all
    end


    def found
    end

    def me
        @user=User.find_by_id(session[:user_id])
    end

    def about

    end

    def my_home
    end

    def my_ask

        u_q=UserQuestion.find_by_user_id(session[:user_id])
        if u_q.nil?
            @my_ask=[]
        else
            @my_ask=u_q
        end
        @my_ask
    end

    def pay_for_ask
        
        if request.post? &&!session[:user_id].nil?
            author=User.find_by_id(session[:user_id])
            tutor= User.find_by_id(params["tutor_id"])
            @que=Question.new

            if params["is_public"]=='on'
                params["is_public"]=1
            else
                params["is_public"]=0
            end

            @que.status=1
            @que.question=params["question"]
            @que.is_public=params["is_public"]
            @que.author_id=session[:user_id]
            @que.author_name=author["name"]
            @que.ask_user_id=params["tutor_id"]
            @que.ask_user_name=tutor["name"]
            @que.save

            console.log "OK!"
        end
    end


    def ask_list
        @users=User.all
        @users
    end


    def tutor

        @tutor=User.find_by_id(params[:id])
        @tutor
    end





    def my_question

    end



    # POST only
    def update_me
        if @user.nil?
            @user=User.find_by_id(session['user_id'])
        end
        @user['ask_money']=params['ask_money']
        @user['introduce']=params['introduce']
        @user['area_introduce']=params['area_introduce']
        @user.save
        redirect_to(:controller=>"home",:action=>"me")
    end


end
