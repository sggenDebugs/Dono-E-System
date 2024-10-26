export default defineNuxtConfig({
  devtools: { enabled: true },
  srcDir: "./src",

  modules: [
    '@nuxtjs/tailwindcss',
    '@nuxt/eslint',
    '@nuxtjs/supabase',
    '@pinia/nuxt',
    '@pinia-plugin-persistedstate/nuxt',
  ],

  compatibilityDate: "2024-09-26",
});