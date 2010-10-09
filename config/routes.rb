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
##

WordchuckDemo::Application.routes.draw do
  ## Examples
  scope "examples", :as => "examples" do
    match "selection" => "examples#selection", :via => [ :get ]
    match "static" => "examples#static", :via => [ :get ]
    match "images" => "examples#images", :via => [ :get ]
    match "caching" => "examples#caching", :via => [ :get ]
    match "dates" => "examples#dates", :via => [ :get ]
    match "right" => "examples#right", :via => [ :get ]
    match "labels" => "examples#labels", :via => [ :get ]
    match "validations" => "examples#validations", :via => [ :get ]
  end

  ## Items and Buckets
  scope ":locale" do
    resources :buckets, :only => [ :index ]
    resources :items, :only => [ :index, :show, :edit, :update ]
  end

  ## You can have the root of your site routed with "root" just remember to delete public/index.html.
  match ":locale" => "welcome#index", :via => [ :get ], :as => "root_with_locale"
  root :to => "welcome#index"

  ## Update the locale from user selection, from either a GET link or an AJAX submission.
  scope "locale", :as => "locale" do
    match "link" => "locale#link", :via => [ :get ]
    match "selection" => "locale#selection", :via => [ :post ]
  end

  ## See how all your routes lay out with "rake routes"

  ## This is a legacy wild controller route that's not recommended for RESTful applications.
  ## Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end