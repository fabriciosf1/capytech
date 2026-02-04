<template>
  <Transition name="modal">
    <div v-if="isOpen" class="modal-backdrop" @click="$emit('close')">
      <div class="modal-container" @click.stop>
        <div class="modal-content" :class="type">
          <div class="icon-wrapper">
            <svg v-if="type === 'success'" xmlns="http://www.w3.org/2000/svg" width="48" height="48" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="20 6 9 17 4 12"></polyline></svg>
            <svg v-else xmlns="http://www.w3.org/2000/svg" width="48" height="48" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"></circle><line x1="15" y1="9" x2="9" y2="15"></line><line x1="9" y1="9" x2="15" y2="15"></line></svg>
          </div>
          
          <h3>{{ title }}</h3>
          <p>{{ message }}</p>
          
          <button @click="$emit('close')" class="btn-modal">
            {{ buttonText }}
          </button>
        </div>
      </div>
    </div>
  </Transition>
</template>

<script setup>
defineProps({
  isOpen: Boolean,
  type: {
    type: String,
    default: 'success' // 'success' or 'error'
  },
  title: String,
  message: String,
  buttonText: {
    type: String,
    default: 'OK'
  }
})

defineEmits(['close'])
</script>

<style scoped>
.modal-backdrop {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.6);
  backdrop-filter: blur(8px);
  display: flex;
  align-items: center;
  justify-content: center;
  z-index: 9999;
}

.modal-container {
  background: var(--bg-surface, #1e293b);
  border: 1px solid var(--border-color, rgba(255,255,255,0.1));
  border-radius: 20px;
  padding: 2.5rem;
  max-width: 400px;
  width: 90%;
  box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.5);
  text-align: center;
  position: relative;
  overflow: hidden;
}

.modal-content {
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 1rem;
}

.icon-wrapper {
  width: 80px;
  height: 80px;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  margin-bottom: 0.5rem;
  animation: popIn 0.5s cubic-bezier(0.175, 0.885, 0.32, 1.275);
}

.success .icon-wrapper {
  background: rgba(16, 185, 129, 0.1);
  color: #10b981;
}

.error .icon-wrapper {
  background: rgba(239, 68, 68, 0.1);
  color: #ef4444;
}

h3 {
  font-size: 1.5rem;
  color: var(--text-primary, #fff);
  margin: 0;
}

p {
  color: var(--text-secondary, #94a3b8);
  line-height: 1.6;
}

.btn-modal {
  margin-top: 1rem;
  padding: 0.75rem 2rem;
  border-radius: 99px;
  border: none;
  font-weight: 600;
  cursor: pointer;
  transition: transform 0.2s;
  width: 100%;
}

.success .btn-modal {
  background: #10b981;
  color: white;
  box-shadow: 0 4px 14px 0 rgba(16, 185, 129, 0.39);
}

.success .btn-modal:hover {
  background: #059669;
}

.error .btn-modal {
  background: var(--bg-primary, #0f172a);
  border: 1px solid var(--border-color, #334155);
  color: var(--text-primary, #fff);
}

.error .btn-modal:hover {
  background: #334155;
}

/* Animations */
.modal-enter-active,
.modal-leave-active {
  transition: opacity 0.3s ease;
}

.modal-enter-from,
.modal-leave-to {
  opacity: 0;
}

.modal-enter-active .modal-container {
  animation: slideUp 0.4s cubic-bezier(0.16, 1, 0.3, 1);
}

.modal-leave-active .modal-container {
  animation: slideUp 0.4s cubic-bezier(0.16, 1, 0.3, 1) reverse;
}

@keyframes slideUp {
  from {
    transform: translateY(20px) scale(0.95);
    opacity: 0;
  }
  to {
    transform: translateY(0) scale(1);
    opacity: 1;
  }
}

@keyframes popIn {
  from {
    transform: scale(0);
  }
  to {
    transform: scale(1);
  }
}
</style>
