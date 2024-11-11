import { defineStore } from "pinia";

export const useUserStore = defineStore('user', {
    state: () => ({
        username: '' as string | null,
    }),
    actions: {
        setUsername(name: string) {
            this.username = name;
        },
        clearUsername() {
            this.username = null;
        }
    },
    getters: {
        getUsername: (state) => state.username,
    },
    persist: true,
});