---
title: About
icon: fas fa-info-circle
order: 1
description: Edward Villarin is the owner and engineer at Doers Minds, a cybersecurity company helping businesses find and fix security risk.
---

<div class="owner-profile">
  <img class="owner-photo" src="{{ '/assets/img/edward-villarin.png' | relative_url }}" alt="Portrait of Edward Villarin, Owner and Engineer at Doers Minds">
  <h2 class="owner-name">Edward Villarin</h2>
  <p class="owner-role">Owner &amp; Engineer</p>
  <p class="owner-company">Doers Minds</p>
</div>

<div class="owner-grid">
<div class="owner-details">
  <dl>
    <div class="owner-detail">
      <dt>Full name</dt>
      <dd>Edward Villarin</dd>
    </div>
    <div class="owner-detail">
      <dt>Email</dt>
      <dd><a href="mailto:edwardvillarin@doersminds.com">edwardvillarin@doersminds.com</a></dd>
    </div>
    <div class="owner-detail">
      <dt>LinkedIn</dt>
      <dd>
        <a href="https://www.linkedin.com/in/edward-villarin-06883a290/" target="_blank" rel="noopener noreferrer">
          edward-villarin-06883a290
        </a>
      </dd>
    </div>
    <div class="owner-detail">
      <dt>RPW</dt>
      <dd>
        <a href="https://rpiers.com/profile/@roleplayworld" target="_blank" rel="noopener noreferrer">
          Role Play World
        </a>
      </dd>
    </div>
    <div class="owner-detail">
      <dt>School</dt>
      <dd>AMA University</dd>
    </div>
    <div class="owner-detail">
      <dt>Degree</dt>
      <dd>Bachelor of Science in Cybersecurity</dd>
    </div>
  </dl>
</div>

<div class="owner-skills">
  <h2 class="owner-skills-title">Skills</h2>

  <div class="skill-group">
    <p class="skill-label">Security</p>
    <ul class="skill-tags">
      <li>SOC operations</li>
      <li>Penetration testing</li>
      <li>Vulnerability assessment</li>
      <li>Incident response</li>
      <li>Web app security</li>
      <li>OWASP Top 10</li>
    </ul>
  </div>

  <div class="skill-group">
    <p class="skill-label">Platforms</p>
    <ul class="skill-tags">
      <li>Windows</li>
      <li>Linux (VPS/VDS admin)</li>
      <li>Azure</li>
      <li>Microsoft 365</li>
      <li>AWS</li>
      <li>Cloudflare</li>
    </ul>
  </div>

  <div class="skill-group">
    <p class="skill-label">Languages &amp; Tools</p>
    <ul class="skill-tags">
      <li>PHP</li>
      <li>Java (Desktop + Web)</li>
      <li>JavaScript</li>
      <li>C</li>
      <li>Python</li>
      <li>PowerShell</li>
      <li>Bash</li>
      <li>Burp Suite</li>
      <li>Wireshark</li>
      <li>Metasploit</li>
      <li>Git</li>
      <li>Docker</li>
      <li>Laravel</li>
      <li>React</li>
      <li>Machine Learning</li>
    </ul>
  </div>
</div>
</div>

<style>
.owner-profile,
.owner-skills {
  --owner-accent: #5c2793;
}

.owner-profile {
  margin: 2rem auto 1rem;
  max-width: 34rem;
  text-align: center;
}

[data-bs-theme="dark"] .owner-profile,
[data-bs-theme="dark"] .owner-skills {
  --owner-accent: #c9a7f5;
}

.owner-photo {
  display: block;
  width: 11.5rem;
  max-width: 60%;
  height: auto;
  aspect-ratio: 1 / 1;
  object-fit: cover;
  margin: 0 auto 1.1rem;
  border-radius: 50%;
  border: 4px solid var(--card-bg);
  box-shadow: 0 0.5rem 1.5rem rgba(0, 0, 0, 0.18);
}

.owner-name {
  margin: 0 0 0.35rem;
  font-size: 1.75rem;
  line-height: 1.2;
  border-bottom: none;
}

.owner-role {
  margin: 0 0 0.15rem;
  color: var(--owner-accent);
  font-size: 0.85rem;
  font-weight: 700;
  letter-spacing: 0.1em;
  text-transform: uppercase;
}

.owner-company {
  margin: 0 0 0.9rem;
  color: var(--text-muted-color);
  font-size: 0.95rem;
}

.owner-grid {
  display: grid;
  grid-template-columns: minmax(0, 1fr);
  gap: 1.25rem;
  max-width: 60rem;
  margin: 0 auto 1rem;
  align-items: stretch;
}

@media (min-width: 768px) {
  .owner-grid {
    grid-template-columns: repeat(2, minmax(0, 1fr));
  }
}

.owner-details {
  margin: 0;
  overflow: hidden;
  border: 1px solid var(--main-border-color);
  border-radius: 0.75rem;
  background: var(--card-bg);
}

.owner-details dl {
  margin: 0;
}

.owner-detail {
  display: flex;
  align-items: baseline;
  justify-content: space-between;
  gap: 1rem;
  margin: 0;
  padding: 0.8rem 1.1rem;
}

.owner-detail + .owner-detail {
  border-top: 1px solid var(--main-border-color);
}

.owner-detail dt {
  flex: 0 0 auto;
  margin: 0;
  color: var(--text-muted-color);
  font-size: 0.78rem;
  font-weight: 600;
  letter-spacing: 0.06em;
  text-transform: uppercase;
}

.owner-detail dd {
  margin: 0;
  font-size: 0.95rem;
  font-weight: 500;
  text-align: right;
}

.owner-detail a {
  text-decoration: none;
  overflow-wrap: anywhere;
}

.owner-detail a:hover {
  text-decoration: underline;
}

.owner-skills {
  margin: 0;
  padding: 1.15rem 1.25rem 1.3rem;
  border: 1px solid var(--main-border-color);
  border-radius: 0.75rem;
  background: var(--card-bg);
}

.owner-skills-title {
  margin: 0 0 1rem;
  padding: 0;
  border-bottom: none;
  color: var(--text-muted-color);
  font-size: 0.95rem;
  font-weight: 700;
  letter-spacing: 0.06em;
  text-align: center;
  text-transform: uppercase;
}

.skill-group + .skill-group {
  margin-top: 1.1rem;
}

.skill-label {
  margin: 0 0 0.45rem;
  color: var(--owner-accent);
  font-size: 0.78rem;
  font-weight: 700;
  letter-spacing: 0.06em;
  text-transform: uppercase;
}

.skill-tags {
  display: flex;
  flex-wrap: wrap;
  gap: 0.4rem;
  margin: 0;
  padding: 0;
  list-style: none;
}

.skill-tags li {
  padding: 0.18rem 0.6rem;
  border: 1px solid var(--main-border-color);
  border-radius: 999px;
  background: var(--main-bg);
  color: var(--text-color);
  font-size: 0.8rem;
  line-height: 1.5;
}

@media (max-width: 480px) {
  .owner-detail {
    flex-direction: column;
    gap: 0.15rem;
  }

  .owner-detail dd {
    text-align: left;
  }
}
</style>
