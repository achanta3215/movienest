<template>
    <div>
        <h1>Search Results</h1>
        <ul>
            <li v-for="movie in results" :key="movie.id">
                {{ movie.title }}
                <img :src="`https://image.tmdb.org/t/p/w500${movie.poster_path}`" alt="Movie poster">
            </li>
        </ul>
    </div>
</template>

<script setup>
const { tmdbAccessToken } = useRuntimeConfig()
const headers = {
    'Content-Type': 'application/json',
    'Authorization': `Bearer ${tmdbAccessToken}`
};

const { data } = await getApi(useNuxtApp(), 'https://api.themoviedb.org/3/search/movie', { headers, query: { query: 'The+Matrix' } });
const results = ref(data.value.results);

</script>