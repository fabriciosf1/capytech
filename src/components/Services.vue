<template>
  <section id="services" class="section-padding">
    <div class="container">
      <div class="section-header text-center">
        <h2 data-animate="fade-up">Nossos Serviços</h2>
        <p class="section-subtitle" data-animate="fade-up" data-delay="100">Soluções completas de desenvolvimento para transformar seu negócio</p>
      </div>

      <!-- Service 1: Web Development -->
      <div class="service-detailed" data-animate="fade-up" data-delay="150">
        <div class="service-content">
          <div class="service-icon-large">💻</div>
          <h3>Desenvolvimento Web Full-Stack</h3>
          <p class="service-description">Criamos plataformas web completas, do front-end ao back-end. Sistemas de gestão, dashboards interativos, plataformas SaaS, e-commerce customizados - tudo pensado para sua realidade.</p>
          
          <h4>O que entregamos:</h4>
          <ul class="service-list">
            <li>Interface moderna e intuitiva (Vue.js, React)</li>
            <li>Backend robusto e escalável (Laravel, Node.js)</li>
            <li>APIs RESTful para integrações</li>
            <li>Banco de dados otimizado (PostgreSQL, MySQL)</li>
            <li>Deploy em cloud (AWS, Google Cloud, DigitalOcean)</li>
          </ul>
          
          <p class="service-ideal"><strong>Ideal para:</strong> Empresas que precisam de gestão centralizada, plataformas de vendas, sistemas internos customizados.</p>
        </div>
        <div class="service-image">
          <img src="/images/web-dev.png" alt="Desenvolvimento Web com Vue.js e Laravel" />
        </div>
      </div>

      <!-- Service 2: Mobile Apps -->
      <div class="service-detailed reverse" data-animate="fade-up" data-delay="200">
        <div class="service-content">
          <div class="service-icon-large">📱</div>
          <h3>Desenvolvimento de Aplicativos Mobile</h3>
          <p class="service-description">Leve seu negócio para o bolso dos seus clientes. Desenvolvemos apps nativos e híbridos para iOS e Android, além de Progressive Web Apps (PWA) que funcionam em qualquer dispositivo.</p>
          
          <h4>O que entregamos:</h4>
          <ul class="service-list">
            <li>Apps nativos de alta performance</li>
            <li>PWAs que funcionam offline</li>
            <li>Sincronização em tempo real</li>
            <li>Notificações push</li>
            <li>Integração com APIs e sistemas existentes</li>
          </ul>
          
          <p class="service-ideal"><strong>Ideal para:</strong> Empresas que querem estar mais próximas dos clientes, equipes de campo, vendas externas.</p>
        </div>
        <div class="service-image">
          <img src="/images/mobile-app.png" alt="Aplicativo Mobile Moderno" />
        </div>
      </div>

      <!-- Service 3: Integrations -->
      <div class="service-detailed" data-animate="fade-up" data-delay="250">
        <div class="service-content">
          <div class="service-icon-large">🔗</div>
          <h3>Integrações e APIs Personalizadas</h3>
          <p class="service-description">Conecte todos os seus sistemas e ferramentas. Desenvolvemos APIs robustas e integrações que fazem seus softwares conversarem entre si, eliminando trabalho manual e duplicação de dados.</p>
          
          <h4>O que entregamos:</h4>
          <ul class="service-list">
            <li>APIs RESTful documentadas</li>
            <li>Integração com ERPs, CRMs, e-commerce</li>
            <li>Webhooks para automação em tempo real</li>
            <li>Sincronização bidirecional de dados</li>
            <li>Microserviços escaláveis</li>
          </ul>
          
          <p class="service-ideal"><strong>Ideal para:</strong> Empresas que usam múltiplas ferramentas e precisam unificar dados.</p>
        </div>
        <div class="service-image">
          <img src="/images/api-integration.png" alt="Integração de APIs e Sistemas" />
        </div>
      </div>

      <!-- Service 4: Automation -->
      <div class="service-detailed reverse" data-animate="fade-up" data-delay="300">
        <div class="service-content">
          <div class="service-icon-large">⚙️</div>
          <h3>Automação de Processos</h3>
          <p class="service-description">Elimine tarefas repetitivas e ganhe horas no seu dia. Automatizamos workflows com Python e n8n, criando scripts inteligentes que trabalham 24/7 para você.</p>
          
          <h4>O que entregamos:</h4>
          <ul class="service-list">
            <li>Scripts Python customizados</li>
            <li>Workflows no n8n</li>
            <li>Automação de e-mails e notificações</li>
            <li>Processamento de dados em lote</li>
            <li>Agendamento de tarefas</li>
          </ul>
          
          <p class="service-ideal"><strong>Ideal para:</strong> Equipes que perdem tempo com tarefas manuais repetitivas.</p>
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
