# PINGOUI SOCIAL APP

RUBY 2 / RAILS 4 / TWITTER BOOTSTRAP

Pingoui Social App est une application sociale avec à son coeur un système pour que les utilisateurs puissent se suivre les uns les autres à l'instar de Twitter. 
Elle est basé sur Ruby 2.0.0 et Rails 4. L'interface est réalisée avec Twitter Bootstrap. Elle est donc responsive, afin d'avoir une application qui s'adapte aussi bien au mobiles qu'aux tablettes, etc... Vous pouvez trouver une version fonctionnelle à l'adresse suivante www.pinguoui.com 
A l'origine l'application se base sur celle de Michael Hartl (http://michaelhartl.com/about). Mais différentes amélioration notable ont été apportés. Comme parz exemple, la gestion des photos de profils qui ne se fait plus avec Gravatar mais avec Carrierwave, ou alors l'intégration de fonctions de recherches pour chercher et trouver des utilisateurs, etc ...

Pour commencer à customiser votre application c'est très simple, il vous faut une installation complète de Ruby-2.0.0 / Rails 4 et bundler, je vous conseille pour cela d'utiliser rvm https://rvm.io/‎.
-----------------------------------------------------------------------------------------------------------------

INSTALLATION ET DÉMARRAGE DE L'APPLICATION 
    
    $ mkdir myapp
    $ cd /myapp
    $ git clone git@github.com:folajimi/pingoui.git
    $ cd pingoui
    $ bundle install
    $ bundle exec rake db:migrate
    $ bundle exec rake db:test:prepare
    $ bundle exec rspec spec/
    $ rails s

... et voila, vous avez maintenant une application sociale de nouvelle génération installée, téstée, et prête à être cusomisée. 
L'application est sous licence MIT, vous pouvez donc l'utiliser comme bon vous semble. 








