<script setup lang="ts">
import ExperienceList from '@/components/ExperienceList.vue'
import EducationList from '@/components/EducationList.vue'
import LanguageList from '@/components/LanguageList.vue'
import ToolList from '@/components/ToolList.vue'
</script>

<template>
  <div>
    <ExperienceList />
    <EducationList />
    <LanguageList />
    <ToolList />
  </div>
</template>

<!-- <style scoped>
header {
  line-height: 1.5;
}

.logo {
  display: block;
  margin: 0 auto 2rem;
}

@media (min-width: 1024px) {
  header {
    display: flex;
    place-items: center;
    padding-right: calc(var(--section-gap) / 2);
  }

  .logo {
    margin: 0 2rem 0 0;
  }

  header .wrapper {
    display: flex;
    place-items: flex-start;
    flex-wrap: wrap;
  }
}
</style> -->
