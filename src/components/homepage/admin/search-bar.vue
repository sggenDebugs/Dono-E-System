<template>
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
      />
      <button type="submit" class="absolute right-0 w-5 h-5 mr-3 focus:outline-none focus:shadow-outline">
        <svg 
          fill="none" 
          stroke="#456173" 
          stroke-linecap="round" 
          stroke-linejoin="round" 
          stroke-width="2" 
          viewBox="0 0 24 24" 
          class="w-4 h-4">
          <path d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path>
        </svg>
      </button>
    </div>
  </template>