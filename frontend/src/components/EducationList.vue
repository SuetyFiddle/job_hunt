<script setup lang="ts">
import { ref, onMounted } from 'vue'
import type { Education } from '@/types/database'
import axios from 'axios'

const educations = ref<Education[]>([])
const loading = ref(true)
const error = ref<string | null>(null)

const fetchEducation = async () => {
  try {
    const res = await axios.get<Education[]>('/api/education')
    educations.value = res.data
  } catch (err) {
    error.value = 'Failed to load education'
    console.error(err)
  } finally {
    loading.value = false
  }
}

onMounted(fetchEducation)
</script>

<template>
  <div>
    <h1>Education</h1>
    <div v-if="loading">Loading...</div>
    <div v-else-if="error">{{ error }}</div>
    <div v-else>
      <div v-for="edu in educations" :key="edu.id" class="mb-4 border-b pb-2">
        <h2>{{ edu.degree }} @ {{ edu.institution }}</h2>
        <p>{{ edu.startDate }} – {{ edu.endDate }}</p>
        <p>Result: {{ edu.result }}</p>
        <p>{{ edu.description }}</p>
      </div>
    </div>
  </div>
</template>