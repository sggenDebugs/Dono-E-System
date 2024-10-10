<template>
  <div>
    <ul class = "self-stretch flex flex-col justify-center items-center text-3xl absolute inset-0 ">
      <div>
        <NuxtLink
          to="/home"
          :class="[
            'tab w-[314px] h-[75px] flex justify-center items-center font-medium font-[Ubuntu] duration-200 ease-in-out',
            currentTab === 'home' ? 'bg-[#e4e4e4] text-[#1b3c59] border-[#1b3c59]' : 'text-[#f2f2f0] hover:bg-[#e4e4e4] hover:text-[#1b3c59]'
          ]"
          @click="setActive('home')" @hover="setActive('home')"
          >
            Home
        </NuxtLink>
      </div>  
     <div>
       <NuxtLink
        to="/dono"
        :class="[
          'tab w-[314px] h-[75px] flex justify-center items-center font-medium font-[Ubuntu] duration-200 ease-in-out',
          currentTab === 'dono' ? 'bg-[#e4e4e4] text-[#1b3c59] border-[#1b3c59]' : 'text-[#f2f2f0] hover:bg-[#e4e4e4] hover:text-[#1b3c59]'
          ]"
          @click="setActive('dono')" @hover="setActive('dono')"
          >
            Dono
        </NuxtLink>
     </div>
     <div>
       <NuxtLink
        to="/checkout"
        :class="[
          'tab w-[314px] h-[75px] flex justify-center items-center font-medium font-[Ubuntu] duration-200 ease-in-out',
          currentTab === 'checkout' ? 'bg-[#e4e4e4] text-[#1b3c59] border-[#1b3c59]' : 'text-[#f2f2f0] hover:bg-[#e4e4e4] hover:text-[#1b3c59]'
          ]"
          @click="setActive('checkout')" @hover="setActive('checkout')"
          >
            Checkout
        </NuxtLink>
     </div>
     <div>
       <NuxtLink
        to="/listings"
        :class="[
          'tab w-[314px] h-[75px] flex justify-center items-center font-medium font-[Ubuntu] duration-200 ease-in-out',
          currentTab === 'listings' ? 'bg-[#e4e4e4] text-[#1b3c59] border-[#1b3c59]' : 'text-[#f2f2f0] hover:bg-[#e4e4e4] hover:text-[#1b3c59]'
          ]"
          @click="setActive('listings')" @hover="setActive('listings')"
          >
            Listings
        </NuxtLink>
     </div>
    </ul>
  </div>
</template>

<script setup lang="ts">
import { ref } from 'vue'
const currentTab = ref('')
const setActive = (tab: string) => {
  currentTab.value = tab
}
</script>

<style scoped>
.tab.router-link-active {
  cursor: pointer;
  color: #1b3c59;
  background-color: #E5E5E5;
}
</style>