<template>
    <ul class = "self-stretch flex flex-col justify-center items-center text-3xl absolute inset-0">
        <NuxtLink
        to="/homeboard"
        class="w-[314px] h-[75px] flex justify-center items-center text-[#f2f2f0] hover:bg-[#e4e4e4] hover:text-[#1b3c59] hover:cursor-pointer  rounded-r-[20px] font-medium font-['Ubuntu']">
            Home
        </NuxtLink>
        <NuxtLink
        to="/donoboard"
        class="w-[314px] h-[75px] flex justify-center items-center text-[#f2f2f0] hover:bg-[#e4e4e4] hover:text-[#1b3c59] hover:cursor-pointer  rounded-r-[20px] font-medium font-['Ubuntu']">
            Dono
        </NuxtLink>
        <NuxtLink
        to="/checkoutboard"
        class="w-[314px] h-[75px] flex justify-center items-center text-[#f2f2f0] hover:bg-[#e4e4e4] hover:text-[#1b3c59] hover:cursor-pointer  rounded-r-[20px] font-medium font-['Ubuntu']">
            Checkout
        </NuxtLink>
        <NuxtLink
        to="/listingsboard"
        class="w-[314px] h-[75px] flex justify-center items-center text-[#f2f2f0] hover:bg-[#e4e4e4] hover:text-[#1b3c59] hover:cursor-pointer  rounded-r-[20px] font-medium font-['Ubuntu']">
            Listings
        </NuxtLink>
    </ul>
</template>