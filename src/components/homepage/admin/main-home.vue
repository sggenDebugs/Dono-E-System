<!-- Parent File -->
<template>
<div>

    <div class="absolute self-stretch w-full top-0 left-0 items-center grid grid-cols-3 gap-4 ">
        <div class="w-svw max-w-3xl my-4">
            <div class="relative flex items-center">
                    <button class="absolute group w-5 h-5 ml-3">
                        <div class="flex flex-col justify-between w-[13px] h-[13px] transform transition-all duration-300 origin-center overflow-hidden group-focus:translate-x-1.5">
                            <div class="bg-[#456173] h-[2px] w-7 transform transition-all duration-300 origin-left group-focus:rotate-[42deg] group-focus:w-2/3 delay-150"></div>
                            <div class="bg-[#456173] h-[2px] w-7 rounded transform transition-all duration-300 group-focus:translate-x-10"></div>
                            <div class="bg-[#456173] h-[2px] w-7 transform transition-all duration-300 origin-left group-focus:-rotate-[42deg] group-focus:w-2/3 delay-150"></div>
                        </div>
                    </button>
                <input 
                type="text"
                name="search"
                placeholder="Search item here"
                autocomplete="off"
                aria-label="Search item here"
                class="w-full pr-3 pl-10 py-2 font-normal text-base rounded-2xl border-none"
                >
                    <button type="submit" class="absolute right-0 w-5 h-5 mr-3 focus:outline-none focus:shadow-outline">
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
                    </button>
            </div>
        </div>

        <div class="absolute grid grid-flow-col gap-x-4 right-0">
            <button class="w-[164px] h-9 bg-[#f2f2f0] rounded-lg shadow border border-[#d4d3d3] flex justify-center items-center">
                <div class="self-stretch grow shrink basis-0 pl-4 pr-5 py-4 justify-center items-center gap-3 inline-flex">
                    <img class="w-[18px] h-[18px] relative" src="/assets/img/FilterIcon.png">
                    <span class="text-center text-[#456173] text-sm font-normal">Filter Searches</span>
                </div>
            </button>

            <button class="w-[187px] h-9 bg-[#1b3c59] rounded-lg shadow border border-[#d4d3d3] flex justify-center items-center">
                <div class="grow shrink basis-0 self-stretch pl-4 pr-5 py-4 justify-center items-center gap-3 inline-flex">
                    <img class="w-[18px] h-[18px] relative" src="/assets/img/UploadIcon.png">
                    <span class="text-center text-[#f2f2f0] text-sm font-normal">Upload Your Tech</span>
                </div>
            </button>
        </div>
    </div>

    <div>
        
    </div>

</div>
</template>