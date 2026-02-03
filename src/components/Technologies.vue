<template>
  <section id="tech" class="section-padding bg-surface">
    <div class="container">
      <div class="section-header text-center">
        <h2 data-animate="fade-up">{{ $t('technologies.title') }}</h2>
        <p class="section-subtitle" data-animate="fade-up" data-delay="100">{{ $t('technologies.subtitle') }}</p>
      </div>
      <div class="grid-tech">
        <div class="tech-item" data-animate="scale" data-delay="100">
          <span class="tech-icon">⚡</span>
          <h3>{{ $t('technologies.items.vue.name') }}</h3>
          <p>{{ $t('technologies.items.vue.description') }}</p>
        </div>
        <div class="tech-item" data-animate="scale" data-delay="150">
          <span class="tech-icon">🎨</span>
          <h3>{{ $t('technologies.items.laravel.name') }}</h3>
          <p>{{ $t('technologies.items.laravel.description') }}</p>
        </div>
        <div class="tech-item" data-animate="scale" data-delay="200">
          <span class="tech-icon">⚛️</span>
          <h3>{{ $t('technologies.items.react.name') }}</h3>
          <p>{{ $t('technologies.items.react.description') }}</p>
        </div>
        <div class="tech-item" data-animate="scale" data-delay="250">
          <span class="tech-icon">🟢</span>
          <h3>{{ $t('technologies.items.node.name') }}</h3>
          <p>{{ $t('technologies.items.node.description') }}</p>
        </div>
        <div class="tech-item" data-animate="scale" data-delay="300">
          <span class="tech-icon">🐍</span>
          <h3>{{ $t('technologies.items.python.name') }}</h3>
          <p>{{ $t('technologies.items.python.description') }}</p>
        </div>
        <div class="tech-item" data-animate="scale" data-delay="350">
          <span class="tech-icon">🔄</span>
          <h3>{{ $t('technologies.items.n8n.name') }}</h3>
          <p>{{ $t('technologies.items.n8n.description') }}</p>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
import { useScrollAnimation } from '@/composables/useScrollAnimation'
useScrollAnimation({ once: true })
</script>
