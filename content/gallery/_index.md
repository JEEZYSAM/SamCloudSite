---
title: "Gallery"
description: "Gallery section."
---

<div class="gallery">
  <img src="/gallery/_O9A0127.jpg" />
  <img src="/gallery/_O9A2147.jpg" />
  <img src="/gallery/_O9A2981.jpg" />
  <img src="/gallery/_O9A3018.jpg" />
  <img src="/gallery/_O9A3098.jpg" />
  <img src="/gallery/_O9A3247.jpg" />
  <img src="/gallery/_O9A3708.jpg" />
  <img src="/gallery/_O9A4039.jpg" />
  <img src="/gallery/_O9A4173-2.jpg" />
  <img src="/gallery/_O9A4184.jpg" />
  <img src="/gallery/_O9A4284.jpg" />
  <img src="/gallery/_O9A4358.jpg" />
  <img src="/gallery/_O9A4407.jpg" />
  <img src="/gallery/_O9A4590.jpg" />
  <img src="/gallery/_O9A4592.jpg" />
  <img src="/gallery/_O9A4593.jpg" />
  <img src="/gallery/_O9A5316.jpg" />
  <img src="/gallery/_O9A5341.jpg" />
  <img src="/gallery/_O9A5347.jpg" />
  <img src="/gallery/_O9A5351.jpg" />
  <img src="/gallery/_O9A5757.jpg" />
  <img src="/gallery/_O9A5997.jpg" />
  <img src="/gallery/_O9A6133.jpg" />
  <img src="/gallery/_O9A6178.jpg" />
  <img src="/gallery/_O9A7025.jpg" />
  <img src="/gallery/_O9A7057.jpg" />
  <img src="/gallery/_O9A7071.jpg" />
  <img src="/gallery/_O9A7377.jpg" />
  <img src="/gallery/_O9A7505.jpg" />
  <img src="/gallery/_O9A7534.jpg" />
  <img src="/gallery/_O9A8353.jpg" />
  <img src="/gallery/_O9A8356.jpg" />
  <img src="/gallery/_O9A8378.jpg" />
  <img src="/gallery/_O9A8453.jpg" />
  <img src="/gallery/_O9A8673.jpg" />
  <img src="/gallery/_O9A8905-2.jpg" />
</div>

<!-- Lightbox overlay -->
<div id="lightbox" class="lightbox" style="display:none;">
  <img id="lightbox-img" src="" alt="Expanded photo" />
</div>

<style>
/* Import elegant, media-grade font */
@import url('https://fonts.googleapis.com/css2?family=DM+Serif+Display&display=swap');

body, .main-content, .content, .prose {
  margin: 0 !important;
  padding: 0 !important;
  max-width: 100vw !important;
}

/* Style Hugo's automatic title injection beautifully */
.page-title, .single-title, h1.title, h1.page-title, h1.entry-title, h1 {
  font-family: 'DM Serif Display', serif !important;
  font-size: 4rem !important;
  font-weight: 400 !important;
  text-align: center !important;
  margin: 2.5rem auto 1.5rem !important;
  color: #121212 !important;
  letter-spacing: 0.02em;
  line-height: 1.1;
  text-shadow: 0 2px 20px rgba(0, 0, 0, 0.08);
  background: transparent !important;
  box-shadow: none !important;
}

/* Remove any white overlay/banner styles */
.page-header, .hero, .entry-header, .header-overlay {
  background: transparent !important;
  box-shadow: none !important;
  backdrop-filter: none !important;
}

/* Gallery grid */
.gallery {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(600px, 1fr));
  gap: 8px;
  width: 100vw;
  max-width: 100vw;
  padding: 8px;
  box-sizing: border-box;
}

.gallery img {
  width: 100%;
  aspect-ratio: 1 / 1;
  object-fit: cover;
  border-radius: 8px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  transition: transform 0.3s cubic-bezier(.4,1.4,.6,1);
  margin: 0;
  cursor: pointer;
}

.gallery img:hover {
  transform: scale(1.04);
  z-index: 2;
}

/* Lightbox styles */
.lightbox {
  position: fixed;
  top: 0;
  left: 0;
  width: 100vw;
  height: 100vh;
  background: rgba(0,0,0,0.85);
  display: flex;
  align-items: center;
  justify-content: center;
  cursor: pointer;
  z-index: 9999;
}

.lightbox img {
  max-width: 90vw;
  max-height: 90vh;
  border-radius: 12px;
  box-shadow: 0 8px 30px rgba(0,0,0,0.7);
  user-select: none;
  pointer-events: none;
}
</style>

<script>
  // Select gallery images and lightbox elements
  const galleryImages = document.querySelectorAll('.gallery img');
  const lightbox = document.getElementById('lightbox');
  const lightboxImg = document.getElementById('lightbox-img');

  galleryImages.forEach(img => {
    img.addEventListener('click', () => {
      lightboxImg.src = img.src;  // show clicked image
      lightbox.style.display = 'flex'; // show lightbox
      document.body.style.overflow = 'hidden'; // prevent scroll while open
    });
  });

  // Close lightbox on single click anywhere in overlay
  lightbox.addEventListener('click', () => {
    lightbox.style.display = 'none';
    lightboxImg.src = '';
    document.body.style.overflow = 'auto'; // restore scrolling
  });
</script>