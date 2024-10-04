<template>
    <div class="bg-[#E5E5E5]">
 
        <div class="self-stretch h-screen w-[314px] bg-[#1b3c59] relative">

            
                
                <div class="self-stretch w-screen flex justify-between items-center">
                    <img class="w-[314px] px-12 pt-3" src="/assets/img/DONO.png"/>

                    <div class="w-[260px] h-[56px] p-3 mr-3.5 mt-2 bg-[#f2f2f0] rounded-xl border border-[#d4d3d3] justify-start items-center gap-2.5 inline-flex">
                        <div class="w-11 h-11 flex justify-center items-center relative inset-0">
                            <!-- <img class="w-8 h-8 flex justify-center items-center" src="/assets/img/Icon.png"> -->
                        </div>

                        <div class="w-[154px] h-[31px] justify-center items-center flex">
                            <div class="w-[154px] h-[31px] text-center text-[#1b3c59] text-xl font-medium font-['Ubuntu']">Juan Dela Cruz</div>
                        </div>

                            <!-- <img class="w-[23px] h-[23px] relative" src="/assets/img/Dropdown.png"> -->
                    </div>



                </div>
                

            
            <div class="self-stretch flex flex-col justify-center items-center text-3xl absolute inset-0">
                
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

        <div class="self-stretch absolute top-[70px] right-0 m-4">
            <div class="w-[1021px] border border-[#456173]"></div>
        </div>

<table>
  <thead>
    <tr class="self-stretch sm:justify-center md: absolute w-[1024px] top-[90px] right-1.5 mx-2 flex flex-row">
        <th class="w-[312px] h-[46px] px-2.5 py-[15px] my-2 mx-3.5 bg-[#a6ed8e] justify-center items-center inline-block">
            <div class="text-center text-[#1b3c59] text-lg font-light font-['Ubuntu'] mt-[-6px]">
                DISPOSE old tech.
            </div>
        </th>

        <th class="w-[312px] h-[46px] px-2.5 py-[15px] my-2 mx-3.5 bg-[#a6ed8e] justify-center items-center inline-block">
            <div class="text-center text-[#1b3c59] text-lg font-light font-['Ubuntu'] mt-[-6px]">
                REIMAGINE its value.
            </div>
        </th>

        <th class="w-[312px] h-[46px] px-2.5 py-[15px] my-2 mx-3.5 bg-[#a6ed8e] justify-center items-center inline-block">
            <div class="text-center text-[#1b3c59] text-lg font-light font-['Ubuntu'] mt-[-6px]">
                REPURPOSE for a greener future.
            </div>
        </th>
    </tr>
  </thead>
</table>

    <div class="container w-[1024px] h-[485px] bottom-0 right-0 mx-4 absolute flex justify-center items-center">
        <slot />
    </div>

</div>

</template>
