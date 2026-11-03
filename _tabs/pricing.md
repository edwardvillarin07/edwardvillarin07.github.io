---
title: Pricing
icon: fas fa-tag
order: 2
description: Start with a free security basics check. Move to a full enterprise partnership for penetration testing, compliance, incident response, and ongoing security leadership.
---

## Start with a free check

You do not need a big budget to find out where you stand. Start with the basics at no cost. When you are ready for testing, compliance, and ongoing protection, we will scope the work around your business.

<div class="pricing-page">
  <div class="pricing-grid">
    <div class="pricing-card">
      <p class="pricing-kicker">Free</p>
      <h3 class="pricing-title">Security basics check</h3>
      <p class="pricing-price">Free</p>
      <p class="pricing-description">A clear first look at your security posture, with no jargon and no commitment.</p>
      <ul class="pricing-list">
        <li>Guided review of your current setup</li>
        <li>An outside look at your public exposure</li>
        <li>A plain-language summary of the gaps</li>
        <li>A prioritized list of what to fix first</li>
      </ul>
      <p class="pricing-outcome">You will finish knowing the basics: where you are exposed, what matters, and what to do next.</p>
      <a class="pricing-button pricing-button-outline" href="mailto:edwardvillarin@doersminds.com?subject=Free%20security%20basics%20check">Start the free check</a>
    </div>
    <div class="pricing-card pricing-card-featured">
      <p class="pricing-kicker">Enterprise</p>
      <h3 class="pricing-title">Full security partnership</h3>
      <p class="pricing-price">Custom</p>
      <p class="pricing-description">For companies that need testing, compliance, and a security team they can call.</p>
      <ul class="pricing-list">
        <li>Everything in the free check</li>
        <li>Full security assessment and penetration testing</li>
        <li>ISO 27001, SOC 2, and Data Privacy Act readiness</li>
        <li>Incident response planning and tabletop exercises</li>
        <li>Security awareness training for your team</li>
        <li>A fractional security lead for ongoing decisions</li>
      </ul>
      <p class="pricing-outcome">Scoped to your environment, your risks, and the standards your clients expect.</p>
      <a class="pricing-button pricing-button-solid" href="mailto:edwardvillarin@doersminds.com?subject=Enterprise%20security%20partnership">Talk to us</a>
    </div>
  </div>
  <p class="pricing-note">Enterprise engagements are quoted after a short discovery call and a written scope.</p>
</div>

<style>
.pricing-page {
  --pricing-accent: #5c2793;
  --pricing-accent-text: #ffffff;
  --pricing-border: #d9d9df;
  margin: 1.5rem 0 0.5rem;
}

[data-bs-theme="dark"] .pricing-page {
  --pricing-accent: #c9a7f5;
  --pricing-accent-text: #1b1b1e;
  --pricing-border: #3a3a40;
}

.pricing-grid {
  display: grid;
  gap: 1.25rem;
}

@media (min-width: 768px) {
  .pricing-grid {
    grid-template-columns: repeat(2, minmax(0, 1fr));
  }
}

.pricing-card {
  display: flex;
  flex-direction: column;
  padding: 1.5rem;
  border: 1px solid var(--pricing-border);
  border-radius: 0.75rem;
  background: var(--card-bg);
}

.pricing-card-featured {
  border-color: var(--pricing-accent);
  box-shadow: 0 0 0 1px var(--pricing-accent);
}

.pricing-kicker {
  margin: 0 0 0.35rem;
  color: var(--pricing-accent);
  font-size: 0.78rem;
  font-weight: 700;
  letter-spacing: 0.08em;
  text-transform: uppercase;
}

.pricing-title {
  margin: 0 0 0.35rem;
  font-size: 1.35rem;
}

.pricing-price {
  margin: 0.5rem 0 0.75rem;
  font-size: 2rem;
  font-weight: 800;
  line-height: 1;
}

.pricing-description,
.pricing-outcome,
.pricing-note {
  color: var(--text-muted-color);
  font-size: 0.95rem;
}

.pricing-list {
  margin: 0.25rem 0 1rem;
  padding-left: 1.1rem;
}

.pricing-list li {
  margin-bottom: 0.4rem;
}

.pricing-outcome {
  margin-top: auto;
  font-size: 0.9rem;
}

.pricing-button {
  display: block;
  margin-top: 1rem;
  padding: 0.65rem 1rem;
  border-radius: 0.5rem;
  font-weight: 600;
  text-align: center;
  text-decoration: none;
}

.pricing-button:hover {
  text-decoration: none;
}

.pricing-button-outline {
  border: 1px solid var(--pricing-accent);
  color: var(--pricing-accent);
}

.pricing-button-outline:hover {
  background: var(--pricing-accent);
  color: var(--pricing-accent-text);
}

.pricing-button-solid {
  background: var(--pricing-accent);
  color: var(--pricing-accent-text);
}

.pricing-button-solid:hover {
  opacity: 0.9;
  color: var(--pricing-accent-text);
}

.pricing-note {
  margin-top: 1rem;
  font-size: 0.85rem;
}
</style>
