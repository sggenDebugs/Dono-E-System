<template>
  <NuxtLayout>
    <NuxtPage />
  </NuxtLayout>
</template>

<script setup>
import { createPinia } from 'pinia';
import { useHead } from '@vueuse/head';
import { onMounted } from 'vue';

const pinia = createPinia();

// Use Pinia in the app
onMounted(() => {
  const app = getCurrentInstance().appContext.app;
  app.use(pinia);
});

useHead({
  title: 'Your App Title',
});
</script>