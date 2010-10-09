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
  'ar' => {

    ## Ruby and Rails standard items required for basic presentation of dates, times, numbers
    ## and currency.

    :date => {
      :formats => {
        :default => "%Y-%m-%d"
      },
      :day_names => %w(الأحد, الإثنين, الثلاثاء, الأربعاء, الخميس, الجمعة, السبت),
      :month_names => [nil] + %w(ناير, فبراير, مارس, ابريل, مايو, يونيو, يوليو, اغسطس, سبتمبر, اكتوبر, نوفمبر, ديسمبر)
    },

    :time => {
      :formats => {
        :details => "%B %d, %Y"
      },
      :day_names => %w(الأحد, الإثنين, الثلاثاء, الأربعاء, الخميس, الجمعة, السبت),
      :month_names => [nil] + %w(ناير, فبراير, مارس, ابريل, مايو, يونيو, يوليو, اغسطس, سبتمبر, اكتوبر, نوفمبر, ديسمبر)
    },

    :number => {
      :format => {
        :precision => 3,
        :separator => '.',
        :delimiter => ','
      },
      :currency => {
        :format => {
          :unit => '$',
          :precision => 2,
          :format => '%u %n'
        }
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
        :basket => "سلة",
        :item => "سلة البند"
      },
      :attributes => {
        :item => {
          :name => "اسم المنتج",
          :cost => "بند التكلفة",
          :created_at => "خلق",
          :updated_at => "آخر تحديث :"
        }
      },
      :errors => {
        :models => {
          :item => {
            :attributes => {
              :cost => {
                :blank => "المفترض.كل عنصر له ثمن. لا شيء في الحياة الحرة إلا بقايا مرة في 1 متر وقوف السيارات ",
                :not_a_number => "ويجب أن تكون تكلفة رقم عشري ، ومن الواضح.",
                :greater_than_or_equal_to => "جميع البنود هنا التكلفة على الأقل 1.00 دولار.",
                :less_than_or_equal_to => "جميع بنود التكاليف هنا أقل من دولار و1،000،000،000،000."
              }
            }
          }
        }
      }
    },

    ## Website content.

    :titles => {
      :homepage => "x.التطبيق مظاهرات مسلم عن القضبان 3 Wordchuck",
      :outline => "قد يكون من السهل (حقا)",
      :buckets => {
        :section => "دلاء والعناصر",
        :items => "العناصر في %{name}",
        :details => "تفاصيل السلعة ل %{name}"
      }
    },

    :homepage => {
      :introduction => "وهذا دليل بسيط من العناصر الرئيسية المطلوبة لتنفيذ الكامل للتوطين في <a href='http://rubyonrails.org/'>Ruby on Rails</a>.",
      :list => {
        :select => "اختيار اللغة ، وعناوين المواقع ، واسمه طرق",
        :names => "تسميات لكائنات قاعدة بيانات ثابتة",
        :images => "صور مع نص و / أو به البديل",
        :caching => "شظية التخزين المؤقت",
        :dates => "التواريخ والأرقام والعملات",
        :right => "الحق في لغة اليسار ، مثل العربية",
        :labels => "نموذجية وتسميات البيانات من جدول الأعمال ActiveRecord",
        :errors => "رسائل خطأ التحقق من صحة ActiveRecord"
      },
      :selection => "يتم تمرير تلقائيا لغة مختارة إلى التطبيق في عنوان كل طلب ، ولكن لا يتطلب تحديد واضح للغة داخل طرق مسمى ، أو session[]. وبمجرد اختيار الإعداد لغة ، ويعمل فقط.",
      :word => "With <a href='http://wordchuck.com'>Wordchuck</a> coordinating the translation of your website's content as it expands and changes you can offer 20+ languages with the same work it takes to offer 2.",
      :gem => "Setup your project with <a href='http://wordchuck.com'>Wordchuck</a>, indicate which languages you want to support, and generate your site's locale files as needed with the <a href='http://github.com/shellyroche/wordchuck'>Wordchuck Ruby gem</a>. Once you are presenting content from locale files, not views, it all just works."
    },

    :edit => {
      :intro => "يكون؟ %{item} ما الذي يجب أن تكلفة ",
      :again => "Pتأجير حاول مرة أخرى.",
      :explanation => "لإنشاء رسالة خطأ مترجم يقدم الحقل فارغا ، ما عدا عددا ، أو أقل مبلغ 1.00."
    },

    :footer => {
      :github => "This application is on <a href='http://github.com/shellyroche/wordchuck-demo-rails-3x' target='_blank'>github</a> for your reference."
    },

    :buckets => {
      :names => {
        :red => "أحمر الجردل",
        :blue => "الزرقاء دلو",
        :green => "أخضر الجردل",
        :empty => "فارغة دلو",
        :one => "ودلو البند"
      },
      :items => {
        :one => 'دلو يحتوي هذا البند 1.',
        :other => 'سلع %{count} هذا دلو يحتوي على '
      },
      :empty => "لا توجد أي عناصر في هذا الدلو."
    },
    :items => {
      :description => "هذا الكائن هو %{name}"
    },

    :buttons => {
      :buckets => "دلاء",
      :items => "البنود",
      :details => "تفاصيل",
      :edit => "عدل",
      :submit => "تقدم"
    },

    :images => {
      :alts => {
        :wcdemo => "Il s'agit d'une image! en anglais"
      }
    }
  }
}
