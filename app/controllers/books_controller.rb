class BooksController < ApplicationController
  before_action :authorized, except: [:vacancies]

  def livros
    render json: [
      { name: 'teste - 01' },
      { name: 'teste - 02' },
      { name: 'teste - 03' }
    ]
  end

  def vacancies
    render json: [ total: 255 ]
  end
end
