#!/bin/bash

# Services Component
cat > src/components/Services.vue << 'EOF'
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
EOF

# Technologies Component
cat > src/components/Technologies.vue << 'EOF'
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
EOF

# About Component
cat > src/components/About.vue << 'EOF'
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
EOF

# Differentials Component
cat > src/components/Differentials.vue << 'EOF'
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
EOF

# Contact Component
cat > src/components/Contact.vue << 'EOF'
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
EOF

echo "All components created successfully!"
