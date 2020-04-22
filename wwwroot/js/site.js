// Please see documentation at https://docs.microsoft.com/aspnet/core/client-side/bundling-and-minification
// for details on configuring this project to bundle and minify static web assets.

// Write your JavaScript code.
new Vue({
    el: '#app',
    template: "<div><router-view></router-view></div>",
    router,
    data: {
        menuIsShow: false,
    },
    mounted() {
    },
    methods: {
        showhideMenu() {
            this.menuIsShow = !this.menuIsShow;
        }

    },
    created() {
    }
});