// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  devtools: { enabled: true },
  runtimeConfig: {
    // https://developer.themoviedb.org/reference/intro/authentication
    tmdbAccessToken: '',
  }
})
