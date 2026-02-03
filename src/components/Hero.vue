<template>
  <section id="hero" class="hero-section">
    <div class="container grid-hero">
      <div class="hero-text">
        <h1 class="headline" data-animate="fade-up">
          Transforme Ideias em <span class="highlight">Soluções Digitais</span> que Impulsionam seu Negócio
        </h1>
        
        <p class="subheadline" data-animate="fade-up" data-delay="100">
          Desenvolvimento web full-stack e aplicativos mobile sob medida. Sistemas que automatizam processos, conectam ferramentas e escalam junto com sua empresa.
        </p>

        <div class="value-props">
          <div class="value-item" data-animate="fade-up" data-delay="150">
            <span class="value-icon">⚡</span>
            <div>
              <strong>Agilidade</strong>
              <p>Do conceito ao deploy em semanas</p>
            </div>
          </div>
          <div class="value-item" data-animate="fade-up" data-delay="200">
            <span class="value-icon">🎯</span>
            <div>
              <strong>Sob Medida</strong>
              <p>Soluções pensadas para você</p>
            </div>
          </div>
          <div class="value-item" data-animate="fade-up" data-delay="250">
            <span class="value-icon">🚀</span>
            <div>
              <strong>Escalável</strong>
              <p>Tecnologia que cresce com você</p>
            </div>
          </div>
        </div>

        <div class="cta-group" data-animate="scale" data-delay="300">
          <a href="#contact" class="btn btn-primary">Agendar Consultoria Gratuita</a>
          <a href="#services" class="btn btn-outline">Ver Nossos Serviços</a>
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
