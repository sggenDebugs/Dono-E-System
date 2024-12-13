<template>
    <div class="relative">
        <!-- Close Dropdown -->
        <!-- This div is for toggling -->
        <div class="self-stretch w-[314px] flex justify-between items-center cursor-pointer" @click="toggleDropdown()"> 
            <LoginDropdownModal :isVisible="isDropdownVisible" />
            <div v-if="!isDropdownVisible" class="w-[314px] h-[56px] p-3 mr-3.5 mt-2 bg-[#f2f2f0] rounded-xl border border-[#d4d3d3] justify-start items-center gap-2.5 inline-flex">
                <!-- Display this if dropdown is not visible -->
                <div class="w-11 h-11 flex justify-center items-center relative inset-0">
                    <img class="w-8 h-8 flex justify-center items-center" src="/assets/img/Icon.png"> 
                </div>
                <div class="w-[154px] h-[31px] justify-center items-center flex">
                    <div class="w-[154px] h-[31px] ml-5 text-center text-[#1b3c59] text-xl font-medium font-['Ubuntu']">{{ displayName }}</div>
                </div>
                <img class="w-[23px] h-[23px] ml-5 relative hover:cursor-pointer rotate-180" src="/assets/img/Dropdown.png">
            </div>
            <div v-else class="w-[314px] h-[56px] p-3 mr-3.5 mt-2 bg-[#f2f2f0] rounded-b-xl border border-[#d4d3d3] justify-start items-center gap-2.5 inline-flex">
                <!-- Display this if dropdown is visible -->
                <div class="w-11 h-11 flex justify-center items-center relative inset-0">
                    <img class="w-8 h-8 flex justify-center items-center" src="/assets/img/Icon.png"> 
                </div>
                <div class="w-[154px] h-[31px] justify-center items-center flex">
                    <div class="w-[154px] h-[31px] ml-5 text-center text-[#1b3c59] text-xl font-medium font-['Ubuntu']">{{ displayName }}</div>
                </div>
                <img class="w-[23px] h-[23px] ml-5 relative hover:cursor-pointer" src="/assets/img/Dropdown.png">
            </div>
        </div>
    </div>
</template>

<script setup lang="ts">
import { ref, onMounted, watch } from 'vue';
import { useUserStore } from '~/stores/store-currentUserStore';

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