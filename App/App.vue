
<template>
    <div class="container">
        <div class="header">
            <header class="wrap header_wrap">
                <div class="header_border_wrap_big">
                    <div class="header_social_network">
                        <p class="header_social_bold">Julia </p>
                        <p class="header_social">Gorbunova</p>
                        <img class="header_social_icon" src="icons/icon_instagram.png" />
                        <img class="header_social_icon" src="icons/icon_vk.png" />
                    </div>
                    <div class="header_big_container">
                        <div class="header_border_wrap_small">
                            <div class="header_middle">
                                <h1>Я - ЮЛИЯ ГОРБУНОВА</h1>
                                <p class="robotomedium_font">Хореограф, участница шоу-балета</p>
                                <p class="robotomedium_font">—</p>
                                <p class="roboto_font">Танец — это то, что у тебя внутри.</p>
                                <p class="roboto_font">Оно или есть, или его нет.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <div class="header_photo_wrap">
                <img class="header_photo" src="images/HeaderPhoto.png" />
            </div>
            <div class="demo_button_wrap" v-on:click="show_video_modal()">
                Демо-ролик
            </div>
            <div class="menu_button_wrap" v-on:click="showhideMenu()">
                <div class="transporate_180 line_wrap">
                    <hr class="first_line  thin_line" />
                    <hr class="second_line thin_line" />
                    <hr class="third_line bold_line" />
                    <hr class="fourth_line bold_line" />
                </div>
                <div class="menu_button transporate_270">МЕНЮ</div>
            </div>
            <div class="main_menu" v-if="menuIsShow">
                <div class="main_menu_close" v-on:click="showhideMenu()"></div>
                <ul class="main_menu_list">
                    <li class="main_menu_item" v-bind:class="{ active: focus === 'main' }" v-on:mouseover="focus = 'main'">
                        <p>Главная</p>
                    </li>
                    <li class="main_menu_item" v-bind:class="{ active: focus === 'about' }" v-on:click="scroll('#about', 500)" v-on:mouseover="focus = 'about'">
                        <p>Обо мне</p>
                    </li>
                    <li class="main_menu_item" v-bind:class="{ active: focus === 'gallery' }" v-on:click="scroll('#gallery', 1000)" v-on:mouseover="focus = 'gallery'">
                        <p>Галерея</p>
                    </li>
                    <li class="main_menu_item" v-bind:class="{ active: focus === 'contacts' }" v-on:click="scroll('#contacts', 1500)" v-on:mouseover="focus = 'contacts'">
                        <p>Контакты</p>
                    </li>
                </ul>
            </div>


        </div>
        <div class="body_wrap">
            <div class="middle_info_block_wrap">
                <img class="middle_photo left" src="images/first_middle_image.png" />
                <div class="middle_info_block_background right" id="about">
                    <div class="middle_info_block right">
                        <p class="robotomedium_font left_align">С чего все начиналось</p>
                        <p class="tt_norms_font">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                        <p class="more_details_bottom pink">Подробнее <span class="arrow_right pink">&#10230;</span></p>
                    </div>
                </div>
            </div>

            <div class="middle_info_block_wrap">
                <img class="middle_photo right" src="images/second_middle_image.png" />
                <div class="middle_info_block_background left">
                    <div class="middle_info_block left">
                        <p class="robotomedium_font left_align">Мои достижения</p>
                        <p class="tt_norms_font">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                        <p class="more_details_bottom grey">Подробнее <span class="arrow_right grey">&#10230;</span></p>
                    </div>
                </div>
            </div>


            <div class="middle_info_block_wrap">
                <p class="robotomedium_font center_align" id="gallery">Галерея</p>
                <section id="portfolio" class="gallery_section">
                    <div class="project">
                        <img class="project__image" src="images/r1iRZYJ2Z0Y.jpg" />
                        <div class="grid__overlay">
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi </p>
                        </div>
                    </div>

                    <div class="project">
                        <img class="project__image" src="images/r1iRZYJ2Z0Y.jpg" />
                        <div class="grid__overlay">
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi </p>
                        </div>
                    </div>

                    <div class="project">
                        <img class="project__image" src="images/r1iRZYJ2Z0Y.jpg" />
                        <div class="grid__overlay">
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi </p>
                        </div>
                    </div>

                    <div class="project">
                        <img class="project__image" src="images/r1iRZYJ2Z0Y.jpg" />
                        <div class="grid__overlay">
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi </p>
                        </div>
                    </div>

                    <div class="project">
                        <img class="project__image" src="images/r1iRZYJ2Z0Y.jpg" />
                        <div class="grid__overlay">
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi </p>
                        </div>
                    </div>

                    <div class="project">
                        <img class="project__image" src="images/r1iRZYJ2Z0Y.jpg" />
                        <div class="grid__overlay">
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi </p>
                        </div>
                    </div>

                    <div class="project">
                        <img class="project__image" src="images/r1iRZYJ2Z0Y.jpg" />
                        <div class="grid__overlay">
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi </p>
                        </div>
                    </div>

                    <div class="project">
                        <img class="project__image" src="images/r1iRZYJ2Z0Y.jpg" />
                        <div class="grid__overlay">
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi </p>
                        </div>
                    </div>
                    <div class="overlay">
                        <div class="overlay__inner">
                            <button class="close">закрыть X</button>
                            <img>
                        </div>
                    </div>
                </section>
                <div class="">
                    <p class="tt_norms_font show_more">Смотреть еще</p>
                </div>
            </div>
        </div>
        <div class="footer_wrap" id="contacts">
            <div class="contacts_wrap">
                <div class="contacts">
                    <p class="robotomedium_font center_align">Контакты</p>
                    <div class="right contact_info"><p class="tt_norms_font"> 8(343)319-52-32</p><img class="grey_background" src="icons/call_footer_icon.png" /></div>
                    <div class="right contact_info"><p class="tt_norms_font">Julia@gmail.ru</p><img class="grey_background" src="icons/mail_footer_icon.png" /></div>
                </div>
            </div>
            <div class="social_networks_wrap">
                <div class="social_networks">
                    <p class="robotomedium_font center_align">Социальные сети</p>
                    <div class="left contact_info"><img class="white_background" src="icons/instagram_footer_icon.png" /><p class="tt_norms_font"> instagram@Julia</p></div>
                    <div class="left contact_info"><img class="white_background" src="icons/vk_footer_icon.png" /><p class="tt_norms_font"> https://vk.com/id52760070</p></div>
                </div>
            </div>
        </div>
        <div class="dark_bg" v-bind:class="{ active: menuIsShow }" v-on:click="showhideMenu()"></div>
        <modal name="demo_video" width="70%" height="auto">
            <vue-plyr>
                <video allowfullscreen>
                    <source src="videos/demo_video.mp4" type="video/mp4" />
                </video>
            </vue-plyr>
        </modal>
    </div>
</template>



<script>

    const VueScrollTo = require('vue-scrollto');

    export default {

        data() {
            return {
                focus: 'main',
                menuIsShow: false,
                scrollOptions: {
                    container: "body",
                    easing: "ease",
                    offset: 0,
                    force: true,
                    cancelable: true,
                    onStart: false,
                    onDone: false,
                    onCancel: false,
                    x: false,
                    y: true
                }
            }
        },
        mounted() {
        },
        methods: {
            showhideMenu() {
                this.menuIsShow = !this.menuIsShow;
                this.focus = 'main';
            },
            scroll(element, duration) {
                this.showhideMenu();
                VueScrollTo.scrollTo(element, duration, this.options);
            },
            show_video_modal() {
                this.$modal.show('demo_video',
                    {
                        template:
                            `<div>
                      <p>Close using this button:</p>
                      <button @click="$emit('close')">Close</button>
                    </div>`
                    });
                //this.$modal.show('demo_video');
            },
            hide_video_modal() {
                this.$modal.hide('demo_video');
            }
        },
        created() {
        }
    }
</script>

<style lang="scss">
</style>

