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
  
class ExamplesController < ApplicationController
  before_filter :ajax?
  caches_action :selection, :static, :images, :caching, :dates, :right, :labels, :validations

  def selection
    render :partial => "examples/js/update", :locals => { :template => "examples/selection" }
  end
  def static
    render :partial => "examples/js/update", :locals => { :template => "examples/static" }
  end
  def images
    render :partial => "examples/js/update", :locals => { :template => "examples/images" }
  end
  def caching
    render :partial => "examples/js/update", :locals => { :template => "examples/caching" }
  end
  def dates
    render :partial => "examples/js/update", :locals => { :template => "examples/dates" }
  end
  def right
    render :partial => "examples/js/update", :locals => { :template => "examples/right" }
  end
  def labels
    render :partial => "examples/js/update", :locals => { :template => "examples/labels" }
  end
  def validations
    render :partial => "examples/js/update", :locals => { :template => "examples/validations" }
  end
end
