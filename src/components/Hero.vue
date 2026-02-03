<template>
  <section id="hero" class="hero-section">
    <div class="container grid-hero">
      <div class="hero-text">
        <h1 class="headline" data-animate="fade-up">
          <i18n-t keypath="hero.title" tag="span">
            <template #highlight>
              <span class="highlight">{{ $t('hero.highlight') }}</span>
            </template>
          </i18n-t>
        </h1>
        
        <p class="subheadline" data-animate="fade-up" data-delay="100">
          {{ $t('hero.subtitle') }}
        </p>

        <div class="value-props">
          <div class="value-item" data-animate="fade-up" data-delay="150">
            <span class="value-icon">⚡</span>
            <div>
              <strong>{{ $t('hero.valueProps.agility.title') }}</strong>
              <p>{{ $t('hero.valueProps.agility.description') }}</p>
            </div>
          </div>
          <div class="value-item" data-animate="fade-up" data-delay="200">
            <span class="value-icon">🎯</span>
            <div>
              <strong>{{ $t('hero.valueProps.tailored.title') }}</strong>
              <p>{{ $t('hero.valueProps.tailored.description') }}</p>
            </div>
          </div>
          <div class="value-item" data-animate="fade-up" data-delay="250">
            <span class="value-icon">🚀</span>
            <div>
              <strong>{{ $t('hero.valueProps.scalable.title') }}</strong>
              <p>{{ $t('hero.valueProps.scalable.description') }}</p>
            </div>
          </div>
        </div>

        <div class="cta-group" data-animate="scale" data-delay="300">
          <a href="#contact" class="btn btn-primary">{{ $t('hero.cta.primary') }}</a>
          <a href="#services" class="btn btn-outline">{{ $t('hero.cta.secondary') }}</a>
        </div>
      </div>
      <div class="hero-visual" data-animate="fade-left" data-delay="200">
        <img src="/images/hero-workspace.png" alt="Workspace moderno de desenvolvimento" class="hero-image" />
      </div>
    </div>
  </section>
</template>

<script setup>
import { useScrollAnimation } from '@/composables/useScrollAnimation'
useScrollAnimation({ once: true })
</script>
