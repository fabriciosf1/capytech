import { createI18n } from 'vue-i18n'
import ptBR from './locales/pt-BR.json'
import enUS from './locales/en-US.json'
import esES from './locales/es-ES.json'

// Get saved locale from localStorage or default to 'pt-BR'
const savedLocale = localStorage.getItem('locale') || 'pt-BR'

const i18n = createI18n({
    legacy: false, // Use Composition API
    locale: savedLocale,
    fallbackLocale: 'pt-BR',
    messages: {
        'pt-BR': ptBR,
        'en-US': enUS,
        'es-ES': esES
    }
})

export default i18n
