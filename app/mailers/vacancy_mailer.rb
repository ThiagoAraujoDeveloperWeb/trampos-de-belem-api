class VacancyMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.vacancy_mailer.new_vacancy_posted.subject
  #
  def new_vacancy_posted
    EmailsAlert.all.each do |candidate|
      mail to: candidate.email,
      subject: "SmallDev-Jobs tem uma nova vaga :)"
    end

    # mail(to: 'thiagosilva.java@gmail.com',
    #      subject: 'Temos uma nova Vaga publicada',
    #      body: 'email body')
  end
end
