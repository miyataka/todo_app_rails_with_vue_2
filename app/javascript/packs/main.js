import Vue from 'vue/dist/vue.esm'
import App from './app.vue'

document.addEventListener('DOMContentLoaded', () => {
    const el = document.body.appendChild(document.createElement('App'))
    const app = new Vue({
        el,
        components: { App }
    })
})
