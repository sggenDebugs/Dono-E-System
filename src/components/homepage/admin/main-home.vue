<!-- Parent File -->
<template>
<div>

    <div class="absolute self-stretch w-full top-0 left-0 items-center grid grid-cols-3 gap-4 ">
        <div class="w-svw max-w-3xl my-4">
            <div class="relative flex items-center">
                    <button class="absolute group w-5 h-5 ml-3">
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
            <button class="w-[10.25rem] h-9 bg-[#f2f2f0] rounded-lg shadow border border-[#d4d3d3] flex justify-center items-center">
                <div class="self-stretch grow shrink basis-0 pl-4 pr-5 py-4 justify-center items-center gap-3 inline-flex">
                    <img class="w-[1.125rem] h-[1.125rem] relative" src="/assets/img/FilterIcon.png">
                    <span class="text-center text-[#456173] text-sm font-normal">Filter Searches</span>
                </div>
            </button>

            <button class="w-[11.6875rem] h-9 bg-[#1b3c59] rounded-lg shadow border border-[#d4d3d3] flex justify-center items-center">
                <div class="grow shrink basis-0 self-stretch pl-4 pr-5 py-4 justify-center items-center gap-3 inline-flex">
                    <img class="w-[1.125rem] h-[1.125rem] relative" src="/assets/img/UploadIcon.png">
                    <span class="text-center text-[#f2f2f0] text-sm font-normal">Upload Your Tech</span>
                </div>
            </button>
        </div>
    </div>

    <div class="absolute w-full top-[12%] left-0">

        <div class="text-[#1B3C59] text-xl font-medium mb-4">
            Recently Added (10)
        </div>
        <div class="self-stretch w-full absolute top-[10%]">
            <div class="w-full border border-[#d4d3d3]"></div>
        </div>

        <ul class="flex space-x-4 overflow-x-auto scrollbar-hide py-2">
            <li class="w-[13.375rem] h-[14.0625rem] px-[1.1875rem] py-[0.875rem] bg-[#f2f2f0] rounded-[0.625rem] flex-col justify-center items-start gap-[0.3125rem] inline-flex">
                <img class="self-stretch h-[9.6875rem] rounded-xl border-2 border-[#d4d3d3]" src="https://via.placeholder.com/176x155" />
                    <div class="w-[11.0625rem] justify-between items-center inline-flex">
                        <p class="w-[5.6875rem] h-[1.125rem] text-black text-sm font-medium">Acer Laptop</p>
                        <p class="w-[5.375rem] h-[1.125rem] text-right text-black text-xs font-light">Predator Helios</p>
                    </div>
                <div class="px-[0.3125rem] bg-[#e4e4e4] rounded-xl justify-start items-center gap-[0.3125rem] inline-flex">
                    <div class="w-[0.5625rem] h-[0.5625rem] bg-[#22d056] rounded-full"></div>
                    <p class="text-center text-[#1b3c59] text-xs font-medium leading-[0.86125rem]">Almost new</p>
                </div>
            </li>

            <li class="w-[13.375rem] h-[14.0625rem] px-[1.1875rem] py-[0.875rem] bg-[#f2f2f0] rounded-[0.625rem] flex-col justify-center items-start gap-[0.3125rem] inline-flex">
                <img class="self-stretch h-[9.6875rem] rounded-xl border-2 border-[#d4d3d3]" src="https://via.placeholder.com/176x155" />
                    <div class="w-[11.0625rem] justify-between items-center inline-flex">
                        <p class="w-[5.6875rem] h-[1.125rem] text-black text-sm font-medium">HP Laptop</p>
                        <p class="w-[5.375rem] h-[1.125rem] text-right text-black text-xs font-light">Omen 16</p>
                    </div>
                <div class="px-[0.3125rem] bg-[#e4e4e4] rounded-xl justify-start items-center gap-[0.3125rem] inline-flex">
                    <div class="w-[0.5625rem] h-[0.5625rem] bg-[#22d056] rounded-full"></div>
                    <p class="text-center text-[#1b3c59] text-xs font-medium leading-[0.86125rem]">Almost new</p>
                </div>
            </li>

            <li class="w-[13.375rem] h-[14.0625rem] px-[1.1875rem] py-[0.875rem] bg-[#f2f2f0] rounded-[0.625rem] flex-col justify-center items-start gap-[0.3125rem] inline-flex">
                <img class="self-stretch h-[9.6875rem] rounded-xl border-2 border-[#d4d3d3]" src="https://via.placeholder.com/176x155" />
                    <div class="w-[11.0625rem] justify-between items-center inline-flex">
                        <p class="w-[5.6875rem] h-[1.125rem] text-black text-sm font-medium">Smart Watch</p>
                        <p class="w-[5.375rem] h-[1.125rem] text-right text-black text-xs font-light">Apple Series 10</p>
                    </div>
                <div class="px-[0.3125rem] bg-[#e4e4e4] rounded-xl justify-start items-center gap-[0.3125rem] inline-flex">
                    <div class="w-[0.5625rem] h-[0.5625rem] bg-[#ffa057] rounded-full"></div>
                    <p class="text-center text-[#1b3c59] text-xs font-medium leading-[0.86125rem]">Slightly Worn</p>
                </div>
            </li>

            <li class="w-[13.375rem] h-[14.0625rem] px-[1.1875rem] py-[0.875rem] bg-[#f2f2f0] rounded-[0.625rem] flex-col justify-center items-start gap-[0.3125rem] inline-flex">
                <img class="self-stretch h-[9.6875rem] rounded-xl border-2 border-[#d4d3d3]" src="https://via.placeholder.com/176x155" />
                    <div class="w-[11.0625rem] justify-between items-center inline-flex">
                        <p class="w-[5.6875rem] h-[1.125rem] text-black text-sm font-medium">Smart TV</p>
                        <p class="w-[5.375rem] h-[1.125rem] text-right text-black text-xs font-light">TCL QM8</p>
                    </div>
                <div class="px-[0.3125rem] bg-[#e4e4e4] rounded-xl justify-start items-center gap-[0.3125rem] inline-flex">
                    <div class="w-[0.5625rem] h-[0.5625rem] bg-[#ffd757] rounded-full"></div>
                    <p class="text-center text-[#1b3c59] text-xs font-medium leading-[0.86125rem]">Slightly used</p>
                </div>
            </li>

            <li class="w-[13.375rem] h-[14.0625rem] px-[1.1875rem] py-[0.875rem] bg-[#f2f2f0] rounded-[0.625rem] flex-col justify-center items-start gap-[0.3125rem] inline-flex">
                <img class="self-stretch h-[9.6875rem] rounded-xl border-2 border-[#d4d3d3]" src="https://via.placeholder.com/176x155" />
                    <div class="w-[11.0625rem] justify-between items-center inline-flex">
                        <p class="w-[5.6875rem] h-[1.125rem] text-black text-sm font-medium">iPhone</p>
                        <p class="w-[5.375rem] h-[1.125rem] text-right text-black text-xs font-light">iPhone 13</p>
                    </div>
                <div class="px-[0.3125rem] bg-[#e4e4e4] rounded-xl justify-start items-center gap-[0.3125rem] inline-flex">
                    <div class="w-[0.5625rem] h-[0.5625rem] bg-[#ff5d57] rounded-full"></div>
                    <p class="w-14 text-[#1b3c59] text-xs font-medium leading-[0.86125rem]">Defective</p>
                </div>
            </li>

            <li class="w-[13.375rem] h-[14.0625rem] px-[1.1875rem] py-[0.875rem] bg-[#f2f2f0] rounded-[0.625rem] flex-col justify-center items-start gap-[0.3125rem] inline-flex">
                <img class="self-stretch h-[9.6875rem] rounded-xl border-2 border-[#d4d3d3]" src="https://via.placeholder.com/176x155" />
                    <div class="w-[11.0625rem] justify-between items-center inline-flex">
                        <p class="w-[5.6875rem] h-[1.125rem] text-black text-sm font-medium">Asus Laptop</p>
                        <p class="w-[5.375rem] h-[1.125rem] text-right text-black text-xs font-light">SonicMaster</p>
                    </div>
                <div class="px-[0.3125rem] bg-[#e4e4e4] rounded-xl justify-start items-center gap-[0.3125rem] inline-flex">
                    <div class="w-[0.5625rem] h-[0.5625rem] bg-[#22d056] rounded-full"></div>
                    <p class="text-center text-[#1b3c59] text-xs font-medium leading-[0.86125rem]">Almost new</p>
                </div>
            </li>
        </ul>

    </div>

    <div class="absolute w-full top-[67.5%] left-0">

        <div class="text-[#1B3C59] text-xl font-medium mb-4">
            Admin Approved Tech (20)
        </div>
        <div class="self-stretch w-full absolute top-[10%]">
            <div class="w-full border border-[#d4d3d3]"></div>
        </div>

        <ul class="flex space-x-4 overflow-x-auto scrollbar-hide py-2">
            <li class="w-[13.375rem] h-[14.0625rem] px-[1.1875rem] py-[0.875rem] bg-[#f2f2f0] rounded-[0.625rem] flex-col justify-center items-start gap-[0.3125rem] inline-flex">
                <img class="self-stretch h-[9.6875rem] rounded-xl border-2 border-[#d4d3d3]" src="https://via.placeholder.com/176x155" />
                    <div class="w-[11.0625rem] justify-between items-center inline-flex">
                        <p class="w-[5.6875rem] h-[1.125rem] text-black text-sm font-medium">Acer Laptop</p>
                        <p class="w-[5.375rem] h-[1.125rem] text-right text-black text-xs font-light">Predator Helios</p>
                    </div>
                <div class="px-[0.3125rem] bg-[#e4e4e4] rounded-xl justify-start items-center gap-[0.3125rem] inline-flex">
                    <div class="w-[0.5625rem] h-[0.5625rem] bg-[#22d056] rounded-full"></div>
                    <p class="text-center text-[#1b3c59] text-xs font-medium leading-[0.86125rem]">Almost new</p>
                </div>
            </li>

            <li class="w-[13.375rem] h-[14.0625rem] px-[1.1875rem] py-[0.875rem] bg-[#f2f2f0] rounded-[0.625rem] flex-col justify-center items-start gap-[0.3125rem] inline-flex">
                <img class="self-stretch h-[9.6875rem] rounded-xl border-2 border-[#d4d3d3]" src="https://via.placeholder.com/176x155" />
                    <div class="w-[11.0625rem] justify-between items-center inline-flex">
                        <p class="w-[5.6875rem] h-[1.125rem] text-black text-sm font-medium">HP Laptop</p>
                        <p class="w-[5.375rem] h-[1.125rem] text-right text-black text-xs font-light">Omen 16</p>
                    </div>
                <div class="px-[0.3125rem] bg-[#e4e4e4] rounded-xl justify-start items-center gap-[0.3125rem] inline-flex">
                    <div class="w-[0.5625rem] h-[0.5625rem] bg-[#22d056] rounded-full"></div>
                    <p class="text-center text-[#1b3c59] text-xs font-medium leading-[0.86125rem]">Almost new</p>
                </div>
            </li>

            <li class="w-[13.375rem] h-[14.0625rem] px-[1.1875rem] py-[0.875rem] bg-[#f2f2f0] rounded-[0.625rem] flex-col justify-center items-start gap-[0.3125rem] inline-flex">
                <img class="self-stretch h-[9.6875rem] rounded-xl border-2 border-[#d4d3d3]" src="https://via.placeholder.com/176x155" />
                    <div class="w-[11.0625rem] justify-between items-center inline-flex">
                        <p class="w-[5.6875rem] h-[1.125rem] text-black text-sm font-medium">Smart Watch</p>
                        <p class="w-[5.375rem] h-[1.125rem] text-right text-black text-xs font-light">Apple Series 10</p>
                    </div>
                <div class="px-[0.3125rem] bg-[#e4e4e4] rounded-xl justify-start items-center gap-[0.3125rem] inline-flex">
                    <div class="w-[0.5625rem] h-[0.5625rem] bg-[#ffa057] rounded-full"></div>
                    <p class="text-center text-[#1b3c59] text-xs font-medium leading-[0.86125rem]">Slightly Worn</p>
                </div>
            </li>

            <li class="w-[13.375rem] h-[14.0625rem] px-[1.1875rem] py-[0.875rem] bg-[#f2f2f0] rounded-[0.625rem] flex-col justify-center items-start gap-[0.3125rem] inline-flex">
                <img class="self-stretch h-[9.6875rem] rounded-xl border-2 border-[#d4d3d3]" src="https://via.placeholder.com/176x155" />
                    <div class="w-[11.0625rem] justify-between items-center inline-flex">
                        <p class="w-[5.6875rem] h-[1.125rem] text-black text-sm font-medium">Smart TV</p>
                        <p class="w-[5.375rem] h-[1.125rem] text-right text-black text-xs font-light">TCL QM8</p>
                    </div>
                <div class="px-[0.3125rem] bg-[#e4e4e4] rounded-xl justify-start items-center gap-[0.3125rem] inline-flex">
                    <div class="w-[0.5625rem] h-[0.5625rem] bg-[#ffd757] rounded-full"></div>
                    <p class="text-center text-[#1b3c59] text-xs font-medium leading-[0.86125rem]">Slightly used</p>
                </div>
            </li>

            <li class="w-[13.375rem] h-[14.0625rem] px-[1.1875rem] py-[0.875rem] bg-[#f2f2f0] rounded-[0.625rem] flex-col justify-center items-start gap-[0.3125rem] inline-flex">
                <img class="self-stretch h-[9.6875rem] rounded-xl border-2 border-[#d4d3d3]" src="https://via.placeholder.com/176x155" />
                    <div class="w-[11.0625rem] justify-between items-center inline-flex">
                        <p class="w-[5.6875rem] h-[1.125rem] text-black text-sm font-medium">iPhone</p>
                        <p class="w-[5.375rem] h-[1.125rem] text-right text-black text-xs font-light">iPhone 13</p>
                    </div>
                <div class="px-[0.3125rem] bg-[#e4e4e4] rounded-xl justify-start items-center gap-[0.3125rem] inline-flex">
                    <div class="w-[0.5625rem] h-[0.5625rem] bg-[#ff5d57] rounded-full"></div>
                    <p class="w-14 text-[#1b3c59] text-xs font-medium leading-[0.86125rem]">Defective</p>
                </div>
            </li>

            <li class="w-[13.375rem] h-[14.0625rem] px-[1.1875rem] py-[0.875rem] bg-[#f2f2f0] rounded-[0.625rem] flex-col justify-center items-start gap-[0.3125rem] inline-flex">
                <img class="self-stretch h-[9.6875rem] rounded-xl border-2 border-[#d4d3d3]" src="https://via.placeholder.com/176x155" />
                    <div class="w-[11.0625rem] justify-between items-center inline-flex">
                        <p class="w-[5.6875rem] h-[1.125rem] text-black text-sm font-medium">Asus Laptop</p>
                        <p class="w-[5.375rem] h-[1.125rem] text-right text-black text-xs font-light">SonicMaster</p>
                    </div>
                <div class="px-[0.3125rem] bg-[#e4e4e4] rounded-xl justify-start items-center gap-[0.3125rem] inline-flex">
                    <div class="w-[0.5625rem] h-[0.5625rem] bg-[#22d056] rounded-full"></div>
                    <p class="text-center text-[#1b3c59] text-xs font-medium leading-[0.86125rem]">Almost new</p>
                </div>
            </li>
        </ul>
            
    </div>

</div>
</template>