class ApplicationController < ActionController::Base
    rescue_from ::ActiveRecord::RecordNotFound, with: :record_not_found

    private
      def record_not_found(exception)
        render :file => "public/404.html",  :status => 404
      end

      def permission_denied
        render :file => "public/401.html", :status => 401
      end      
end
