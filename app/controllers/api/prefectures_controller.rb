module Api
  class PrefecturesController < Api::ApplicationController
    def index
      @prefectures = Prefecture.all
    end
  end
end
