<template>
  <section id="differentials" class="section-padding">
    <div class="container">
      <div class="section-header text-center">
        <h2 data-animate="fade-up">{{ $t('differentials.title') }}</h2>
      </div>
      <div class="grid-differentials">
        <div 
          v-for="(item, index) in $tm('differentials.items')" 
          :key="index"
          class="diff-item" 
          data-animate="fade-up" 
          :data-delay="100 + (index * 50)"
        >
          <span class="check-icon">✓</span>
          <span>{{ $rt(item) }}</span>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
import { useScrollAnimation } from '@/composables/useScrollAnimation'
useScrollAnimation({ once: true })
</script>
