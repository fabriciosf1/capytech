<template>
  <section id="portfolio" class="section-padding bg-surface">
    <div class="container">
      <div class="section-header text-center">
        <h2 data-animate="fade-up">{{ $t('portfolio.title') }}</h2>
        <p class="section-subtitle" data-animate="fade-up" data-delay="100">{{ $t('portfolio.subtitle') }}</p>
      </div>

      <div class="portfolio-grid">
        <!-- Project 1: Doctor Service -->
        <div class="project-card" data-animate="fade-up" data-delay="100">
          <div class="project-content">
            <span class="project-category">{{ $t('portfolio.projects.doctor.category') }}</span>
            <h3>{{ $t('portfolio.projects.doctor.title') }}</h3>
            <p>{{ $t('portfolio.projects.doctor.description') }}</p>
            <div class="project-tags">
              <span>Vue.js</span>
              <span>Laravel</span>
              <span>Telemedicine</span>
            </div>
          </div>
          <div class="project-visual doctor-visual">
            <div class="visual-icon">🩺</div>
          </div>
        </div>

        <!-- Project 2: Clarivi -->
        <div class="project-card" data-animate="fade-up" data-delay="200">
          <div class="project-content">
            <span class="project-category">{{ $t('portfolio.projects.clarivi.category') }}</span>
            <h3>{{ $t('portfolio.projects.clarivi.title') }}</h3>
            <p>{{ $t('portfolio.projects.clarivi.description') }}</p>
            <div class="project-tags">
              <span>Offline First</span>
              <span>Mobile App</span>
              <span>AgriTech</span>
            </div>
          </div>
          <div class="project-visual clarivi-visual">
            <div class="visual-icon">🚜</div>
          </div>
        </div>

        <!-- Project 3: SmartWeb/Fator -->
        <div class="project-card" data-animate="fade-up" data-delay="300">
          <div class="project-content">
            <span class="project-category">{{ $t('portfolio.projects.smartweb.category') }}</span>
            <h3>{{ $t('portfolio.projects.smartweb.title') }}</h3>
            <p>{{ $t('portfolio.projects.smartweb.description') }}</p>
            <div class="project-tags">
              <span>Marketing</span>
              <span>High Performance</span>
              <span>Institutional</span>
            </div>
          </div>
          <div class="project-visual smartweb-visual">
            <div class="visual-icon">🚀</div>
          </div>
        </div>

        <!-- Project 4: União Atacadista -->
        <div class="project-card" data-animate="fade-up" data-delay="400">
          <div class="project-content">
            <span class="project-category">{{ $t('portfolio.projects.uniao.category') }}</span>
            <h3>{{ $t('portfolio.projects.uniao.title') }}</h3>
            <p>{{ $t('portfolio.projects.uniao.description') }}</p>
            <div class="project-tags">
              <span>ERP</span>
              <span>Logistics</span>
              <span>Big Data</span>
            </div>
          </div>
          <div class="project-visual uniao-visual">
            <div class="visual-icon">📦</div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
import { useScrollAnimation } from '@/composables/useScrollAnimation'
useScrollAnimation({ once: true })
</script>

<style scoped>
.portfolio-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
  gap: 2rem;
  margin-top: 3rem;
}

.project-card {
  background: var(--bg-primary);
  border: 1px solid var(--border-color);
  border-radius: var(--radius-lg);
  overflow: hidden;
  transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
  display: flex;
  flex-direction: column;
}

.project-card:hover {
  transform: translateY(-5px);
  border-color: var(--primary);
  box-shadow: var(--shadow-xl);
}

.project-content {
  padding: 2rem;
  flex: 1;
  display: flex;
  flex-direction: column;
}

.project-category {
  font-family: 'JetBrains Mono', monospace;
  font-size: 0.8rem;
  color: var(--primary);
  margin-bottom: 0.5rem;
  text-transform: uppercase;
  letter-spacing: 1px;
}

.project-card h3 {
  font-size: 1.5rem;
  margin-bottom: 1rem;
  background: var(--gradient-text);
  -webkit-background-clip: text;
  background-clip: text;
  color: transparent;
}

.project-card p {
  color: var(--text-secondary);
  margin-bottom: 1.5rem;
  line-height: 1.6;
  flex: 1;
}

.project-tags {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
}

.project-tags span {
  font-size: 0.8rem;
  padding: 0.25rem 0.75rem;
  background: rgba(255, 255, 255, 0.05);
  border-radius: 999px;
  color: var(--text-secondary);
  transition: all 0.2s ease;
}

.project-card:hover .project-tags span {
  background: rgba(16, 185, 129, 0.1);
  color: var(--primary);
}

.project-visual {
  height: 200px;
  background: linear-gradient(135deg, rgba(255,255,255,0.03) 0%, rgba(255,255,255,0.01) 100%);
  display: flex;
  align-items: center;
  justify-content: center;
  border-top: 1px solid var(--border-color);
  position: relative;
  overflow: hidden;
}

.visual-icon {
  font-size: 4rem;
  transition: transform 0.5s cubic-bezier(0.34, 1.56, 0.64, 1);
}

.project-card:hover .visual-icon {
  transform: scale(1.2) rotate(5deg);
}

/* Specific Card Styles for visual variety */
.doctor-visual { background: linear-gradient(135deg, rgba(59, 130, 246, 0.1) 0%, rgba(16, 185, 129, 0.05) 100%); }
.clarivi-visual { background: linear-gradient(135deg, rgba(245, 158, 11, 0.1) 0%, rgba(16, 185, 129, 0.05) 100%); }
.smartweb-visual { background: linear-gradient(135deg, rgba(236, 72, 153, 0.1) 0%, rgba(16, 185, 129, 0.05) 100%); }
.uniao-visual { background: linear-gradient(135deg, rgba(139, 92, 246, 0.1) 0%, rgba(16, 185, 129, 0.05) 100%); }

@media (max-width: 768px) {
  .portfolio-grid {
    grid-template-columns: 1fr;
  }
}
</style>
