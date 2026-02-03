<template>
  <section id="differentials" class="section-padding">
    <div class="container">
      <div class="section-header text-center">
        <h2 data-animate="fade-up">Diferenciais</h2>
      </div>
      <div class="grid-differentials">
        <div class="diff-item" data-animate="fade-up" data-delay="100">
          <span class="check-icon">✓</span>
          <span>Código limpo e bem arquitetado</span>
        </div>
        <div class="diff-item" data-animate="fade-up" data-delay="150">
          <span class="check-icon">✓</span>
          <span>Metodologia ágil e entregas rápidas</span>
        </div>
        <div class="diff-item" data-animate="fade-up" data-delay="200">
          <span class="check-icon">✓</span>
          <span>Design focado em UX/UI</span>
        </div>
        <div class="diff-item" data-animate="fade-up" data-delay="250">
          <span class="check-icon">✓</span>
          <span>Segurança e boas práticas</span>
        </div>
        <div class="diff-item" data-animate="fade-up" data-delay="300">
          <span class="check-icon">✓</span>
          <span>Performance otimizada</span>
        </div>
        <div class="diff-item" data-animate="fade-up" data-delay="350">
          <span class="check-icon">✓</span>
          <span>Comunicação clara e transparente</span>
        </div>
        <div class="diff-item" data-animate="fade-up" data-delay="400">
          <span class="check-icon">✓</span>
          <span>Custo-benefício competitivo</span>
        </div>
        <div class="diff-item" data-animate="fade-up" data-delay="450">
          <span class="check-icon">✓</span>
          <span>Suporte pós-entrega</span>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
import { useScrollAnimation } from '@/composables/useScrollAnimation'
useScrollAnimation({ once: true })
</script>
