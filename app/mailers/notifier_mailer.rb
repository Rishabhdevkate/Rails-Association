class NotifierMailer < ApplicationMailer
    def alert_student(params)
        @studentparams = params
     
        mail(to: [@studentparams[:email], "rishabh.devkate@poolstack.in"], subject: "It is for Test")
    end
end
