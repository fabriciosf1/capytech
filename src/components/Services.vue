<template>
  <section id="services" class="section-padding">
    <div class="container">
      <div class="section-header text-center">
        <h2 data-animate="fade-up">{{ $t('services.title') }}</h2>
        <p class="section-subtitle" data-animate="fade-up" data-delay="100">{{ $t('services.subtitle') }}</p>
      </div>

      <!-- Service 1: Web Development -->
      <div class="service-detailed" data-animate="fade-up" data-delay="150">
        <div class="service-content">
          <div class="service-icon-large">💻</div>
          <h3>{{ $t('services.web.title') }}</h3>
          <p class="service-description">{{ $t('services.web.description') }}</p>
          
          <h4>{{ $t('services.web.deliverables.title') }}</h4>
          <ul class="service-list">
            <li v-for="(item, index) in $tm('services.web.deliverables.items')" :key="index">{{ $rt(item) }}</li>
          </ul>
          
          <p class="service-ideal"><strong>{{ $t('services.idealFor') }}</strong> {{ $t('services.web.ideal') }}</p>
        </div>
        <div class="service-image">
          <img src="/images/web-dev.png" alt="Desenvolvimento Web com Vue.js e Laravel" />
        </div>
      </div>

      <!-- Service 2: Mobile Apps -->
      <div class="service-detailed reverse" data-animate="fade-up" data-delay="200">
        <div class="service-content">
          <div class="service-icon-large">📱</div>
          <h3>{{ $t('services.mobile.title') }}</h3>
          <p class="service-description">{{ $t('services.mobile.description') }}</p>
          
          <h4>{{ $t('services.mobile.deliverables.title') }}</h4>
          <ul class="service-list">
            <li v-for="(item, index) in $tm('services.mobile.deliverables.items')" :key="index">{{ $rt(item) }}</li>
          </ul>
          
          <p class="service-ideal"><strong>{{ $t('services.idealFor') }}</strong> {{ $t('services.mobile.ideal') }}</p>
        </div>
        <div class="service-image">
          <img src="/images/mobile-app.png" alt="Aplicativo Mobile Moderno" />
        </div>
      </div>

      <!-- Service 3: Integrations -->
      <div class="service-detailed" data-animate="fade-up" data-delay="250">
        <div class="service-content">
          <div class="service-icon-large">🔗</div>
          <h3>{{ $t('services.integrations.title') }}</h3>
          <p class="service-description">{{ $t('services.integrations.description') }}</p>
          
          <h4>{{ $t('services.integrations.deliverables.title') }}</h4>
          <ul class="service-list">
            <li v-for="(item, index) in $tm('services.integrations.deliverables.items')" :key="index">{{ $rt(item) }}</li>
          </ul>
          
          <p class="service-ideal"><strong>{{ $t('services.idealFor') }}</strong> {{ $t('services.integrations.ideal') }}</p>
        </div>
        <div class="service-image">
          <img src="/images/api-integration.png" alt="Integração de APIs e Sistemas" />
        </div>
      </div>

      <!-- Service 4: Automation -->
      <div class="service-detailed reverse" data-animate="fade-up" data-delay="300">
        <div class="service-content">
          <div class="service-icon-large">⚙️</div>
          <h3>{{ $t('services.automation.title') }}</h3>
          <p class="service-description">{{ $t('services.automation.description') }}</p>
          
          <h4>{{ $t('services.automation.deliverables.title') }}</h4>
          <ul class="service-list">
            <li v-for="(item, index) in $tm('services.automation.deliverables.items')" :key="index">{{ $rt(item) }}</li>
          </ul>
          
          <p class="service-ideal"><strong>{{ $t('services.idealFor') }}</strong> {{ $t('services.automation.ideal') }}</p>
        </div>
        <div class="service-image">
          <img src="/images/automation.png" alt="Automação de Workflows" />
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
import { useScrollAnimation } from '@/composables/useScrollAnimation'
useScrollAnimation({ once: true })
</script>
