<script setup lang="ts">
import { ref, onMounted } from 'vue'
import type { Language } from '@/types/database'
import axios from 'axios'

const languages = ref<Language[]>([])
const loading = ref(true)
const error = ref<string | null>(null)

const fetchLanguages = async () => {
  try {
    const res = await axios.get<Language[]>('/api/languages')
    languages.value = res.data
  } catch (err) {
    error.value = 'Failed to load languages'
    console.error(err)
  } finally {
    loading.value = false
  }
}

onMounted(fetchLanguages)
</script>

<template>
  <div>
    <h1>Languages</h1>
    <div v-if="loading">Loading...</div>
    <div v-else-if="error">{{ error }}</div>
    <ul v-else>
      <li v-for="lang in languages" :key="lang.id">{{ lang.name }} – {{ lang.level }}</li>
    </ul>
  </div>
</template>
