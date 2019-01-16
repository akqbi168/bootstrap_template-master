class ApplicationController < ActionController::Base

	# deviseで用意されたメソッド
	# ログイン認証がされていなければrootパスへリダイレクトする
	# このファイルに記述したので、全てのコントローラーで最初にこのアクションメソッドが実行される
	before_action :authenticate_user!

	before_action :configure_permitted_parameters, if: :devise_controller?

	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
	end

end