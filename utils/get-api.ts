import type { NuxtApp } from "#app";

export default function(context: NuxtApp, path: string, options?: any) {
    const apiBase = ''
    return useFetch(`${apiBase}${path}`, { ...options });
}