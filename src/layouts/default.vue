<template>
    <div class="bg-[#E5E5E5]">
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
                </th>
            </tr>
        </thead>
        </table>
        <div class="self-stretch w-[77.42%] absolute top-[70px] inset-y-0 right-0 m-4">
            <div class="container w-[100%] h-[565px] absolute top-[75px] left-[50%] transform -translate-x-1/2 flex items-center justify-center">
            <slot />
        </div>
            <div class="w-full border border-[#456173]"></div>
        </div>
        <div class="self-stretch h-screen w-[314px] bg-[#1b3c59] relative">
            <HomepageAdminSidebar/>
            <HomepageAdminProfileSetting/>
        </div>
    </div>
</template>