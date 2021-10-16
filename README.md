# MedicalAppointments
Tech test to show my skills as full stack Rails developer

# Installation & use

```bash
https://github.com/d3ltcod/MedicalAppointments
cd MedicalAppointments/
bundle install
yarn install
# Now, we are going to generate the DB. See notes if you would like to add some data as example
rake db:migrate
rails s
```
## Notes
If you would like to fill some data to test the project, you can execute the following command that will create some users and appointments based on the file db/seed.rb:
```bash
rake db:seed
```
# Requirements

## Ruby and Rails version tested
* [ruby 3.0.2](https://www.ruby-lang.org/en/news/2021/07/07/ruby-3-0-2-released/)
* [rails 6.1](https://guides.rubyonrails.org/6_1_release_notes.html)

This packages use:
* [Ralix](https://github.com/ralixjs/ralix)
* [Rspec](https://rspec.info/)
* [Devise](https://github.com/heartcombo/devise)
* [Bootstrap](https://getbootstrap.com/)
# Tests

Execute:

```
rspec
```

# Author

**Adam Alvarado Bertomeu** [d3ltcod](https://github.com/d3ltcod)

# License
This is open-sourced software licensed under the [MIT license](http://opensource.org/licenses/MIT).