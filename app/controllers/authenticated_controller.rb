# frozen_string_literal: true

class AuthenticatedController < ApplicationController
  skip_before_action :authenticate_user!
  include ShopifyApp::Authenticated

end
