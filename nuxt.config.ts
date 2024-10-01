// https://nuxt.com/docs/api/configuration/nuxt-config

export default defineNuxtConfig({
  devtools: { enabled: true },
  srcDir: "./src",

  modules: [
    '@nuxtjs/tailwindcss',
    '@nuxt/eslint',
    "@nuxtjs/supabase",
  ],

  compatibilityDate: "2024-09-26",
});