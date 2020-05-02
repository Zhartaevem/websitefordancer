import Vue from 'vue';
import VueRouter from 'vue-router';
import App from './App.vue';
import VuePlyr from 'vue-plyr';
import VModal from 'vue-js-modal';

Vue.use(VModal);

Vue.use(VuePlyr,
    {
        plyr: {
            fullscreen: { enabled: true }
        },
        emit: ['ended']
    });


Vue.config.productionTip = false;
Vue.use(VueRouter);

const routes = [
    {
        path: '/',
        component: App
    }
];

const router = new VueRouter({
    routes,
    mode: 'history'
});

new Vue({
    el: '#app',
    template: "<div><router-view></router-view></div>",
    router
});
