import { onMounted, onUnmounted } from 'vue'

export function useScrollAnimation(options = {}) {
    let observer = null

    const observerOptions = {
        threshold: options.threshold || 0.1,
        rootMargin: options.rootMargin || '0px 0px -100px 0px'
    }

    onMounted(() => {
        observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.classList.add('is-visible')
                    if (options.once !== false) {
                        observer.unobserve(entry.target)
                    }
                } else if (options.once === false) {
                    entry.target.classList.remove('is-visible')
                }
            })
        }, observerOptions)

        // Small delay to ensure DOM is ready
        setTimeout(() => {
            document.querySelectorAll('[data-animate]').forEach(el => {
                observer.observe(el)
            })
        }, 100)
    })

    onUnmounted(() => {
        if (observer) observer.disconnect()
    })

    return { observer }
}

// Counter animation for numbers
export function useCounterAnimation(target, duration = 2000) {
    const animateCounter = (element) => {
        const targetValue = parseFloat(element.textContent)
        const startValue = 0
        const startTime = performance.now()

        const updateCounter = (currentTime) => {
            const elapsed = currentTime - startTime
            const progress = Math.min(elapsed / duration, 1)

            // Easing function
            const easeOutQuart = 1 - Math.pow(1 - progress, 4)
            const currentValue = startValue + (targetValue - startValue) * easeOutQuart

            element.textContent = Math.floor(currentValue) + (element.dataset.suffix || '')

            if (progress < 1) {
                requestAnimationFrame(updateCounter)
            } else {
                element.textContent = targetValue + (element.dataset.suffix || '')
            }
        }

        requestAnimationFrame(updateCounter)
    }

    onMounted(() => {
        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting && !entry.target.dataset.animated) {
                    entry.target.dataset.animated = 'true'
                    animateCounter(entry.target)
                    observer.unobserve(entry.target)
                }
            })
        }, { threshold: 0.5 })

        setTimeout(() => {
            document.querySelectorAll('[data-counter]').forEach(el => {
                observer.observe(el)
            })
        }, 100)
    })
}
