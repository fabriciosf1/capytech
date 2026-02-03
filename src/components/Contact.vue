<template>
  <section id="contact" class="section-padding">
    <div class="container container-narrow">
      <div class="card contact-card text-center" data-animate="fade-up">
        <h2>Pronto para Transformar seu Negócio?</h2>
        <p class="contact-sub">Agende uma consultoria gratuita de 30 minutos. Vamos entender seus desafios e mostrar como a tecnologia pode ajudar.</p>

        <div class="consultation-benefits">
          <div class="benefit-item" data-animate="fade-up" data-delay="100">
            <span class="benefit-icon">✅</span>
            <span>Análise gratuita dos seus processos</span>
          </div>
          <div class="benefit-item" data-animate="fade-up" data-delay="150">
            <span class="benefit-icon">✅</span>
            <span>Sugestões de melhorias imediatas</span>
          </div>
          <div class="benefit-item" data-animate="fade-up" data-delay="200">
            <span class="benefit-icon">✅</span>
            <span>Orçamento sem compromisso</span>
          </div>
          <div class="benefit-item" data-animate="fade-up" data-delay="250">
            <span class="benefit-icon">✅</span>
            <span>Roadmap técnico personalizado</span>
          </div>
        </div>

        <div class="contact-info">
          <div class="contact-row">
            <span class="contact-label">Email:</span>
            <a href="mailto:fabriciosf@gmail.com" class="contact-link">fabriciosf@gmail.com</a>
          </div>
          <div class="contact-row">
            <span class="contact-label">Discord:</span>
            <span class="contact-value">fabricio404</span>
          </div>
          <div class="contact-row">
            <span class="contact-label">WhatsApp:</span>
            <a href="https://wa.me/5534991935235" target="_blank" class="contact-link">(34) 9 9193-5235</a>
          </div>
        </div>

        <a href="https://wa.me/5534991935235" target="_blank" class="btn btn-primary btn-lg pulse" data-animate="scale" data-delay="300">Agendar Consultoria Gratuita</a>
        
        <p class="guarantee">⚡ Resposta em até 24 horas úteis</p>
      </div>
    </div>
  </section>
</template>

<script setup>
import { useScrollAnimation } from '@/composables/useScrollAnimation'
useScrollAnimation({ once: true })
</script>
