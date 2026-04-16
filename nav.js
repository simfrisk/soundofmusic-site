const navbar = document.getElementById('navbar');
window.addEventListener('scroll', () => {
  navbar.classList.toggle('scrolled', window.scrollY > 50);
}, { passive: true });

const toggle = document.getElementById('nav-toggle');
const navLinks = document.getElementById('nav-links');

if (toggle && navLinks) {
  // Create overlay as a direct body child to avoid nav stacking context issues
  const overlay = document.createElement('ul');
  overlay.className = 'mobile-nav-overlay';
  overlay.innerHTML = navLinks.innerHTML;
  document.body.appendChild(overlay);

  function openMenu() {
    toggle.classList.add('open');
    overlay.classList.add('open');
    document.body.style.overflow = 'hidden';
  }

  function closeMenu() {
    toggle.classList.remove('open');
    overlay.classList.remove('open');
    document.body.style.overflow = '';
  }

  toggle.addEventListener('click', () => {
    toggle.classList.contains('open') ? closeMenu() : openMenu();
  });

  overlay.querySelectorAll('a').forEach(link => {
    link.addEventListener('click', closeMenu);
  });
}
