<template>
    <div class="bg-[#E5E5E5]">
        <div class="self-stretch h-screen w-[314px] bg-[#1b3c59] relative">
            <div class="self-stretch w-screen flex justify-between items-center">
                <img class="w-[314px] px-12 pt-3" src="/assets/img/DONO.png"/>
                <div class="w-[260px] h-[56px] p-3 mr-3.5 mt-2 bg-[#f2f2f0] rounded-xl border border-[#d4d3d3] justify-start items-center gap-2.5 inline-flex">
                    <div class="w-11 h-11 flex justify-center items-center relative inset-0">
                        <img class="w-8 h-8 flex justify-center items-center" src="/assets/img/Icon.png"> 
                    </div>
                    <div class="w-[154px] h-[31px] justify-center items-center flex">
                        <div class="w-[154px] h-[31px] text-center text-[#1b3c59] text-xl font-medium font-['Ubuntu']">Juan Dela Cruz</div>
                    </div>
                        <img class="w-[23px] h-[23px] relative hover:cursor-pointer" src="/assets/img/Dropdown.png">
                </div>
            </div>

            <div class="w-auto self-stretch flex flex-col justify-center items-center text-3xl absolute inset-0">
                <div class="w-[314px] h-[75px] flex justify-center items-center text-[#f2f2f0] hover:bg-[#e4e4e4] hover:text-[#1b3c59] hover:cursor-pointer  rounded-r-[20px] font-medium font-['Ubuntu']">
                    Homepage
                </div>
                <div class="w-[314px] h-[75px] flex justify-center items-center text-[#f2f2f0] hover:bg-[#e4e4e4] hover:text-[#1b3c59] hover:cursor-pointer  rounded-r-[20px] font-medium font-['Ubuntu']">
                    Dono Page
                </div>  
                <div class="w-[314px] h-[75px] flex justify-center items-center text-[#f2f2f0] hover:bg-[#e4e4e4] hover:text-[#1b3c59] hover:cursor-pointer  rounded-r-[20px] font-medium font-['Ubuntu']">
                    Checkout
                </div>
                <div class="w-[314px] h-[75px] flex justify-center items-center text-[#f2f2f0] hover:bg-[#e4e4e4] hover:text-[#1b3c59] hover:cursor-pointer  rounded-r-[20px] font-medium font-['Ubuntu']">
                    Listings
                </div>
            </div>
        </div>
        <div class="self-stretch w-[77.42%] absolute top-[70px] inset-y-0 right-0 m-4">
            <div class="w-full border border-[#456173]"></div>
        </div>

        <table>
        <thead>
            <tr class="self-stretch sm:justify-center absolute w-[79%] top-[90px] right-0 mr-1 flex flex-row">
                <th class="w-[31%] h-[0%] px-2.5 py-[15px] my-2 mx-3.5 bg-[#a6ed8e] justify-center items-center inline-block overflow-hidden">
                    <div class="text-center text-[#1b3c59] text-[1.3vw] font-light font-['Ubuntu']">
                        DISPOSE old tech.
                    </div>
                </th>
                <th class="w-[31%] h-[0%] px-2.5 py-[15px] my-2 mx-3.5 bg-[#a6ed8e] justify-center items-center inline-block overflow-hidden">
                    <div class="text-center text-[#1b3c59] text-[1.3vw] font-light font-['Ubuntu']">
                        REIMAGINE its value.
                    </div>
                </th>
                <th class="w-[31%] h-[0%] px-2.5 py-[15px] my-2 mx-3.5 bg-[#a6ed8e] justify-center items-center inline-block overflow-hidden">
                    <div class="text-center text-[#1b3c59] text-[1.3vw] font-light font-['Ubuntu']">
                        REPURPOSE for a greener future.
                    </div>
                    <div class="container w-[100%] h-[565px] absolute top-[70px] left-[50%] transform -translate-x-1/2 flex justify-center items-center">
                        <slot />
                    </div>
                </th>
            </tr>
        </thead>
        </table>
    </div>
</template>
