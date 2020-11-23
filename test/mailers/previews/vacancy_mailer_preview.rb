# Preview all emails at http://localhost:3000/rails/mailers/vacancy_mailer
class VacancyMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/vacancy_mailer/new_vacancy_posted
  def new_vacancy_posted
    VacancyMailer.new_vacancy_posted
  end

end
