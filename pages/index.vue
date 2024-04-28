<template>
    <div>
        <h1>Search Movies</h1>
        <v-text-field v-model="searchQuery" label="Search" outlined></v-text-field>
        <v-btn @click="searchMovies">Search</v-btn>
        <v-row>
            <v-col cols="12" sm="6" md="4" lg="3" v-for="movie in results" :key="movie.id">
                <div>
                    {{ movie.title }}
                    <img :src="`https://image.tmdb.org/t/p/w500${movie.poster_path}`" alt="Movie poster">
                </div>
            </v-col>
        </v-row>
    </div>
</template>

<script setup>
const { tmdbAccessToken } = useRuntimeConfig()
const headers = {
    'Content-Type': 'application/json',
    'Authorization': `Bearer ${tmdbAccessToken}`
};

const searchQuery = ref('');
const results = ref([]);
const searchMovies = async () => {
    const { data } = await getApi(useNuxtApp(), 'api/tmbd', { headers, query: { search_txt: searchQuery.value } });
    results.value = data.value.results;
}

</script>