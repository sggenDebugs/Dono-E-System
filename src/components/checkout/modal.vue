<template>
    <div v-if="isModalOpen" class="fixed top-0 left-0 w-screen h-screen bg-[rgba(0,_0,_0,_0.5)] flex justify-center items-center" @click.self="closeModal">
      <div class="w-[547px] h-[211px] px-10 pt-[30px] pb-[25px] bg-[#f2f2f0] rounded-[15px] shadow flex-col justify-start items-center gap-[30px] inline-flex">
        <div class="self-stretch justify-between items-center inline-flex">
          <div class="w-[22px] h-[22px] relative"></div>
          <div class="w-[233px] h-7 text-center text-[#1b3c59] text-[28px] font-medium font-['Ubuntu']">Remove Item</div>
          <div class="w-[17px] h-[17px] relative"></div>
        </div>
        <div class="self-stretch h-7 text-center text-[#0c0c0c] text-2xl font-normal font-['Ubuntu']">Are you sure you want to delete “item_1”?</div>
        <div class="self-stretch h-10 justify-end items-start gap-2.5 inline-flex">
          <div class="h-10 bg-[#f2f2f0] rounded-lg shadow border border-[#d4d3d3] flex-col justify-center items-center gap-2 inline-flex" @click="closeModal">
            <div class="self-stretch grow shrink basis-0 px-6 py-2.5 justify-center items-center gap-2 inline-flex">
              <div class="text-center text-[#456173] text-base font-normal font-['Ubuntu']">Cancel</div>
            </div>
          </div>
          <div class="h-10 bg-[#1b3c59] rounded-lg shadow border border-[#d4d3d3] flex-col justify-center items-center gap-2 inline-flex">
            <div class="self-stretch grow shrink basis-0 px-6 py-2.5 justify-center items-center gap-2 inline-flex">
              <div class="text-center text-[#f2f2f0] text-base font-normal font-['Ubuntu']">Confirm</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </template>
  
  <script setup>
  import { useModalStore } from '@/stores/store-modal.ts';
  
  const modalStore = useModalStore();
  
  const closeModal = () => {
    modalStore.closeModal();
  };
  
  const isModalOpen = computed(() => modalStore.isModalOpen);
  </script>
  