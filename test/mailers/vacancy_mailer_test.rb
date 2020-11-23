require 'test_helper'

class VacancyMailerTest < ActionMailer::TestCase
  test "new_vacancy_posted" do
    mail = VacancyMailer.new_vacancy_posted
    assert_equal "New vacancy posted", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
