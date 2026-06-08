# Syla - Senior Tech AI Assistant

Syla is an Orcinos product designed specifically for elderly users (65+). It features an extremely simple UI, large text, and voice-friendly interactions to help seniors navigate the digital world.

## Core Features

- **Ask Syla**: A warm, patient AI chat interface powered by GPT-4o-mini.
- **Medication Reminders**: Simple setup for daily medicine with browser notifications.
- **Scam Detector**: AI-powered analysis of suspicious messages.
- **Video Call Guides**: Step-by-step visual instructions for popular apps.
- **Family Connector**: One-touch "I'm okay" messages to family members via WhatsApp.
- **Tech Help Library**: 30 common senior tech questions with large-print answers.
- **Emergency Button**: Prominent red button for immediate help.

## Tech Stack

- **Frontend**: HTML5, CSS3, Vanilla JavaScript
- **Backend**: Supabase (Database & Auth)
- **AI**: OpenAI API (GPT-4o-mini)
- **Voice**: Web Speech API

## Design Principles

- **Font Size**: Minimum 22px body, 32px headings.
- **Colors**: Warm White (#FFFDF8), Sky Blue (#2E86C1), Soft Green (#27AE60).
- **Buttons**: Large (80px+ height), high contrast, rounded corners.
- **Navigation**: Maximum 5 items with clear text labels.

## Payment Model (No Stripe)

- **Free**: Ask Syla (10 questions/day), Tech Help Library.
- **Family Plan ($7.99/mo)**: Unlimited questions, medication reminders, scam detector, family connector.
- **Payment Methods**: PayPal, Crypto (ERC-20: 0xcef857e82c306b3d0f2db080e7794f4bb376049e), Payoneer.

## Deployment

1. Set up a Supabase project and run `schema.sql`.
2. Add your `OPENAI_API_KEY`, `SUPABASE_URL`, and `SUPABASE_ANON_KEY` to `shared/app.js`.
3. Open `landing/index.html` in any modern web browser.

---
Built by Orcinos.
