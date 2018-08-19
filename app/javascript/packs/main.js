import Vue from 'vue/dist/vue.esm'
import App from './app.vue'
import router from './router/router'
//
//import material from './materialDesign.js'
//
//import BootstrapVue from 'bootstrap-vue'
//import 'bootstrap/dist/css/bootstrap.css'
//import 'bootstrap-vue/dist/bootstrap-vue.css'
//Vue.use(BootstrapVue);

import VueMaterial from 'vue-material'
import 'vue-material/dist/vue-material.min.css'
import 'vue-material/dist/theme/default-dark.css'

Vue.use(VueMaterial)

document.addEventListener('DOMContentLoaded', () => {
    const el = document.body.appendChild(document.createElement('App'))
    const app = new Vue({
        el,
        router,
        components: { App }
    })
})
