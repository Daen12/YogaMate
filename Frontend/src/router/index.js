import { createWebHistory, createRouter } from "vue-router";
import HomeView from "../views/HomeView.vue";
import BoardView from "../views/BoardView.vue";
import BaseView from "../views/BaseView.vue";
import SignupView from "../components/SignupView.vue";
import LoginView from "../components/LoginView.vue";
import YoutubeView from "../views/YoutubeView.vue";
import YoutubeBetaView from "../views/YoutubeBetaView.vue";
import BoardDetail from "@/components/BoardDetail.vue";

const routes = [
    {
        path: "/",
        name: "home",
        component: HomeView,
    },
    {
        path: "/signup",
        name: "SignupView",
        component: SignupView,
    },
    {
        path: "/login",
        name: "LoginView",
        component: LoginView,
    },
    {
        path: "/youtube",
        name: "YoutubeView",
        component: YoutubeView,
    },
    {
        path: "/youtubebeta",
        name: "YoutubeBetaView",
        component: YoutubeBetaView,
    },
    {
        path: "/base",
        name: "BaseView",
        component: BaseView,
        children: [
            {
                path: "",
                name: "BoardView",
                component: BoardView,
                children: [
                    {
                        path: ":idx",
                        name: "BoardDetail",
                        component: BoardDetail,
                    },
                ],
            },
        ],
    },
];

const router = createRouter({
    history: createWebHistory(),
    routes,
});

export default router;
