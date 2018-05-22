class Admin::HomepageController < Admin::BaseController

  def show
    load_header
    load_cards
  end

  private

  def load_header
    @header = ::Widget::Card.header
  end

  def load_settings
    settings = /feature.homepage.widgets/
    @settings = Setting.select {|setting| setting.key =~ /#{settings}/ }
  end

  def load_cards
    @cards = ::Widget::Card.body
  end

end