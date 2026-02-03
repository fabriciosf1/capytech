<template>
  <section id="contact" class="section-padding">
    <div class="container container-narrow">
      <div class="card contact-card text-center" data-animate="fade-up">
        <h2>{{ $t('contact.title') }}</h2>
        <p class="contact-sub">{{ $t('contact.subtitle') }}</p>

        <div class="consultation-benefits">
          <div 
            v-for="(item, index) in $tm('contact.benefits')" 
            :key="index"
            class="benefit-item" 
            data-animate="fade-up" 
            :data-delay="100 + (index * 50)"
          >
            <span class="benefit-icon">✅</span>
            <span>{{ $rt(item) }}</span>
          </div>
        </div>

        <div class="contact-info">
          <div class="contact-row">
            <span class="contact-label">{{ $t('contact.labels.email') }}</span>
            <a href="mailto:fabriciosf@gmail.com" class="contact-link">fabriciosf@gmail.com</a>
          </div>
          <div class="contact-row">
            <span class="contact-label">{{ $t('contact.labels.discord') }}</span>
            <span class="contact-value">fabricio404</span>
          </div>
          <div class="contact-row">
            <span class="contact-label">{{ $t('contact.labels.whatsapp') }}</span>
            <a href="https://wa.me/5534991935235" target="_blank" class="contact-link">(34) 9 9193-5235</a>
          </div>
        </div>

        <a href="https://wa.me/5534991935235" target="_blank" class="btn btn-primary btn-lg pulse" data-animate="scale" data-delay="300">{{ $t('contact.cta') }}</a>
        
        <p class="guarantee">{{ $t('contact.guarantee') }}</p>
      </div>
    </div>
  </section>
</template>

<script setup>
import { useScrollAnimation } from '@/composables/useScrollAnimation'
useScrollAnimation({ once: true })
</script>
