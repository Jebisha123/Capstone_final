class StatusController < ApplicationController
    def index
        current_user= Userdetail.find_by_id(session[:current_user_id])
        b = Candidateapplication.joins('join Jobdetails on Candidateapplications.jobcode = Jobdetails.jobcode').select('Jobdetails.*,Candidateapplications.*').
        where('userid' => session[:current_user_id],'candidateapplicationstatus' => params[:candidateapplicationstatus])
        render json: b
        
     
     
    end
end
