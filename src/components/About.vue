<template>
  <section id="about" class="section-padding">
    <div class="container grid-about">
      <div class="about-text">
        <h2 data-animate="fade-up">Sobre a CapiTech</h2>
        <p data-animate="fade-up" data-delay="100">Somos especialistas em <strong>desenvolvimento web e mobile</strong>, criando soluções digitais que transformam negócios. Nossa filosofia é inspirada na capivara: <strong>robustez, inteligência calma e adaptabilidade</strong>. Desenvolvemos sistemas com código limpo, arquitetura sólida e foco em performance, sempre pensando na melhor experiência do usuário e em resultados reais para o seu negócio.</p>
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
