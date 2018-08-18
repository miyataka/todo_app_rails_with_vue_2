import Vue from 'vue/dist/vue.esm'
import VueRouter from 'vue-router'
import LandingPage from '../components/Landing.vue'

Vue.use(VueRouter)

export default new VueRouter({
    mode: 'history',
    routes: [
        { path: '/', component: LandingPage }
    ]
})

