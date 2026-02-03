<template>
  <section id="about" class="section-padding">
    <div class="container grid-about">
      <div class="about-text">
        <h2 data-animate="fade-up">{{ $t('about.title') }}</h2>
        <p data-animate="fade-up" data-delay="100">
          <i18n-t keypath="about.description" tag="span">
            <template #strong1>
              <strong>{{ $t('about.strong1') }}</strong>
            </template>
            <template #strong2>
              <strong>{{ $t('about.strong2') }}</strong>
            </template>
          </i18n-t>
        </p>
      </div>
      <div class="about-visual" data-animate="fade-left" data-delay="200">
        <div class="code-block-visual">
          <pre><code>{
  "mission": "Build & Scale",
  "focus": ["Web", "Mobile", "APIs"],
  "values": [
    "Clean Code",
    "Performance",
    "User Experience"
  ],
  "status": "Ready to Deploy"
}</code></pre>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
import { useScrollAnimation } from '@/composables/useScrollAnimation'
useScrollAnimation({ once: true })
</script>
