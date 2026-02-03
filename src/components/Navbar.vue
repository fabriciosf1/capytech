<template>
  <header class="navbar glass">
    <div class="container navbar-content">
      <a href="#hero" class="logo">
        <img src="/logo.png" alt="CapiTech Logo" height="40">
      </a>

      <button class="mobile-menu-btn" @click="toggleMenu" aria-label="Menu">
        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
          stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
          <line x1="3" y1="12" x2="21" y2="12"></line>
          <line x1="3" y1="6" x2="21" y2="6"></line>
          <line x1="3" y1="18" x2="21" y2="18"></line>
        </svg>
      </button>

      <nav class="nav-menu" :class="{ open: menuOpen }">
        <ul class="nav-links">
          <li><a href="#hero" class="nav-link" :class="{ active: activeSection === 'hero' }" @click="closeMenu">Início</a></li>
          <li><a href="#services" class="nav-link" :class="{ active: activeSection === 'services' }" @click="closeMenu">Serviços</a></li>
          <li><a href="#tech" class="nav-link" :class="{ active: activeSection === 'tech' }" @click="closeMenu">Tecnologias</a></li>
          <li><a href="#about" class="nav-link" :class="{ active: activeSection === 'about' }" @click="closeMenu">Sobre</a></li>
          <li><a href="#contact" class="nav-link btn-contact" @click="closeMenu">Contato</a></li>
        </ul>
      </nav>
    </div>
  </header>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from 'vue'

const menuOpen = ref(false)
const activeSection = ref('hero')

const toggleMenu = () => {
  menuOpen.value = !menuOpen.value
}

const closeMenu = () => {
  menuOpen.value = false
}

// Scroll spy
const updateActiveSection = () => {
  const sections = document.querySelectorAll('section')
  const scrollY = window.scrollY

  sections.forEach(section => {
    const sectionTop = section.offsetTop
    const sectionHeight = section.clientHeight
    if (scrollY >= (sectionTop - 150)) {
      activeSection.value = section.getAttribute('id')
    }
  })
}

onMounted(() => {
  window.addEventListener('scroll', updateActiveSection)
  
  // Smooth scroll for anchor links
  document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
      e.preventDefault()
      const target = document.querySelector(this.getAttribute('href'))
      if (target) {
        const headerOffset = 80
        const elementPosition = target.getBoundingClientRect().top
        const offsetPosition = elementPosition + window.scrollY - headerOffset

        window.scrollTo({
          top: offsetPosition,
          behavior: 'smooth'
        })
      }
    })
  })
})

onUnmounted(() => {
  window.removeEventListener('scroll', updateActiveSection)
})
</script>
