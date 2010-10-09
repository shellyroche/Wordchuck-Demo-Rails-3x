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
  'fr' => {

    ## Ruby and Rails standard items required for basic presentation of dates, times, numbers
    ## and currency.

    :date => {
      :formats => {
        :default => "%d/%m/%Y"
      },
      :day_names => %w(Dimanche Lundi Mardi Mercredi Jeudi Vendredi Samedi),
      :month_names => [nil] + %w(Janvier Février Mars Avril Mai Juin Juillet Août Septembre Octobre Novembre Décembre)
    },
    :time => {
      :formats => {
        :details => "%d %B %Y"
      },
      :day_names => %w(Dimanche Lundi Mardi Mercredi Jeudi Vendredi Samedi),
      :month_names => [nil] + %w(Janvier Février Mars Avril Mai Juin Juillet Août Septembre Octobre Novembre Décembre)
    },

    :number => {
      :format => {
        :precision => 3,
        :separator => ',',
        :delimiter => ' '
      },
      :currency => {
        :format => {
          :unit => '€',
          :precision => 2,
          :format => '%n %u'
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
        :basket => "Basket",
        :item => "Basket Point"
      },
      :attributes => {
        :item => {
          :name => "Nom de l'iteme",
          :cost => "Coût de l'article",
          :created_at => "Créé",
          :updated_at => "Dernière mise à jour"
        }
      },
      :errors => {
        :models => {
          :item => {
            :attributes => {
              :cost => {
                :blank => "Très poste a un coût. Rien dans la vie est gratuit, sauf les restes de temps à un parcomètre assumé.",
                :not_a_number => "Un coût doit être un nombre décimal, évidemment.",
                :greater_than_or_equal_to => "Tous les articles ici coûter au moins 1,00 €.",
                :less_than_or_equal_to => "Tous les articles ici coûtent moins de $ 1.000.000.000.000."
              }
            }
          }
        }
      }
    },

    ## Website content.

    :titles => {
      :homepage => "Application de Démonstration Wordchuck de Localisation pour les Rails 3.x",
      :outline => "Il est facile (vraiment)",
      :buckets => {
        :section => "Seaux et Articles",
        :items => "Des articles de %{name}",
        :details => "Détails de l'élément pour %{name}:"
      }
    },

    :homepage => {
      :introduction => "Il s'agit d'une simple démonstration des éléments clés nécessaires à une implémentation complète de la localisation en <a href='http://rubyonrails.org/'>Ruby on Rails</a>.",
      :list => {
        :select => "Routes de sélection Locale, les URL et le nom",
        :names => "Etiquettes pour les objets de base de données statiques",
        :images => "Images avec texte et/ou des balises ALT",
        :caching => "Fragment de mise en cache",
        :right => "Droit à la langue à gauche, comme l'arabe",
        :dates => "Dates, chiffres et devises",
        :labels => "Les modèles d'étiquettes et de données d'articles",
        :errors => "Messages d'erreur de validation"
      },
      :selection => "Les paramètres régionaux sélectionnés sont automatiquement répercutés sur la demande dans l'URL de chaque demande, mais ne nécessitent la mise en explicite de la localisation au sein de routes nommé, ou de la session[]. Une fois la sélection locale d'installation, fonctionne, tout simplement.",
      :word => "Avec <a href='http://wordchuck.com'>Wordchuck</a> coordinating la traduction du contenu de votre site Web en se dilatant et les changements que vous pouvez offrir 20 + langues avec le même travail qu'il faut pour offrir 2.",
      :gem => "Le programme d'installation de votre projet avec <a href='http://wordchuck.com'>Wordchuck</a>, indiquer dans quelle langue vous souhaitez soutenir, et de générer des paramètres régionaux de votre site des fichiers au besoin avec le  <a href='http://github.com/shellyroche/wordchuck'>Wordchuck Ruby gem</a>. Une fois que vous présentez le contenu de fichiers locaux, pas vues, tout cela fonctionne, tout simplement."
    },

    :edit => {
      :intro => "Quel devrait être le coût de %{item} être?",
      :again => "S'il vous plaît essayez de nouveau.",
      :explanation => "Pour générer un message d'erreur localisée présenter un champ vierge, autre chose que d'un certain nombre ou un montant inférieur à 1,00 €."
    },

    :footer => {
      :github => "Cette application est sur <a href='http://github.com/shellyroche/wordchuck-demo-rails-3x' target='_blank'>github</a> pour votre référence."
    },

    :buckets => {
      :names => {
        :red => "Seau Rouge",
        :blue => "Seau Bleu",
        :green => "Seau Vert",
        :empty => "Seau Vide",
        :one => "Un Seau Point"
      },
      :items => {
        :one => 'Ce seau contient 1 élément.',
        :other => 'Ce seau contient  %{count} éléments.'
      },
      :empty => "Il n'y a aucun élément dans ce seau."
    },
    :items => {
      :description => "Cet objet est une %{name}."
    },

    :buttons => {
      :buckets => "seaux",
      :items => "articles",
      :details => "détails",
      :edit => "éditer",
      :submit => "soumettre"
    },

    :images => {
      :alts => {
        :wcdemo => "Il s'agit d'une image! en anglais"
      }
    }
  }
}
