export default defineEventHandler(async (event) => {
    const query = getQuery(event);
    
    const { tmdbAccessToken } = useRuntimeConfig()
    const headers = {
        'Content-Type': 'application/json',
        'Authorization': `Bearer ${tmdbAccessToken}`
    };
    const searchMovies = await $fetch('https://api.themoviedb.org/3/search/movie', { headers, query: { query: query.search_txt } });
    return searchMovies;
  })