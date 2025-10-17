<script setup lang="ts">
import { ref, onMounted } from 'vue'
import type { Tool } from '@/types/database'
import axios from 'axios'

const tools = ref<Tool[]>([])
const loading = ref(true)
const error = ref<string | null>(null)

const fetchTools = async () => {
  try {
    const res = await axios.get<Tool[]>('/api/tool')
    tools.value = res.data
  } catch (err) {
    error.value = 'Failed to load tools'
    console.error(err)
  } finally {
    loading.value = false
  }
}

onMounted(fetchTools)
</script>

<template>
  <div>
    <h1>Tools</h1>
    <div v-if="loading">Loading...</div>
    <div v-else-if="error">{{ error }}</div>
    <ul v-else>
      <li v-for="tool in tools" :key="tool.id">{{ tool.name }} – {{ tool.level }}</li>
    </ul>
  </div>
</template>