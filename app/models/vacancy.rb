class Vacancy < ApplicationRecord
  belongs_to :user
  after_create :send_email

  private

  def send_email
    VacancyMailer.with(vacancy: self).new_vacancy_posted.deliver_now!
  end
end
