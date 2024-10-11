<template>
  <div>
      <div class="w-[33vw] h-screen absolute right-0 top-0 bg-white">
        <div class="absolute top-9 right-16 text-[#1b3c59] text-xl font-medium cursor-pointer" label="Sign Up" severeity="info" @click="openSignUpModal()">
        Sign in
        </div>
      </div>

      <div class="absolute left-0 top-0 w-[67vw] h-screen bg-[#1b3c59] flex flex-col justify-center pl-[100px][]">
        <img class="w-[741px] h-[300px] ml-[75px] mt-10" src="~/assets/img/donologo-login.png" />
        <div class="text-[#f2f2f0] text-[65px] font-bold leading-tight relative left-0 top-0 pl-[118px] mb-10 w-auto">
          Dispose.<br />Reimagine.<br />Repurpose.
        </div>
          <div class="text-[#f2f2f0] text-2xl font-medium mt-0 ml-[max-w-[400px] relative left-0 top-0 mb-20 pl-[118px]">Whether you're selling or donating,<br/> you help reduce e-waste and support a<br/> circular economy, making a positive<br/> impact on both the environment and<br/> the community. Post your tech to<br/> DONO App now!</div>
      </div>
      
      <div class="absolute right-[13.5vw] top-1/2 transform -translate-y-1/2 flex">
        <div class="bg-[#a6ed8e] flex justify-center mt-[250px] items-center w-[300px] h-[450px]"></div>
        <div class="bg-[#1b3c59] flex justify-center mt-[250px] items-center w-[300px] h-[450px]"></div>
      </div>
      
      <div class="w-screen absolute top-4 left-0 flex justify-between items-center px-8"></div> 
      <LoginModal v-if="currentModal === 'signUp'"  @close="closeModal()"/>
  </div>
</template>

<script setup lang="ts">
import { Modaltype } from '~/common/enums/Modals';

const currentModal = ref<Modaltype | null>(null);

definePageMeta({
  layout: "no-layout",
})

function openSignUpModal() {
  currentModal.value = Modaltype.SignUp;
}

function closeModal() {
  currentModal.value = null;
}

</script>
  
