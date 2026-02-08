class ApplicationController < ActionController::Base
	# Basic protection and application-wide filters
	protect_from_forgery with: :exception

	before_action :set_locale

	# Graceful handling for missing records across the app
	rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

	private

	def set_locale
		I18n.locale = params[:locale] || I18n.default_locale
	end

	def render_not_found
		render file: Rails.root.join('public', '404.html'), status: :not_found, layout: false
	end
end
