<template>
    hello
</template>

<script setup>
    const { tmdbAccessToken } = useRuntimeConfig()
    const headers = {
        'Content-Type': 'application/json',
        'Authorization': `Bearer ${tmdbAccessToken}`
    };

    const { data } = await getApi(useNuxtApp(), 'https://api.themoviedb.org/3/search/movie', '', { headers, query: { query: 'The+Matrix' } });
    console.log(data.value)
</script>