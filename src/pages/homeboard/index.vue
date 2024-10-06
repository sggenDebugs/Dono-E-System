<template>
  <div class="relative w-[595px] h-[35px] ">

<input type="text" placeholder="Search item here" class="w-[595px] h-[40px]
        rounded-[27px] my-2 absolute text-start pl-[60px] text-[#456173] 
        text-base font-normal font-['Ubuntu']">

  <button class="relative group top-[6px] left-[30px]">
      <div class="flex flex-col justify-between w-[13px] h-[13px] transform transition-all duration-300 origin-center overflow-hidden group-focus:translate-x-1.5">
        <div class="bg-[#456173] h-[2px] w-7 transform transition-all duration-300 origin-left group-focus:rotate-[42deg] group-focus:w-2/3 delay-150"></div>
        <div class="bg-[#456173] h-[2px] w-7 rounded transform transition-all duration-300 group-focus:translate-x-10"></div>
        <div class="bg-[#456173] h-[2px] w-7 transform transition-all duration-300 origin-left group-focus:-rotate-[42deg] group-focus:w-2/3 delay-150"></div>
      </div>
  </button>

  <div class="w-[13px] h-[13px] pr-2 absolute flex flex-col justify-end items-end right-0">
    <button type="submit" class="p-1.5 focus:outline-none focus:shadow-outline">
      <svg fill="none" stroke="#456173" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" class="w-4 h-4">
        <path d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path></svg>
    </button>
  </div>

</div>
</template>

<script setup lang="ts">
definePageMeta({
  middleware: ["auth"],
})
</script>
