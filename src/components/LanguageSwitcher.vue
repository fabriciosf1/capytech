<template>
  <div class="language-switcher" ref="container">
    <button class="lang-button" @click="toggleDropdown" aria-label="Select Language">
      <span class="flag">{{ currentFlag }}</span>
      <span class="lang-code">{{ currentLangCode }}</span>
      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="chevron" :class="{ rotate: isOpen }">
        <polyline points="6 9 12 15 18 9"></polyline>
      </svg>
    </button>
    
    <transition name="dropdown">
      <div class="lang-dropdown" v-if="isOpen">
        <button 
          v-for="lang in languages" 
          :key="lang.code" 
          class="lang-option" 
          :class="{ active: currentLocale === lang.code }"
          @click="changeLang(lang.code)"
        >
          <span class="flag">{{ lang.flag }}</span>
          <span>{{ lang.name }}</span>
        </button>
      </div>
    </transition>
  </div>
</template>

<script setup>
import { ref, computed, onMounted, onUnmounted } from 'vue'
import { useI18n } from 'vue-i18n'

const { locale } = useI18n()
const isOpen = ref(false)
const container = ref(null)

const languages = [
  { code: 'pt-BR', name: 'Português', flag: '🇧🇷' },
  { code: 'en-US', name: 'English', flag: '🇺🇸' },
  { code: 'es-ES', name: 'Español', flag: '🇪🇸' }
]

const currentLocale = computed(() => locale.value)
const currentFlag = computed(() => languages.find(l => l.code === locale.value)?.flag || '🇧🇷')
const currentLangCode = computed(() => locale.value.split('-')[0].toUpperCase())

const toggleDropdown = () => {
  isOpen.value = !isOpen.value
}

const changeLang = (lang) => {
  locale.value = lang
  localStorage.setItem('locale', lang)
  isOpen.value = false
}

const handleClickOutside = (event) => {
  if (container.value && !container.value.contains(event.target)) {
    isOpen.value = false
  }
}

onMounted(() => {
  document.addEventListener('click', handleClickOutside)
})

onUnmounted(() => {
  document.removeEventListener('click', handleClickOutside)
})
</script>

<style scoped>
.language-switcher {
  position: relative;
}

.lang-button {
  display: flex;
  align-items: center;
  gap: 0.5rem;
  padding: 0.5rem 0.75rem;
  background: rgba(255, 255, 255, 0.05);
  border: 1px solid var(--border-color);
  border-radius: var(--radius-sm);
  cursor: pointer;
  transition: all 0.3s ease;
  color: var(--text-primary);
}

.lang-button:hover {
  background: rgba(255, 255, 255, 0.1);
  border-color: var(--primary);
}

.flag {
  font-size: 1.2rem;
  line-height: 1;
}

.lang-code {
  font-family: 'JetBrains Mono', monospace;
  font-size: 0.85rem;
  font-weight: 600;
}

.chevron {
  transition: transform 0.3s ease;
  opacity: 0.7;
}

.chevron.rotate {
  transform: rotate(180deg);
}

.lang-dropdown {
  position: absolute;
  top: 100%;
  right: 0;
  margin-top: 0.5rem;
  background: var(--bg-surface);
  border: 1px solid var(--border-color);
  border-radius: var(--radius-md);
  box-shadow: var(--shadow-xl);
  z-index: 1000;
  min-width: 150px;
  overflow: hidden;
  backdrop-filter: blur(10px);
}

.lang-option {
  display: flex;
  align-items: center;
  gap: 0.75rem;
  width: 100%;
  padding: 0.75rem 1rem;
  cursor: pointer;
  background: transparent;
  border: none;
  text-align: left;
  color: var(--text-secondary);
  transition: all 0.2s ease;
  font-family: 'Inter', sans-serif;
  font-size: 0.95rem;
}

.lang-option:hover {
  background: rgba(16, 185, 129, 0.1);
  color: var(--text-primary);
}

.lang-option.active {
  background: rgba(16, 185, 129, 0.15);
  color: var(--primary);
  font-weight: 600;
}

/* Transitions */
.dropdown-enter-active,
.dropdown-leave-active {
  transition: all 0.2s ease;
}

.dropdown-enter-from,
.dropdown-leave-to {
  opacity: 0;
  transform: translateY(-10px);
}
</style>
