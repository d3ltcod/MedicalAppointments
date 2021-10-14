// Dependencies
import Rails         from '@rails/ujs'
import Turbolinks    from 'turbolinks'
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import 'bootstrap/dist/js/bootstrap'
import 'bootstrap/dist/css/bootstrap'
import 'stylesheets/application'
import { RalixApp }  from 'ralix'

// Controllers
import AppCtrl       from 'controllers/app'
import DirectoriesCtrl     from 'controllers/directories'

const App = new RalixApp({
  rails_ujs: Rails,
  routes: {
    '/directory':     DirectoriesCtrl,
    '/.*':        AppCtrl
  }
})

Rails.start()
Turbolinks.start()
App.start()
