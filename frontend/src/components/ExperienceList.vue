<script setup lang="ts">
import { ref, onMounted } from 'vue'
import type { Experience } from '@/types/database'
import { getExperiences } from '@/services/api'

const experiences = ref<Experience[]>([])
const loading = ref(true)
const error = ref<string | null>(null)

onMounted(async () => {
  try {
    experiences.value = await getExperiences()
  } catch (err) {
    error.value = 'Failed to load experiences'
    console.error(err)
  } finally {
    loading.value = false
  }
})
</script>

<template>
  <div class="p-6">
    <h1 class="text-2xl font-bold mb-4">Experience</h1>

    <div v-if="loading">Loading...</div>
    <div v-else-if="error">{{ error }}</div>
    <div v-else>
      <div v-for="exp in experiences" :key="exp.id" class="mb-6 border-b pb-4">
        <h2 class="text-xl font-semibold">{{ exp.role }} @ {{ exp.company }}</h2>
        <p class="text-gray-600 text-sm">
          {{ exp.startDate }} – {{ exp.endDate || 'Present' }}
        </p>
        <p class="mt-2">{{ exp.description }}</p>

        <ul class="list-disc list-inside mt-2">
          <li v-for="r in exp.responsibilities" :key="r.id">{{ r.text }}</li>
        </ul>
      </div>
    </div>
  </div>
</template>
