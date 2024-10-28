<template>
    <div>
        <!-- Close Dropdown -->
         <!-- this div is for toggling -->
        <div class="self-stretch w-screen flex justify-between items-center cursor-pointer" @click="toggleDropdown()"> 
            <img class="w-[314px] px-12 pt-3" src="/assets/img/DONO.png"/>
            <div v-if="!isDropdownVisible" class="w-[260px] h-[56px] p-3 mr-3.5 mt-2 bg-[#f2f2f0] rounded-xl border border-[#d4d3d3] justify-start items-center gap-2.5 inline-flex">
                <!-- kani idisplay iv dili visible ang dropdown -->
                <div class="w-11 h-11 flex justify-center items-center relative inset-0">
                    <img class="w-8 h-8 flex justify-center items-center" src="/assets/img/Icon.png"> 
                </div>
                <div class="w-[154px] h-[31px] justify-center items-center flex">
                    <div class="w-[154px] h-[31px] text-center text-[#1b3c59] text-xl font-medium font-['Ubuntu']">{{ displayName }}</div>
                </div>
                    <img class="w-[23px] h-[23px] relative hover:cursor-pointer" src="/assets/img/Dropdown.png">
            </div>
            <div v-else class="w-[260px] h-[56px] p-3 mr-3.5 mt-2 bg-[#f2f2f0] rounded-tr-[8px] rounded-tl-[8px] border border-[#d4d3d3] justify-start items-center gap-2.5 inline-flex">
                <!-- kani idisplay if visible ang drop down -->
                <div class="w-11 h-11 flex justify-center items-center relative inset-0">
                    <img class="w-8 h-8 flex justify-center items-center" src="/assets/img/Icon.png"> 
                </div>
                <div class="w-[154px] h-[31px] justify-center items-center flex">
                    <div class="w-[154px] h-[31px] text-center text-[#1b3c59] text-xl font-medium font-['Ubuntu']">{{ displayName }}</div>
                </div>
                    <img class="w-[23px] h-[23px] relative hover:cursor-pointer rotate-180" src="/assets/img/Dropdown.png">
            </div>
            <!-- This is the dropdown menu -->
        <LoginDropdownModal :isVisible="isDropdownVisible" />
        </div>
    </div>
</template>

<script setup lang="ts">
import { ref, onMounted, watch } from 'vue';
import { useUserStore } from '~/stores/store-userStore';

const supaUser = useSupabaseUser();
const userStore = useUserStore();

const displayName = ref('Guest');
const isDropdownVisible = ref(false);

function fetchDisplayName() {
   displayName.value = supaUser.value?.user_metadata.display_name;
   userStore.setUsername(displayName.value);
}

onMounted(fetchDisplayName);

function toggleDropdown() {
  isDropdownVisible.value = !isDropdownVisible.value;
}

watch(supaUser, () => {
  if (supaUser.value) fetchDisplayName();
});
</script>