<template>
<div>
    <div class="absolute self-stretch w-full top-2 left-0 items-center grid grid-cols-3 gap-4 ">
        <div class="w-svw max-w-3xl my-2">
            <div class="relative flex items-center">
                    <button class="absolute left-3 group w-5 h-5">
                        <div class="flex flex-col justify-between w-[0.8125rem] h-[0.8125rem] transform transition-all duration-300 origin-center overflow-hidden group-focus:translate-x-1.5">
                            <div class="bg-[#456173] h-[0.125rem] w-7 transform transition-all duration-300 origin-left group-focus:rotate-[42deg] group-focus:w-2/3 delay-150"></div>
                            <div class="bg-[#456173] h-[0.125rem] w-7 rounded transform transition-all duration-300 group-focus:translate-x-10"></div>
                            <div class="bg-[#456173] h-[0.125rem] w-7 transform transition-all duration-300 origin-left group-focus:-rotate-[42deg] group-focus:w-2/3 delay-150"></div>
                        </div>
                    </button>
                <input 
                type="text"
                name="search"
                placeholder="Search item here"
                autocomplete="off"
                aria-label="Search item here"
                class="w-full pr-3 pl-10 py-2 font-normal text-base rounded-2xl border-none">
                    <!-- <button type="submit" class="absolute right-0 w-5 h-5 mr-3 focus:outline-none focus:shadow-outline">
                        <svg 
                        fill="none" 
                        stroke="#456173" 
                        stroke-linecap="round" 
                        stroke-linejoin="round" 
                        stroke-width="2" 
                        viewBox="0 0 24 24" 
                        class="w-4 h-4">
                            <path 
                                d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z">
                            </path>
                        </svg>
                    </button> -->
            </div>
        </div>

        <div class="absolute grid grid-flow-col gap-x-4 right-0">
            <button class="w-[10.25rem] h-9 bg-[#f2f2f0] rounded-lg shadow border border-[#d4d3d3] flex justify-center items-center">
                <div class="self-stretch grow shrink basis-0 pl-4 pr-5 py-4 justify-center items-center gap-3 inline-flex">
                    <img class="w-[1.125rem] h-[1.125rem] relative" src="/assets/img/FilterIcon.png">
                    <span class="text-center text-[#456173] text-sm font-normal">Filter Searches</span>
                </div>
            </button>

            <button class="w-[11.6875rem] h-9 bg-[#1b3c59] rounded-lg shadow border border-[#d4d3d3] flex justify-center items-center" @click="toggleUploadModal">
                <div class="grow shrink basis-0 self-stretch pl-4 pr-5 py-4 justify-center items-center gap-3 inline-flex">
                    <img class="w-[1.125rem] h-[1.125rem] relative" src="/assets/img/UploadIcon.png">
                    <span class="text-center text-[#f2f2f0] text-sm font-normal">Upload Your Tech</span>
                </div>
            </button>
        </div>
      </div>
    
    <ul class="absolute flex flex-col left-0 top-14 space-y-4 overflow-auto max-h-[calc(100vh-4rem)] scrollbar-hide py-2">
      <li v-for="(row, rowIndex) in rows" :key="rowIndex">
        <div class="grid w-full top-[11%] left-0">
          <div class="text-[#1B3C59] text-xl font-medium mb-2">{{ row.title }} ({{ itemsData.length }})</div>
          <!-- <div class="self-stretch w-full absolute top-2">
            <div class="w-full border border-[#d4d3d3]"></div>
          </div> -->
          <ul class="flex space-x-4 overflow-x-auto scrollbar-hide py-2">
        <li
          v-for="item in displayedItem"
          :key="item.id"
          class="w-[13.375rem] h-[14.0625rem] px-[1.1875rem] py-[0.875rem] bg-[#f2f2f0] rounded-[0.625rem] flex-col justify-center items-start gap-[0.3125rem] inline-flex"
        >
          <img
            class="self-stretch h-[9.6875rem] rounded-xl border-2 border-[#d4d3d3]"
            :src="item.images[0]"
          />
          <div class="w-[11.0625rem] justify-between items-center inline-flex">
            <p class="w-[5.6875rem] h-[1.125rem] text-black text-sm font-medium">
              {{ item.name }}
            </p>
            <p class="w-[5.375rem] h-[1.125rem] text-right text-black text-xs font-light">
              {{ item.type }}
            </p>
          </div>
          <div
            class="px-[0.3125rem] bg-[#e4e4e4] rounded-xl justify-start items-center gap-[0.3125rem] inline-flex"
          >
            <div
              class="w-[0.5625rem] h-[0.5625rem] rounded-[5px]"
              :class="{
                'bg-[#22d056]': item.status === 'Almost new',
                'bg-[#ffa057]': item.status === 'Slightly Worn',
                'bg-[#ffd757]': item.status === 'Slightly used',
                'bg-[#ff5d57]': item.status === 'Defective'
              }"
            ></div>
            <p class="text-center text-[#1b3c59] text-xs font-medium leading-[0.86125rem]">
              {{ item.status }}
            </p>
          </div>
        </li>
      </ul>
        </div>
  </li>
    </ul>

<!-- Upload Tech Form Modal -->
<div v-if="isUploadModalOpen" 
         class="fixed top-0 left-[-20.313rem] w-screen h-screen bg-[rgba(0,_0,_0,_0.5)] flex justify-center items-center">
      <div class="w-[600px] max-h-[90vh] bg-[#f2f2f0] rounded-[8px] px-[41px] py-[18px] overflow-hidden" @click.stop>
        <!-- Modal Header -->
        <div class="text-[28px] text-[#1b3c59] font-bold mb-[18px] text-center">
          Upload Form
        </div>

        <!-- Modal Content (with scrollbar) -->
        <div class="overflow-y-auto max-h-[calc(100vh-10rem)] pr-4" style="border-radius: 8px;">
          <!-- Device Information Section -->
          <div class="mb-4">
            <div class="h-[25px] text-black text-[22px] font-normal font-['Ubuntu'] mb-[10px]">
              Device Information
            </div>
            <input id="deviceName" v-model="deviceName" type="text" 
                   class="w-full p-3 bg-white rounded-lg border border-[#d9d9d9] text-[#1b3c59] text-base font-['Ubuntu']" 
                   placeholder="Enter device name" />

            <!-- Brand and Model -->
            <div class="flex gap-2 mt-3">
                <input id="brandName" v-model="brandName" type="text" 
                       class="w-1/2 p-3 bg-white rounded-lg border border-[#d9d9d9] text-[#1b3c59] text-base font-['Ubuntu']" 
                       placeholder="Brand" />
                <input id="modelName" v-model="modelName" type="text" 
                       class="w-1/2 p-3 bg-white rounded-lg border border-[#d9d9d9] text-[#1b3c59] text-base font-['Ubuntu']" 
                       placeholder="Model" />
            </div>

            <!-- Description/Specs -->
            <textarea id="deviceSpecs" v-model="deviceSpecs" 
                      class="w-full h-[120px] p-3 mt-3 bg-white rounded-lg border border-[#d9d9d9] text-[#1b3c59] text-base font-['Ubuntu'] resize-none"
                      placeholder="Description/Specs..."></textarea>

            <!-- Weight and Height -->
            <div class="flex gap-2 mt-3">
                <input id="weightName" v-model="weightName" type="text" 
                       class="w-1/2 p-3 bg-white rounded-lg border border-[#d9d9d9] text-[#1b3c59] text-base font-['Ubuntu']" 
                       placeholder="Weight" />
                <input id="heightName" v-model="heightName" type="text" 
                       class="w-1/2 p-3 bg-white rounded-lg border border-[#d9d9d9] text-[#1b3c59] text-base font-['Ubuntu']" 
                       placeholder="Height" />
            </div>
          </div>

          <!-- E-Waste Type and Device Condition Section in a row with smaller size -->
          <div class="flex gap-4 mt-3">
            <!-- E-Waste Type -->
            <div class="w-1/2">
              <label class="block text-black text-sm font-semibold font-['Ubuntu'] mb-1">E-Waste Type</label>
              <div class="w-full h-9 px-3 bg-white rounded-lg border border-gray-300 flex items-center gap-2 text-sm">
                <span class="text-[#1b3c59] text-sm font-medium font-['Ubuntu']">Large Appliances</span>
                <div class="ml-auto w-4 h-4">
                  <!-- Dropdown Icon -->
                  <svg fill="none" stroke="#1b3c59" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24">
                    <path d="M6 9l6 6 6-6"></path>
                  </svg>
                </div>
              </div>
            </div>

            <!-- Device Condition -->
            <div class="w-1/2">
              <label class="block text-black text-sm font-semibold font-['Ubuntu'] mb-1">Device Condition</label>
              <div class="w-full h-9 px-3 bg-white rounded-lg border border-gray-300 flex items-center justify-between text-sm">
                <div class="flex items-center gap-2 bg-[#e4e4e4] px-2 py-1 rounded-lg">
                  <div class="w-2.5 h-2.5 bg-[#22d056] rounded-full"></div>
                  <span class="text-[#1b3c59] text-sm font-medium font-['Ubuntu']">Almost new</span>
                </div>
                <div class="ml-auto w-4 h-4">
                  <!-- Dropdown Icon -->
                  <svg fill="none" stroke="#1b3c59" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24">
                    <path d="M6 9l6 6 6-6"></path>
                  </svg>
                </div>
              </div>
            </div>
          </div>

          <div class="mt-4">
            <input id="tagName" v-model="tagName" type="text" 
                   class="w-full p-3 bg-white rounded-lg border border-[#d9d9d9] text-[#1b3c59] text-base font-['Ubuntu']" 
                   placeholder="Tags, e.g. Cellphone" />
          </div>

          <!-- File Upload -->
          <div class="my-4">
            <label for="uploadFile" class="block text-black text-base font-['Ubuntu'] mb-2">Add Device Images</label>
            <input id="uploadFile" v-on="uploadFile" type="file" 
                   class="w-full p-3 bg-white rounded-lg border border-[#d9d9d9] text-[#1b3c59] text-base font-['Ubuntu']" />
          </div>

          <!-- Donator Information Section -->
          <div class="mb-4">
            <div class="h-[25px] text-black text-[22px] font-normal font-['Ubuntu'] mb-[10px]">
              Donator Information
            </div>

            <input id="donatorName" v-model="donatorName" type="text" 
                   class="w-full p-3 mt-3 bg-white rounded-lg border border-[#d9d9d9] text-[#1b3c59] text-base font-['Ubuntu']" 
                   placeholder="Name" />
            
            <input id="Address" v-model="Address" type="text" 
                   class="w-full p-3 mt-3 bg-white rounded-lg border border-[#d9d9d9] text-[#1b3c59] text-base font-['Ubuntu']" 
                   placeholder="Address" />

            <textarea id="productInsights" v-model="productInsights" 
                      class="w-full h-[120px] p-3 mt-3 bg-white rounded-lg border border-[#d9d9d9] text-[#1b3c59] text-base font-['Ubuntu'] resize-none"
                      placeholder="Donator's Product Insights"></textarea>
          </div>

          <!-- Upload Button -->
          <button @click="handleUpload" 
                  class="w-full h-10 mt-3 bg-[#1b3c59] rounded-lg shadow border border-[#d4d3d3] text-white">
            Upload
          </button>

          <!-- Close Button -->
          <button @click="toggleUploadModal" 
                  class="mt-4 text-center text-[#1b3c59] text-sm">
            Close
          </button>
        </div>
      </div>
    </div>

</div>
</template>

<script setup lang="ts">
import { computed, ref, onMounted } from 'vue';
import { useItemStore } from '~/stores/store-itemStore';
import { StatusColor } from '~/common/enums/StatusColors';
import { StatusText } from '~/common/enums/StatusText';
import type { displayItem } from '~/types/displayItem-type';

const isUploadModalOpen = ref(false); // Modal visibility state
const uploadFile = ref<File | null>(null); // For file input

// Function to toggle the modal visibility
const toggleUploadModal = () => {
    isUploadModalOpen.value = !isUploadModalOpen.value;
};

// Function to handle file upload (you can modify this with your upload logic)
const handleUpload = () => {
    if (uploadFile.value) {
        // Process the file upload logic here
        console.log("File to upload:", uploadFile.value);
    }
};

const itemsData = ref<displayItem[]>([]);
const itemStore = useItemStore();
const filteredItems = computed(() => {
      
return itemStore.getItems.map(item => ({
    images: item.images[0],
    status: item.status,
    type: item.type,
    name: item.name,
    id: item.id
  }));
});

const rows = [
  {title: 'Featured'},
  {title: 'Phones'},
  {title: 'Laptops'}
];

onMounted(() => {
  itemsData.value = filteredItems.value;
});
const displayedItem = computed(() => {
     
  return itemsData.value;
});

const getStatusText = (status: number) => {
  const statusText: { [key: number]: string } = {
    1: StatusText.AlmostNew,
    2: StatusText.SlightlyWorn,
    3: StatusText.SlightlyUsed,
    4: StatusText.Defective,
  };

  return statusText[status] || "";
};

const classTag = (status: number) => {
  const statusColor: { [key: number]: string } = {
    1: StatusColor.AlmostNew,
    2: StatusColor.SlightlyWorn,
    3: StatusColor.SlightlyUsed,
    4: StatusColor.Defective,
  };

  return statusColor[status] || "";
};

</script>