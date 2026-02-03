<template>
  <div id="app">
    <Navbar />
    <main>
      <Hero />
      <Portfolio />
      <WhySystem />
      <Services />
      <Technologies />
      <About />
      <Differentials />
      <Contact />
    </main>
    <Footer />
  </div>
</template>

<script setup>
import Navbar from './components/Navbar.vue'
import Hero from './components/Hero.vue'
import Portfolio from './components/Portfolio.vue'
import WhySystem from './components/WhySystem.vue'
import Services from './components/Services.vue'
import Technologies from './components/Technologies.vue'
import About from './components/About.vue'
import Differentials from './components/Differentials.vue'
import Contact from './components/Contact.vue'
import Footer from './components/Footer.vue'
</script>
