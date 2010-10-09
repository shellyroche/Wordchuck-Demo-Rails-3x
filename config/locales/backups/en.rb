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

{
  'en' => {

    ## Ruby and Rails standard items required for basic presentation of dates, times, numbers
    ## and currency.

    :date => {
      :formats => {
        :default => "%m/%d/%Y"
      }
    },
    :time => {
      :formats => {
        :details => "%B %d, %Y"
      }
    },
    
    ## Lanaguges. Always in the native language.

    :languages => {
      :english => "English",
      :french => "Français",
      :arabic => "العربية"
    },

    ## Activerecord models, attribute names, and error messages.
    
    :activerecord => {
      :models => {
        :basket => "Basket",
        :item => "Basket Item"
      },
      :attributes => {
        :item => {
          :name => "Item Name",
          :cost => "Item Cost",
          :created_at => "Created",
          :updated_at => "Last Updated"
        }
      },
      :errors => {
        :models => {
          :item => {
            :attributes => {
              :cost => {
                :blank => "Every item has a cost. Nothing in life is free except time leftover at an assumed parking meter.",
                :not_a_number => "A cost must be a decimal number, obviously.",
                :greater_than_or_equal_to => "All items here cost at least $1.00.",
                :less_than_or_equal_to => "All items here cost less than $1T."
              }
            }
          }
        }
      }
    },
    
    ## Website content.

    :titles => {
      :homepage => "Wordchuck Ruby on Rails Demonstration Application",
      :outline => "It's Easy (Really)",
      :buckets => {
        :section => "Buckets and Items",
        :items => "Items in %{name}:",
        :details => "Item Details for %{name}:"
      }
    },

    :homepage => {
      :introduction => "This is a simple demonstration of the key elements required for a complete implementation of localization in <a href='http://rubyonrails.org/'>Ruby on Rails</a>.",
      :list => {
        :select => "Locale selection, URLs, and named routes",
        :names => "Labels for static database objects",
        :images => "Images with text and/or ALT tags",
        :caching => "Fragment caching",
        :right => "Right to left languages, such as Arabic",
        :dates => "Dates, numbers and currencies",
        :labels => "ActiveRecord model and data item labels",
        :errors => "ActiveRecord validation error messages"
      },
      :selection => "The selected locale is automatically passed back to the application within the URL for each request, but <i>does not</i> require explicit setting of the locale within named routes, or session[]. Once setup, locale selection just works.",
      :word => "With <a href='http://wordchuck.com'>Wordchuck</a> coordinating the translation of your website's content as it expands and changes you can offer 20+ languages with the same work it takes to offer 2.",
      :gem => "Setup your project with <a href='http://wordchuck.com'>Wordchuck</a>, indicate which languages you want to support, and generate your site's locale files as needed with the <a href='http://github.com/shellyroche/wordchuck'>Wordchuck Ruby gem</a>. Once you are presenting content from locale files, not views, it all just works."
    },

    :edit => {
      :intro => "What should the cost of %{item} be?",
      :again => "Please try again.",
      :explanation => "To generate a localized error message submit a blank field, something other than a number, or an amount less 1.00."
    },

    :footer => {
      :github => "This application is on <a href='http://github.com/shellyroche/wordchuck-demo-rails-3x' target='_blank'>github</a> for your reference."
    },

    :buckets => {
      :names => {
        :red => "Red Bucket",
        :blue => "Blue Bucket",
        :green => "Green Bucket",
        :empty => "Empty Bucket",
        :one => "One Item Bucket"
      },
      :items => {
        :one => 'This bucket contains 1 item.',
        :other => 'This bucket contains %{count} items.'
      },
      :empty => "There are no items in this bucket."
    },
    :items => {
      :description => "This object is a %{name}."
    },

    :buttons => {
      :buckets => "buckets",
      :items => "items",
      :details => "details",
      :edit => "edit",
      :submit => "submit"
    },

    :images => {
      :alts => {
        :wcdemo => "This is an image! in english"
      }
    }
  }
}
