<template>
    <transition
        enter-active-class="transition ease-out duration-300"
        enter-from-class="opacity-0 transform -translate-y-2"
        enter-to-class="opacity-100 transform translate-y-0"
        leave-active-class="transition ease-in duration-200"
        leave-from-class="opacity-100 transform translate-y-0"
        leave-to-class="opacity-0 transform -translate-y-2"
    >
        <div v-if="isVisible" class="absolute top-0 right-0 w-[260px] h-[56px] flex justify-end items-start">
            <!-- First Dropdown Item -->
            <NuxtLink
            to="/userprofile" 
            class="w-[300px] h-[56px] top-[-55px] p-5 mr-3.5 mt-2 bg-[#f2f2f0] border border-[#d4d3d3] flex items-center space-x-2 absolute cursor-pointer">
                <div class="flex justify-center ml-1 items-center">
                    <img class="w-5 h-5" src="/assets/img/edit.png" />
                </div>
                <div class="absolute text-center text-[#1b3c59] left-[33.5%] text-xl font-small">Edit Profile</div>
            </NuxtLink>

            <!-- Second Dropdown Item -->
            <div class="w-[300px] h-[56px] top-[-110px] rounded-t-xl p-5 mr-3.5 mt-2 bg-[#f2f2f0] border border-[#d4d3d3] flex items-center space-x-2 absolute cursor-pointer" @click="logOut()">
                <div class="flex justify-center ml-0.5 items-center">
                    <img class="w-6 h-6" src="/assets/img/signOut-button.png" />
                </div>
                <div class="absolute text-center text-[#1b3c59] left-[35.5%] text-xl font-small">Sign Out</div>
            </div>
        </div>
    </transition>
</template>

<script setup lang="ts">
import { useUserStore } from '~/stores/store-currentUserStore';

const client = useSupabaseClient();
const router = useRouter();
const userStore = useUserStore();
0
async function logOut() {
    try{
        const { error } = await client.auth.signOut();
        if ( error ) throw error;
        router.push("/login")
    } catch ( error ) {
        console.log('Error');
    }
}
// to here basin naay ganahan mu try ug emit bali if giclick ang button na sign out iyang iemit sa iyang parent which is si profile setting but si profile setting di pa ni siya parent si main home ilang parent but okay na if ma emit nmo siya sa profile setting mas commendable if sa main-home siya iemit

const closeModal = () => emit('close');

const props = defineProps({
  isVisible: {
    type: Boolean,
    required: true,
  }
});
</script>