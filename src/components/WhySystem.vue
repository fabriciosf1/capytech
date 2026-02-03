<template>
  <section id="why-system" class="section-padding bg-surface">
    <div class="container">
      <div class="section-header text-center">
        <h2 data-animate="fade-up">Por Que Todo Negócio Precisa de um Sistema Digital?</h2>
        <p class="section-subtitle" data-animate="fade-up" data-delay="100">Processos manuais custam tempo, dinheiro e oportunidades de crescimento</p>
      </div>

      <div class="grid-problems">
        <div class="problem-card" data-animate="fade-up" data-delay="100">
          <div class="problem-icon">📊</div>
          <h3>Dados Espalhados</h3>
          <p>Planilhas, e-mails, papéis - informação perdida e desorganizada que dificulta a tomada de decisões</p>
        </div>
        <div class="problem-card" data-animate="fade-up" data-delay="150">
          <div class="problem-icon">⏰</div>
          <h3>Tempo Desperdiçado</h3>
          <p>Tarefas manuais repetitivas que poderiam ser automatizadas, roubando horas preciosas do seu dia</p>
        </div>
        <div class="problem-card" data-animate="fade-up" data-delay="200">
          <div class="problem-icon">❌</div>
          <h3>Erros Humanos</h3>
          <p>Retrabalho constante por falta de processos automatizados, gerando custos desnecessários</p>
        </div>
        <div class="problem-card" data-animate="fade-up" data-delay="250">
          <div class="problem-icon">📈</div>
          <h3>Dificuldade de Escalar</h3>
          <p>Processos que não acompanham o crescimento, limitando o potencial do seu negócio</p>
        </div>
      </div>

      <div class="solution-box" data-animate="fade-up" data-delay="300">
        <div class="solution-content">
          <h3>A Solução</h3>
          <p><strong>Um sistema bem desenvolvido centraliza informações, automatiza processos, reduz erros e permite que você foque no que realmente importa: crescer seu negócio.</strong></p>
          
          <div class="stats-grid">
            <div class="stat-item">
              <span class="stat-number" data-counter data-suffix="%">70</span>
              <span class="stat-label">das empresas perdem tempo com tarefas manuais evitáveis</span>
            </div>
            <div class="stat-item">
              <span class="stat-number" data-counter data-suffix="%">40</span>
              <span class="stat-label">aumento de produtividade com sistemas customizados</span>
            </div>
            <div class="stat-item">
              <span class="stat-number" data-counter data-suffix="%">300</span>
              <span class="stat-label">ROI médio em 12 meses</span>
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
