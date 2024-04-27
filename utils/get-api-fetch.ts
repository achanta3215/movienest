import type { NuxtApp } from "#app";

export default function(context: NuxtApp, path: string, method: any, payload: any, options?: any) {
    const apiBase = ''
    return $fetch(`${apiBase}${path}`, { method, body: payload, ...options });
}