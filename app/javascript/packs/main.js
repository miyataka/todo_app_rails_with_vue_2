import Vue from 'vue/dist/vue.esm'
import App from './app.vue'
import router from './router/router'

document.addEventListener('DOMContentLoaded', () => {
    const el = document.body.appendChild(document.createElement('App'))
    const app = new Vue({
        el,
        router,
        components: { App }
    })
})
