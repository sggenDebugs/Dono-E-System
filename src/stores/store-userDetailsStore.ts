import { defineStore } from 'pinia';
import type { User } from '@/types/user-type';

export const useUserDetailStore = defineStore('userStore', {
  state: () => ({
    users: [] as User[],
  }),
  actions: {
    setUsers(newUsers: User[]) {
      this.users = newUsers;
    },
  },
});
