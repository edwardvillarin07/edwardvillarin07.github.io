---
title: Certificates
icon: fas fa-certificate
order: 3
description: Certificates and completed training for Edward Villarin, including cybersecurity certifications from Appkademiya, Cisco Networking Academy, and DICT.
---

## Certificates and training

A record of the certifications and trainings completed. Select any certificate to view it full size.

<div class="certificates-page">
  <div class="cert-grid">
    <figure class="cert-card">
      <img class="cert-image" src="{{ '/assets/img/cert.png' | relative_url }}" alt="Certificate of Attendance awarded to Edward Villarin for the 20-Hour Training on Protecting Your Digital Assets from Cyber Threats by DICT Region XI - Davao del Sur, October 20-22, 2026">
      <figcaption class="cert-body">
        <p class="cert-kicker">Certificate of Attendance</p>
        <h3 class="cert-title">Protecting Your Digital Assets from Cyber Threats</h3>
        <p class="cert-meta">DICT Region XI &ndash; Davao del Sur<br>20-hour training &middot; October 20&ndash;22, 2026</p>
      </figcaption>
    </figure>
    <figure class="cert-card">
      <img class="cert-image" src="{{ '/assets/img/eh.png' | relative_url }}" alt="Cisco Networking Academy Certificate of Course Completion awarded to Edward Villarin for the Ethical Hacker course, issued November 6, 2026">
      <figcaption class="cert-body">
        <p class="cert-kicker">Certificate of Course Completion</p>
        <h3 class="cert-title">Ethical Hacker</h3>
        <p class="cert-meta">Cisco Networking Academy<br>Issued November 6, 2026</p>
      </figcaption>
    </figure>
    <figure class="cert-card">
      <img class="cert-image" src="{{ '/assets/img/cira.png' | relative_url }}" alt="Appkademiya Certificate of Achievement awarded to Edward Villarin for the Certified Incident Response Analyst (CIRA) certification, issued November 13, 2026">
      <figcaption class="cert-body">
        <p class="cert-kicker">Certificate of Achievement</p>
        <h3 class="cert-title">Certified Incident Response Analyst (CIRA)</h3>
        <p class="cert-meta">Appkademiya &middot; Digitally Verified<br>Issued November 13, 2026</p>
      </figcaption>
    </figure>
  </div>
</div>

<style>
.certificates-page {
  --cert-accent: #5c2793;
  --cert-border: #d9d9df;
  margin: 1.5rem 0 0.5rem;
}

[data-bs-theme="dark"] .certificates-page {
  --cert-accent: #c9a7f5;
  --cert-border: #3a3a40;
}

.cert-grid {
  display: grid;
  grid-template-columns: minmax(0, 1fr);
  gap: 1.25rem;
}

@media (min-width: 576px) {
  .cert-grid {
    grid-template-columns: repeat(2, minmax(0, 1fr));
  }
}

@media (min-width: 992px) {
  .cert-grid {
    grid-template-columns: repeat(3, minmax(0, 1fr));
  }
}

.cert-card {
  display: flex;
  flex-direction: column;
  margin: 0;
  overflow: hidden;
  border: 1px solid var(--cert-border);
  border-radius: 0.75rem;
  background: var(--card-bg);
  transition: transform 0.18s ease, border-color 0.18s ease, box-shadow 0.18s ease;
}

.cert-card:hover,
.cert-card:focus-within {
  border-color: var(--cert-accent);
  box-shadow: 0 0.5rem 1.25rem rgba(0, 0, 0, 0.12);
  transform: translateY(-3px);
}

.cert-card a.popup,
.cert-card .img-link {
  display: block;
  margin: 0;
  padding: 0.5rem;
  background: #ffffff;
}

.cert-card .cert-image {
  display: block;
  width: 100%;
  height: auto;
  border-radius: 0.35rem;
}

.cert-body {
  display: flex;
  flex: 1;
  flex-direction: column;
  padding: 0.9rem 1rem 1.1rem;
}

.cert-kicker {
  margin: 0 0 0.35rem;
  color: var(--cert-accent);
  font-size: 0.72rem;
  font-weight: 700;
  letter-spacing: 0.08em;
  text-transform: uppercase;
}

.cert-title {
  margin: 0 0 0.4rem;
  font-size: 1rem;
  line-height: 1.35;
}

.cert-meta {
  margin: auto 0 0;
  color: var(--text-muted-color);
  font-size: 0.82rem;
  line-height: 1.45;
}
</style>
