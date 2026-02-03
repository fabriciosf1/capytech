<template>
  <section id="tech" class="section-padding bg-surface">
    <div class="container">
      <div class="section-header text-center">
        <h2 data-animate="fade-up">Tecnologias</h2>
        <p class="section-subtitle" data-animate="fade-up" data-delay="100">Trabalhamos com as melhores ferramentas do mercado</p>
      </div>
      <div class="grid-tech">
        <div class="tech-item" data-animate="scale" data-delay="100">
          <span class="tech-icon">⚡</span>
          <h3>Vue.js</h3>
          <p>Framework progressivo para interfaces modernas e reativas</p>
        </div>
        <div class="tech-item" data-animate="scale" data-delay="150">
          <span class="tech-icon">🎨</span>
          <h3>Laravel</h3>
          <p>Framework PHP robusto para backends escaláveis</p>
        </div>
        <div class="tech-item" data-animate="scale" data-delay="200">
          <span class="tech-icon">⚛️</span>
          <h3>React</h3>
          <p>Biblioteca JavaScript para UIs dinâmicas</p>
        </div>
        <div class="tech-item" data-animate="scale" data-delay="250">
          <span class="tech-icon">🟢</span>
          <h3>Node.js</h3>
          <p>Runtime JavaScript para aplicações server-side</p>
        </div>
        <div class="tech-item" data-animate="scale" data-delay="300">
          <span class="tech-icon">🐍</span>
          <h3>Python</h3>
          <p>Linguagem versátil para automação e APIs</p>
        </div>
        <div class="tech-item" data-animate="scale" data-delay="350">
          <span class="tech-icon">🔄</span>
          <h3>n8n</h3>
          <p>Plataforma de automação de workflows</p>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
import { useScrollAnimation } from '@/composables/useScrollAnimation'
useScrollAnimation({ once: true })
</script>
