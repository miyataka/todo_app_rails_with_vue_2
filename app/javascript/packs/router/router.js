import Vue from 'vue/dist/vue.esm'
import VueRouter from 'vue-router'
import LandingPage from '../components/Landing.vue'
import Inbox from '../components/Inbox.vue'

Vue.use(VueRouter)

export default new VueRouter({
    mode: 'history',
    routes: [
        { path: '/', component: Inbox },
        { path: '/inbox', component: Inbox },
        { path: '/today', component: Inbox },
        { path: '/next7days', component: Inbox },
        { path: '/overdue', component: Inbox },
    ]
})

