<template>
  <section id="why-system" class="section-padding bg-surface">
    <div class="container">
      <div class="section-header text-center">
        <h2 data-animate="fade-up">{{ $t('whySystem.title') }}</h2>
        <p class="section-subtitle" data-animate="fade-up" data-delay="100">{{ $t('whySystem.subtitle') }}</p>
      </div>

      <div class="grid-problems">
        <div class="problem-card" data-animate="fade-up" data-delay="100">
          <div class="problem-icon">📊</div>
          <h3>{{ $t('whySystem.problems.scattered.title') }}</h3>
          <p>{{ $t('whySystem.problems.scattered.description') }}</p>
        </div>
        <div class="problem-card" data-animate="fade-up" data-delay="150">
          <div class="problem-icon">⏰</div>
          <h3>{{ $t('whySystem.problems.time.title') }}</h3>
          <p>{{ $t('whySystem.problems.time.description') }}</p>
        </div>
        <div class="problem-card" data-animate="fade-up" data-delay="200">
          <div class="problem-icon">❌</div>
          <h3>{{ $t('whySystem.problems.errors.title') }}</h3>
          <p>{{ $t('whySystem.problems.errors.description') }}</p>
        </div>
        <div class="problem-card" data-animate="fade-up" data-delay="250">
          <div class="problem-icon">📈</div>
          <h3>{{ $t('whySystem.problems.scaling.title') }}</h3>
          <p>{{ $t('whySystem.problems.scaling.description') }}</p>
        </div>
      </div>

      <div class="solution-box" data-animate="fade-up" data-delay="300">
        <div class="solution-content">
          <h3>{{ $t('whySystem.solution.title') }}</h3>
          <p><strong>{{ $t('whySystem.solution.description') }}</strong></p>
          
          <div class="stats-grid">
            <div class="stat-item">
              <span class="stat-number" data-counter data-suffix="%">70</span>
              <span class="stat-label">{{ $t('whySystem.solution.stats.manual') }}</span>
            </div>
            <div class="stat-item">
              <span class="stat-number" data-counter data-suffix="%">40</span>
              <span class="stat-label">{{ $t('whySystem.solution.stats.productivity') }}</span>
            </div>
            <div class="stat-item">
              <span class="stat-number" data-counter data-suffix="%">300</span>
              <span class="stat-label">{{ $t('whySystem.solution.stats.roi') }}</span>
            </div>
          </div>
        </div>
        <div class="solution-image">
          <img src="/images/dashboard.png" alt="Dashboard organizado com dados e métricas" />
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
import { useScrollAnimation, useCounterAnimation } from '@/composables/useScrollAnimation'
useScrollAnimation({ once: true })
useCounterAnimation()
</script>
