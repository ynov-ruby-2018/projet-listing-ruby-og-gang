class Api::V1::CategoryController < Api::V1::ApiController

  protect_from_forgery with: :null_session

  before_action :auth_with_token

  def index
    render :json => {content: Category.all}
  end
end
