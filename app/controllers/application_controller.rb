##
# Copyright (c) Wordchuck Inc.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation
# files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy,
# modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software
# is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
# OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR
# IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#
##
  
class ApplicationController < ActionController::Base
  before_filter :set_available_locales, :set_locale, :valid_locale?

  protected
  def set_buckets
    @buckets = Bucket.all(:include => [ :items ])
  end

  ## We confirm that requests that are AJAX only are indeeded from an AJAX request. If not, the user is entering
  ## URLs manually, which will not display properly.

  def ajax?
    unless request.xhr?
      redirect_to root_url
      return false
    end
    true
  end

  ## A user could enter any locale, such as http://rails.wordchuck.com/pirate, which will not work properly. 
  ## So, if not a supported locale, redirect them back the default.

  def valid_locale?
    unless I18n.available_locales.detect {|alc| alc == I18n.locale }
      redirect_to root_with_locale_url(:locale => I18n.default_locale)
      return false
    end
    true
  end

  def set_available_locales
    @locales_for_select = [[:english, :en], [:french, :fr], [:arabic, :ar]]
  end
  def set_locale
    I18n.locale = params[:locale] if params.include?('locale')
    Rails.logger.info "Locale SET [#{I18n.locale}]"
    Rails.logger.info "Available Locales #{I18n.available_locales.inspect}"
  end

  def default_url_options(options = {})
    options.merge!({ :locale => I18n.locale })
  end
end
