class CallerController < ApplicationController
  include SlackNotifiable

  def analyze
    payload = analyze_params

    case payload["TypeCode"]
    when 512
      # TODO send slack notification
      message = "<!channel> There was some Spam from: #{payload["From"]} \n Description is: #{payload["Description"]}"
      notify_slack(message)
      render nothing: true, status: :no_content and return
    else
      render nothing: true, status: :not_found and return
    end

  end

  private
  def analyze_params
    params.permit(:RecordType, :Type, :TypeCode, :Name, :Tag, :MessageStream, :Description, :Email, :From, :BouncedAt)
  end
end
