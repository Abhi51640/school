# frozen_string_literal: true

class WelcomesController < ApplicationController
  def index; end

  def show
    @sections = Section.all
  end
end
