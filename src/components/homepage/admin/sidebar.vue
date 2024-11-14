<template> 
  <div class="flex flex-col items-center h-screen w-[314px] ">
    <!-- Header Image -->
    <div class="flex justify-center pt-3 pb-4 bg-[#1b3c59]">
      <img class="w-[314px] px-12" src="/assets/img/DONO.png" alt="Header Image" />
    </div>

    <!-- Navigation Tabs -->
    <ul class="flex flex-col items-center flex-grow">
      <div class="tab flex-1 w-[314px] h-[75px] bg-[#1b3c59] flex justify-center items-center"></div>

      <!-- Links -->
      <NuxtLink
        v-for="(tab, index) in tabs"
        :key="tab.id"
        :aria-selected="selectedTab === tab.id ? 'true' : 'false'"
        role="tab"
        @click="selectTab(tab.id)"
        :class="[ 
          'tab w-[314px] h-[75px] flex justify-center items-center font-medium font-[Ubuntu]',
          { selected: selectedTab === tab.id ? 'bg-[#e4e4e4] text-[#1b3c59] border-[#1b3c59]' : '' }
        ]"
        :to="tab.name"
        @mouseover="hoverTab = tab.name"
        @mouseleave="hoverTab = ''"
      >
        <img :src="selectedTab === tab.id || hoverTab === tab.name ? tab.activeImg : tab.img" class="mr-4" />
        {{ tab.name }}
      </NuxtLink>
      
      <div class="tab  flex-1 w-[314px] h-[75px] bg-[#1b3c59] flex justify-center items-center"></div>
    </ul>    

    <!-- Footer Profile Setting -->
    <HomepageAdminProfileSetting class="mt-auto pb-4 bg-[#1b3c59]"/>
  </div>
</template>

<script setup lang="ts">
import { ref, onMounted } from 'vue'
import home from '@/assets/img/home.png'
import activeHome from '@/assets/img/home-active.png'
import basket from '@/assets/img/basket.png'
import activeBasket from '@/assets/img/basket-active.png'
import listings from '@/assets/img/listings.png'
import activeListings from '@/assets/img/listings-active.png'

const hoverTab = ref('')
const selectedTab = ref(1);

const tabs = [
  { id: 1, name: 'Home', route: '/home', img: home, activeImg: activeHome},
  { id: 2, name: 'Basket', route: '/basket', img: basket, activeImg: activeBasket},
  { id: 3, name: 'Listings', route: '/listings', img: listings, activeImg: activeListings }
];

onMounted(() => {
  const savedTab = sessionStorage.getItem('selectedTab');
  if (savedTab) {
    selectedTab.value = parseInt(savedTab);
  }
});

const selectTab = (tabId: number) => {
  selectedTab.value = tabId;
  sessionStorage.setItem('selectedTab', tabId.toString());
};

const tabs = [
  { id: 1, name: 'Home', route: '/home', img: home, activeImg: activeHome},
  { id: 2, name: 'Basket', route: '/basket', img: basket, activeImg: activeBasket},
  { id: 3, name: 'Listings', route: '/listings', img: listings, activeImg: activeListings }
];

onMounted(() => {
  const savedTab = sessionStorage.getItem('selectedTab');
  if (savedTab) {
    selectedTab.value = parseInt(savedTab);
  }
});

const selectTab = (tabId: number) => {
  selectedTab.value = tabId;
  sessionStorage.setItem('selectedTab', tabId.toString());
};
</script>


<style scoped>
.tab:has(+ .tab[aria-selected="true"]){
  border-bottom-right-radius: 20px;
}

.tab[aria-selected="true"] + .tab{
  border-top-right-radius: 20px;
}

.tab {
  background-color: #1b3c59;
  color: #f2f2f0;
}

.tab[aria-selected="false"]:hover {
  background-color: #e4e4e4;
  color: #1b3c59;
}

.tab {
  transition: all 0.2s ease-in-out;
}

.tab.router-link-active {
  cursor: pointer;
  color: #1b3c59;
  background-color: transparent
}
</style>