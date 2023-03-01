require 'active_support/concern'
require 'slack-notifier'

module SlackNotifiable
  extend ActiveSupport::Concern

  def notify_slack(message)
    Slack::Notifier.new(SLACK_WEBHOOK, username: 'Spam Notification').ping(message)
  end

end
