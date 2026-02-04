<template>
  <section id="contact" class="section-padding">
    <div class="container container-narrow">
      <div class="card contact-card" data-animate="fade-up">
        <div class="contact-header text-center">
          <h2>{{ $t('contact.title') }}</h2>
          <p class="contact-sub">{{ $t('contact.subtitle') }}</p>
        </div>

        <form @submit.prevent="submitForm" class="contact-form">
          <div class="form-group">
            <label>{{ $t('contact.form.name') }}</label>
            <input type="text" v-model="form.name" :placeholder="$t('contact.form.placeholders.name')" required />
          </div>

          <div class="form-group">
            <label>{{ $t('contact.form.email') }}</label>
            <input type="email" v-model="form.email" :placeholder="$t('contact.form.placeholders.email')" required />
          </div>

          <div class="form-group">
            <label>{{ $t('contact.form.phone') }}</label>
            <input 
              type="tel" 
              v-model="form.phone" 
              :placeholder="phonePlaceholder" 
              v-maska="maskOptions"
              required 
            />
          </div>

          <div class="form-group">
            <label>{{ $t('contact.form.subject') }}</label>
            <select v-model="form.subject" required>
              <option value="" disabled selected>{{ $t('contact.form.subject') }}</option>
              <option v-for="(label, key) in $tm('contact.form.subjects')" :key="key" :value="label">
                {{ $rt(label) }}
              </option>
            </select>
          </div>

          <div class="form-group">
            <label>{{ $t('contact.form.message') }}</label>
            <textarea v-model="form.message" :placeholder="$t('contact.form.placeholders.message')" rows="5" required></textarea>
          </div>

          <div class="form-actions display-flex">
             <button type="submit" class="btn btn-primary btn-lg btn-block pulse" :disabled="loading">
              <span v-if="loading">{{ $t('contact.feedback.sending') }}</span>
              <span v-else>{{ $t('contact.form.submit') }} 🚀</span>
            </button>
            
            <a href="https://discord.com/users/fabricio404" target="_blank" class="btn-discord" :title="$t('contact.links.discord')">
              <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" viewBox="0 0 127.14 96.36" fill="currentColor">
                <path d="M107.7,8.07A105.15,105.15,0,0,0,81.47,0a72.06,72.06,0,0,0-3.36,6.83A97.68,97.68,0,0,0,49,6.83,72.37,72.37,0,0,0,45.64,0,105.89,105.89,0,0,0,19.39,8.09C2.79,32.65-1.71,56.6.54,80.21h0A105.73,105.73,0,0,0,32.71,96.36,77.11,77.11,0,0,0,39.6,85.25a68.42,68.42,0,0,1-10.85-5.18c.91-.66,1.8-1.34,2.66-2a75.57,75.57,0,0,0,64.32,0c.87.71,1.76,1.39,2.66,2a68.68,68.68,0,0,1-10.87,5.19,77,77,0,0,0,6.89,11.1A105.25,105.25,0,0,0,126.6,80.22c2.36-24.44-5-47.25-18.9-72.15ZM42.45,65.69C36.18,65.69,31,60,31,53s5-12.74,11.43-12.74S54,46,53.89,53,48.84,65.69,42.45,65.69Zm42.24,0C78.41,65.69,73.25,60,73.25,53s5-12.74,11.44-12.74S96.23,46,96.12,53,91.08,65.69,84.69,65.69Z"/>
              </svg>
            </a>
          </div>
        </form>
        <StatusModal 
          :is-open="modal.isOpen" 
          :type="modal.type"
          :title="modal.title"
          :message="modal.message"
          @close="modal.isOpen = false"
        />
      </div>
    </div>
  </section>
</template>

<script setup>
import { reactive, computed, ref } from 'vue'
import { useI18n } from 'vue-i18n'
import { vMaska } from 'maska/vue'
import emailjs from '@emailjs/browser'
import { useScrollAnimation } from '@/composables/useScrollAnimation'
import StatusModal from './StatusModal.vue'

useScrollAnimation({ once: true })

const { locale, t } = useI18n()
const loading = ref(false)

// --- CONFIGURAÇÃO DE ENVIO ---
// Mude para true quando quiser usar o n8n
const USE_WEBHOOK = true

// Configuração Webhook (n8n/Make)
const WEBHOOK_URL = 'https://lovely-snakes-sleep.loca.lt/webhook-test/23bc4c9c-d8cc-48f2-8688-0b0179017be1'


// Configuração EmailJS
const EMAILJS_SERVICE_ID = 'service_0jsx2up'
const EMAILJS_TEMPLATE_ID = 'template_kjil8wi'
const EMAILJS_PUBLIC_KEY = 'Nuz0vTE_OuEz3MbgW'
// -----------------------------

// Modal State
const modal = reactive({
  isOpen: false,
  type: 'success',
  title: '',
  message: ''
})

const form = reactive({
  name: '',
  email: '',
  phone: '',
  subject: '',
  message: ''
})

const maskOptions = computed(() => {
  let mask
  if (locale.value === 'pt-BR') mask = ['(##) ####-####', '(##) #####-####']
  else if (locale.value === 'es-ES') mask = '+34 ### ### ###'
  else if (locale.value === 'en-US') mask = ['(###) ###-####', '+1 (###) ###-####']
  else mask = ['(###) ###-####', '+# (###) ###-####', '+## (###) ###-####']
  
  return { mask }
})

const phonePlaceholder = computed(() => {
  if (locale.value === 'pt-BR') return '(99) 99999-9999'
  if (locale.value === 'es-ES') return '+34 600 000 000'
  return '+1 (555) 123-4567'
})

const submitForm = async () => {
  loading.value = true

  const payload = {
    from_name: form.name,
    email: form.email,
    phone: form.phone,
    subject: form.subject,
    message: form.message,
    reply_to: form.email, // Use client email for reply_to
    source: 'CapyTech Website',
    locale: locale.value,
    timestamp: new Date().toISOString()
  }

  try {
    if (USE_WEBHOOK) {
      // Envio via Webhook (n8n)
      const response = await fetch(WEBHOOK_URL, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(payload)
      })

      if (!response.ok) throw new Error('Webhook error')

    } else {
      // Envio via EmailJS
      await emailjs.send(EMAILJS_SERVICE_ID, EMAILJS_TEMPLATE_ID, payload, EMAILJS_PUBLIC_KEY)
    }
    
    // Show Success Modal
    modal.type = 'success'
    modal.title = t('contact.feedback.success_title') || 'Sucesso!'
    modal.message = t('contact.feedback.success')
    modal.isOpen = true

    // Reset Form
    form.name = ''
    form.email = ''
    form.phone = ''
    form.subject = ''
    form.message = ''

  } catch (err) {
    console.error('Submission Error:', err)
    
    // Show Error Modal
    modal.type = 'error'
    modal.title = t('contact.feedback.error_title') || 'Ops!'
    modal.message = t('contact.feedback.error')
    modal.isOpen = true
  } finally {
    loading.value = false
  }
}
</script>

<style scoped>
.contact-card {
  padding: 3rem;
  max-width: 900px;
  margin: 0 auto;
}

.contact-header {
  margin-bottom: 2rem;
}

.contact-form {
  display: flex;
  flex-direction: column;
  gap: 1.5rem;
  width: 100%;
}

.form-group {
  display: flex;
  flex-direction: column;
  gap: 0.5rem;
  width: 100%;
}

label {
  color: var(--text-secondary);
  font-size: 0.9rem;
  font-weight: 500;
  margin-left: 0.2rem;
}

input, select, textarea {
  width: 100%;
  padding: 1rem 1.2rem;
  background: rgba(255, 255, 255, 0.03);
  border: 1px solid var(--border-color);
  border-radius: var(--radius-md);
  color: var(--text-primary);
  font-size: 1rem;
  transition: all 0.2s ease;
  font-family: inherit;
  box-sizing: border-box; /* Ensure padding doesn't affect width */
}

input:focus, select:focus, textarea:focus {
  outline: none;
  border-color: var(--primary);
  background: rgba(16, 185, 129, 0.05);
}

option {
  background-color: var(--bg-primary); /* Ensure options have dark background */
  color: var(--text-primary);
}

select {
  appearance: none;
  background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24' fill='none' stroke='%239ca3af' stroke-width='2' stroke-linecap='round' stroke-linejoin='round'%3E%3Cpolyline points='6 9 12 15 18 9'%3E%3C/polyline%3E%3C/svg%3E");
  background-repeat: no-repeat;
  background-position: right 1rem center;
  background-size: 1em;
}

.form-actions {
  display: flex;
  align-items: center;
  gap: 1rem;
  margin-top: 1rem;
}

.btn-block {
  flex: 1;
}

.btn-discord {
  display: flex;
  align-items: center;
  justify-content: center;
  width: 56px;
  height: 56px;
  background: #5865F2;
  border-radius: var(--radius-md);
  color: white;
  transition: all 0.2s ease;
}

.btn-discord:hover {
  transform: translateY(-2px);
  background: #4752C4;
  box-shadow: 0 4px 12px rgba(88, 101, 242, 0.3);
}

@media (max-width: 640px) {
  .contact-card {
    padding: 1.5rem;
  }
  
  .form-actions {
    flex-direction: column-reverse;
  }
  
  .btn-discord {
    width: 100%;
  }
}

</style>
