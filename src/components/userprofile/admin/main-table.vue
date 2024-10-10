<template>
  <div class="w-[98%] h-[fit-content] top-[140px] justify-start absolute left-3">
    <TabView class="w-[217px] h-[37px] bg-[#f2f2f0] rounded-tl-[15px] flex-col justify-end items-center absolute left-0 top-0">
      
      <!-- Tab for Current Transactions -->
      <TabPanel
        class="w-[216px] h-[37px] py-3 justify-center items-center gap-1 inline-flex cursor cursor-pointer"
        :class="{ 'active-tab': activeTab === 'current' }"
        @click="setActiveTab('current')"
      >
        <h1 class="text-center text-[#1b3c59] text-lg font-medium">Current Transactions</h1>
      </TabPanel>
      
      <!-- Tab for Transaction History -->
      <TabPanel
        class="w-[217px] h-[37px] py-3 bg-[#f2f2f0] justify-center items-center gap-1 inline-flex absolute rounded-tr-[15px] cursor-pointer"
        :class="{ 'active-tab': activeTab === 'history' }"
        @click="setActiveTab('history')"
      >
        <h1 class="text-center text-[#1b3c59] text-lg font-medium">Transaction History</h1>
      </TabPanel>

    </TabView>

    <!-- Content for Current Transactions -->
    <div v-if="activeTab === 'current'" class="w-[1200px] h-[385px] left-0 top-[37px] absolute bg-[#f2f2f0]">
      <UserprofileAdminCurrentTransaction />
    </div>

    <!-- Content for Transaction History -->
    <div v-if="activeTab === 'history'" class="w-[1200px] h-[385px] left-0 top-[37px] absolute bg-[#f2f2f0]">
      <UserprofileAdminTransactionHistory />
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue'

// Declare the active tab
const activeTab = ref('current') // default to 'current'

// Function to set the active tab
const setActiveTab = (tab) => {
  activeTab.value = tab
}
</script>

<style scoped>
.active-tab {
  background-color: #e2e2e0; /* Highlight active tab */
  border-bottom: 2px solid #1b3c59;
}
</style>
