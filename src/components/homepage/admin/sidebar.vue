<template> 
  <div>
    <img class="w-[314px] px-12 pt-3" src="/assets/img/DONO.png"/>
    <ul class="self-stretch flex flex-col justify-center items-center text-3xl absolute inset-0">
      <div>
        <NuxtLink
          to="/home"
          :class="[
            'tab w-[314px] h-[75px] flex justify-center items-center font-medium font-[Ubuntu] duration-200 ease-in-out',
            currentTab === 'home' ? 'bg-[#e4e4e4] text-[#1b3c59] border-[#1b3c59]' : 'text-[#f2f2f0] hover:bg-[#e4e4e4] hover:text-[#1b3c59]'
          ]"
          @click="setActive('home')"
          @mouseover="hoverTab = 'home'"
          @mouseleave="hoverTab = ''"
        >
          <img :src="currentTab === 'home' || hoverTab === 'home' ? activeHome : home" class="mr-4"/>
          Home
        </NuxtLink>
      </div>  

      <div>
        <NuxtLink
          to="/basket"
          :class="[
            'tab w-[314px] h-[75px] flex justify-center items-center font-medium font-[Ubuntu] duration-200 ease-in-out',
            currentTab === 'basket' ? 'bg-[#e4e4e4] text-[#1b3c59] border-[#1b3c59]' : 'text-[#f2f2f0] hover:bg-[#e4e4e4] hover:text-[#1b3c59]'
          ]"
          @click="setActive('basket')"
          @mouseover="hoverTab = 'basket'"
          @mouseleave="hoverTab = ''"
        >
          <img :src="currentTab === 'basket' || hoverTab === 'basket' ? activeBasket : basket" class="mr-4"/>
          Basket
        </NuxtLink>
      </div>

      <div>
        <NuxtLink
          to="/listings"
          :class="[
            'tab w-[314px] h-[75px] flex justify-center items-center font-medium font-[Ubuntu] duration-200 ease-in-out',
            currentTab === 'listings' ? 'bg-[#e4e4e4] text-[#1b3c59] border-[#1b3c59]' : 'text-[#f2f2f0] hover:bg-[#e4e4e4] hover:text-[#1b3c59]'
          ]"
          @click="setActive('listings')"
          @mouseover="hoverTab = 'listings'"
          @mouseleave="hoverTab = ''"
        >
          <img :src="currentTab === 'listings' || hoverTab === 'listings' ? activeListings : listings" class="mr-4"/>
          Listings
        </NuxtLink>
      </div>
    </ul>
    <HomepageAdminProfileSetting class="absolute bottom-0 left-1.5"/>
  </div>
</template>

<script setup lang="ts">
import { ref } from 'vue'
import home from '@/assets/img/home.png'
import activeHome from '@/assets/img/home-active.png'
import basket from '@/assets/img/basket.png'
import activeBasket from '@/assets/img/basket-active.png'
import listings from '@/assets/img/listings.png'
import activeListings from '@/assets/img/listings-active.png'

const currentTab = ref('')
const hoverTab = ref('')

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
