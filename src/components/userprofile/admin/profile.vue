<template>
    <div class="h-[fit-content] absolute left-3 top-2">
        <div class="justify-start items-center gap-[30px] inline-flex">
            <div class="w-[122px] h-[122px] relative">
                <div class="w-[122px] h-[122px] left-[1px] top-[1px] absolute bg-[#d4d3d3] rounded-full border-4 border-[#456173]"></div>
                <div class="w-[122px] h-[122px] left-[1px] top-[1px] absolute"></div> <!-- image slot -->
            </div>
            <div class="w-[297px] h-[92px] flex-col justify-start items-start gap-2 inline-flex">
                <div class="self-stretch text-[#1b3c59] text-xl text-left font-medium">{{ displayName }}</div>
                <div class="w-[fit-content] h-[31px] bg-[#f2f2f0] rounded-lg shadow border border-[#d4d3d3] flex-col justify-center items-center flex">
                    <div class="self-stretch grow shrink basis-0 pl-2 pr-3 py-0 justify-center items-center gap-1 inline-flex cursor-pointer">
                        <img class="w-[18px] h-[18px] relative" src="~/assets/img/edit.png"/>
                        <div class="text-center text-[#1b3c59] font-normal">Edit Profile</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script setup lang="ts">
import { useUserStore } from '~/stores/store-currentUserStore';

const userStore = useUserStore();

const displayName = computed(() => userStore.getUsername);
</script>