<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Adobe BannerMint</title>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/cropperjs/1.5.13/cropper.min.css" rel="stylesheet"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    :root {
      --primary: #4a89dc;
      --primary-dark: #3a6cb0;
      --accent: #5dade2;
      --dark: #f8f9fa;
      --darker: #e9ecef;
      --light: #ffffff;
      --text: #212529;
      --text-muted: #6c757d;
      --shadow: 0 4px 12px rgba(74, 137, 220, 0.3);
      --transition: all 0.3s ease;
      --radius: 12px;
      --font: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
      --blur: 5px;
      --gradient: linear-gradient(135deg, #4a89dc, #5dade2);
    }
    @import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap');
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }
    body {
      font-family: var(--font);
      background: linear-gradient(135deg, rgba(74, 137, 220, 0.05), rgba(93, 173, 226, 0.05));
      color: var(--text);
      min-height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 20px;
      position: relative;
      overflow-y: auto;
      overflow-x: hidden;
    }
    /* Floating Elements */
    .floating-element {
      position: absolute;
      z-index: -1;
      opacity: 0.3;
      animation: float 25s infinite ease-in-out;
    }
    .floating-element i {
      font-size: 2.5rem;
      color: var(--primary);
    }
    /* Unique animations and positions for each element */
    .floating-element:nth-child(1) { top: 5%; left: 10%; animation-delay: 0s; animation-duration: 20s; }
    .floating-element:nth-child(2) { top: 15%; left: 85%; animation-delay: 1s; animation-duration: 22s; }
    .floating-element:nth-child(3) { top: 30%; left: 5%; animation-delay: 2s; animation-duration: 18s; }
    .floating-element:nth-child(4) { top: 45%; left: 90%; animation-delay: 3s; animation-duration: 24s; }
    .floating-element:nth-child(5) { top: 60%; left: 20%; animation-delay: 4s; animation-duration: 21s; }
    .floating-element:nth-child(6) { top: 75%; left: 80%; animation-delay: 5s; animation-duration: 19s; }
    .floating-element:nth-child(7) { top: 10%; left: 50%; animation-delay: 6s; animation-duration: 23s; }
    .floating-element:nth-child(8) { top: 50%; left: 10%; animation-delay: 7s; animation-duration: 20s; }
    .floating-element:nth-child(9) { top: 80%; left: 60%; animation-delay: 8s; animation-duration: 25s; }
    .floating-element:nth-child(10) { top: 25%; left: 30%; animation-delay: 9s; animation-duration: 22s; }
    .floating-element:nth-child(11) { top: 70%; left: 40%; animation-delay: 10s; animation-duration: 18s; }
    .floating-element:nth-child(12) { top: 5%; left: 70%; animation-delay: 11s; animation-duration: 24s; }
    .floating-element:nth-child(13) { top: 40%; left: 25%; animation-delay: 12s; animation-duration: 21s; }
    .floating-element:nth-child(14) { top: 90%; left: 15%; animation-delay: 13s; animation-duration: 23s; }
    .floating-element:nth-child(15) { top: 35%; left: 85%; animation-delay: 14s; animation-duration: 20s; }
    @keyframes float {
      0% { transform: translate(0, 0) rotate(0deg) scale(1); }
      25% { transform: translate(30px, -20px) rotate(10deg) scale(1.05); }
      50% { transform: translate(-20px, 30px) rotate(-10deg) scale(0.95); }
      75% { transform: translate(-10px, -25px) rotate(5deg) scale(1.03); }
      100% { transform: translate(0, 0) rotate(0deg) scale(1); }
    }
    /* Welcome Message */
    .welcome-message {
      text-align: center;
      margin-bottom: 20px;
      font-size: 1.4rem;
      font-weight: 600;
      color: var(--primary);
      background: var(--gradient);
      -webkit-background-clip: text;
      background-clip: text;
      color: transparent;
      letter-spacing: 1px;
    }
    /* Container and other styles */
    .container {
      width: 100%;
      max-width: 900px;
      background: var(--light);
      border-radius: var(--radius);
      padding: 30px;
      box-shadow: var(--shadow);
      transition: var(--transition);
      position: relative;
      display: flex;
      flex-direction: column;
      min-height: 80vh;
      margin: 20px;
      box-sizing: border-box;
      backdrop-filter: blur(var(--blur));
      border: 2px solid var(--primary);
    }
    .header {
      text-align: center;
      margin-bottom: 30px;
      flex-shrink: 0;
    }
    .logo {
      width: 80px;
      height: 80px;
      margin: 0 auto 20px;
      background: var(--gradient);
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      box-shadow: var(--shadow);
      transition: var(--transition);
      animation: pulse 2s infinite;
      filter: drop-shadow(0 0 8px rgba(74, 137, 220, 0.4));
    }
    @keyframes pulse {
      0% { transform: scale(1); }
      50% { transform: scale(1.05); }
      100% { transform: scale(1); }
    }
    .logo i {
      font-size: 36px;
      color: white;
    }
    h1 {
      font-size: 2.2rem;
      font-weight: 700;
      margin-bottom: 8px;
      color: var(--primary);
      background: var(--gradient);
      -webkit-background-clip: text;
      background-clip: text;
      color: transparent;
      letter-spacing: 1px;
    }
    h2 {
      font-size: 1.1rem;
      font-weight: 500;
      color: var(--text-muted);
      margin-bottom: 5px;
      letter-spacing: 0.5px;
    }
    .form-group {
      margin-bottom: 20px;
      flex-shrink: 0;
      position: relative;
    }
    .form-group label {
      display: block;
      margin-bottom: 8px;
      font-weight: 600;
      color: var(--text);
      letter-spacing: 0.5px;
    }
    /* Custom Select Dropdown */
    .custom-select {
      position: relative;
      width: 100%;
    }
    .custom-select select {
      width: 100%;
      padding: 12px 20px;
      border-radius: var(--radius);
      border: 1px solid #dee2e6;
      font-family: var(--font);
      font-size: 1rem;
      font-weight: 500;
      transition: var(--transition);
      cursor: pointer;
      appearance: none;
      background: var(--light);
      color: var(--text);
      min-height: 48px;
      letter-spacing: 0.5px;
      padding-right: 40px;
      background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 20 20'%3e%3cpath stroke='%236b7280' stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='m6 8 10 12 14 8'/%3e%3c/svg%3e");
      background-position: right 12px center;
      background-repeat: no-repeat;
      background-size: 1.2em;
    }
    .custom-select:after {
      content: '';
      position: absolute;
      top: 50%;
      right: 12px;
      transform: translateY(-50%);
      pointer-events: none;
    }
    select:focus {
      outline: none;
      border-color: var(--primary);
      box-shadow: 0 0 0 3px rgba(74, 137, 220, 0.2);
    }
    /* Upload Area */
    .upload-area {
      border: 2px dashed var(--accent);
      border-radius: var(--radius);
      padding: 30px 20px;
      text-align: center;
      cursor: pointer;
      transition: var(--transition);
      background: rgba(93, 173, 226, 0.05);
      margin: 20px 0;
      position: relative;
      min-height: 200px;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      flex-shrink: 0;
      overflow: hidden;
    }
    .upload-area:hover, .upload-area.dragover {
      border-color: var(--primary);
      background: rgba(74, 137, 220, 0.08);
    }
    .upload-icon {
      font-size: 3.5rem;
      color: var(--primary);
      margin-bottom: 15px;
      transition: transform 0.3s ease;
    }
    .upload-area:hover .upload-icon, .upload-area.dragover .upload-icon {
      transform: scale(1.1);
    }
    .upload-text {
      font-size: 1.1rem;
      color: var(--text-muted);
      margin-bottom: 10px;
      letter-spacing: 0.5px;
    }
    .upload-hint {
      font-size: 0.9rem;
      color: var(--primary);
      font-weight: 500;
      display: flex;
      align-items: center;
      gap: 5px;
      justify-content: center;
    }
    .upload-hint i {
      font-size: 0.9rem;
    }
    button {
      background: var(--gradient);
      color: white;
      margin-top: 15px;
      border: none;
      font-weight: 600;
      letter-spacing: 0.5px;
      transition: var(--transition);
      box-shadow: 0 2px 5px rgba(74, 137, 220, 0.2);
      padding: 14px 20px;
      border-radius: var(--radius);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }
    button:hover {
      background: var(--primary-dark);
      transform: translateY(-2px);
    }
    button:active {
      transform: translateY(0);
    }
    button i {
      font-size: 1rem;
    }
    .preview-container {
      margin: 20px 0;
      text-align: center;
      border-radius: var(--radius);
      overflow: hidden;
      display: none;
      box-shadow: var(--shadow);
      backdrop-filter: blur(var(--blur));
      background: rgba(255, 255, 255, 0.5);
      flex-grow: 1;
      position: relative;
      min-height: 100px;
      border: 1px solid var(--primary);
    }
    .preview-container.active {
      display: flex;
      align-items: center;
      justify-content: center;
      animation: fadeIn 0.5s ease;
    }
    #emailImage {
      display: block;
      max-width: 100%;
      height: auto;
      border-radius: 8px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
      border: 2px solid var(--primary);
      opacity: 0;
      transition: opacity 0.3s;
    }
    .cropper-container.cropper-bg {
      width: 100% !important;
      height: 100% !important;
    }
    .output {
      text-align: center;
      margin-top: 20px;
      flex-grow: 0;
      flex-shrink: 0;
    }
    .success-message {
      color: var(--primary);
      font-weight: 600;
      margin-top: 15px;
      font-size: 1.1rem;
      animation: bounce 0.5s ease;
      letter-spacing: 0.5px;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }
    .success-message i {
      color: #28a745;
    }
    .hidden {
      display: none;
    }
    .footer {
      margin-top: auto;
      text-align: center;
      padding-top: 20px;
      font-size: 0.9rem;
      color: var(--text-muted);
      border-top: 1px solid #dee2e6;
      padding-top: 20px;
      backdrop-filter: blur(var(--blur));
      flex-shrink: 0;
      letter-spacing: 0.5px;
    }
    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(10px); }
      to { opacity: 1; transform: translateY(0); }
    }
    @keyframes bounce {
      0%, 100% { transform: translateY(0); }
      50% { transform: translateY(-5px); }
    }
    @media (max-width: 768px) {
      .floating-element {
        display: none;
      }
      .container {
        padding: 20px;
        min-height: unset;
        margin: 10px;
        border-width: 1px;
      }
      body {
        padding: 10px;
        align-items: flex-start;
      }
      h1 {
        font-size: 2rem;
      }
      .upload-area {
        padding: 25px 15px;
        min-height: 180px;
      }
      .upload-icon {
        font-size: 3rem;
      }
    }
    @media (max-width: 480px) {
      .container {
        padding: 15px;
      }
      h1 {
        font-size: 1.8rem;
      }
      .upload-area {
        padding: 20px 10px;
        min-height: 160px;
      }
    }
    .cropper-container {
      max-width: 100%;
      max-height: 100%;
    }
  </style>
</head>
<body>
  <div class="floating-element">
    <i class="fas fa-envelope"></i>
  </div>
  <div class="floating-element">
    <i class="fas fa-envelope-open-text"></i>
  </div>
  <div class="floating-element">
    <i class="fas fa-mail-bulk"></i>
  </div>
  <div class="floating-element">
    <i class="fas fa-ad"></i>
  </div>
  <div class="floating-element">
    <i class="fas fa-bullhorn"></i>
  </div>
  <div class="floating-element">
    <i class="fas fa-images"></i>
  </div>
  <div class="floating-element">
    <i class="fas fa-chart-bar"></i>
  </div>
  <div class="floating-element">
    <i class="fas fa-paper-plane"></i>
  </div>
  <div class="floating-element">
    <i class="fas fa-newspaper"></i>
  </div>
  <div class="floating-element">
    <i class="fas fa-camera"></i>
  </div>
  <div class="floating-element">
    <i class="fas fa-file-alt"></i>
  </div>
  <div class="floating-element">
    <i class="fas fa-pencil-alt"></i>
  </div>
  <div class="floating-element">
    <i class="fas fa-palette"></i>
  </div>
  <div class="floating-element">
    <i class="fas fa-layer-group"></i>
  </div>
  <div class="floating-element">
    <i class="fas fa-shapes"></i>
  </div>
  <div class="container">
    <div class="welcome-message">
      Hello, Joy!
    </div>
    <div class="header">
      <div class="logo">
        <i class="fas fa-envelope-open-text"></i>
      </div>
      <h1>Adobe BannerMint</h1>
      <h2>By Marketing Solution Center</h2>
    </div>
    <div class="form-group">
      <label for="bannerType">Banner Type & Size</label>
      <div class="custom-select">
        <select id="bannerType">
          <option value="newsletter">Newsletter (544×160)</option>
          <option value="email" selected>Email Banner (544×214)</option>
          <option value="article">Article Blocks (579×378)</option>
        </select>
      </div>
    </div>
    <div class="form-group">
      <label for="emailFileType">Output Format</label>
      <div class="custom-select">
        <select id="emailFileType">
          <option value="image/png">PNG (Lossless)</option>
          <option value="image/jpeg">JPEG (Smaller)</option>
        </select>
      </div>
    </div>
    <div class="upload-area" id="emailDropZone">
      <div class="upload-icon">
        <i class="fas fa-cloud-upload-alt"></i>
      </div>
      <div class="upload-text">Drag & drop your image here</div>
      <div class="upload-hint">
        or <i class="fas fa-folder-open"></i> <span>browse files</span>
      </div>
    </div>
    <input type="file" id="emailImageInput" accept="image/png,image/jpeg" class="hidden">
    <div class="preview-container" id="previewContainer">
      <img id="emailImage" alt="Banner preview">
    </div>
    <button id="emailDownload">
      <i class="fas fa-crop-alt"></i> Crop & Download Banner
    </button>
    <div class="output" id="emailResult"></div>
    <div class="footer">
      ©2026 Dassault Systèmes - All rights reserved
    </div>
  </div>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/cropperjs/1.5.13/cropper.min.js"></script>
  <script>
    const emailImage = document.getElementById('emailImage');
    const emailFileType = document.getElementById('emailFileType');
    const bannerType = document.getElementById('bannerType');
    const emailDropZone = document.getElementById('emailDropZone');
    const emailImageInput = document.getElementById('emailImageInput');
    const previewContainer = document.getElementById('previewContainer');
    let emailCropper;
    const bannerDimensions = {
      newsletter: { width: 544, height: 160 },
      email: { width: 544, height: 214 },
      article: { width: 579, height: 378 }
    };
    emailDropZone.addEventListener('click', () => emailImageInput.click());
    emailDropZone.addEventListener('dragover', (e) => {
      e.preventDefault();
      emailDropZone.classList.add('dragover');
    });
    emailDropZone.addEventListener('dragleave', () => {
      emailDropZone.classList.remove('dragover');
    });
    emailDropZone.addEventListener('drop', (e) => {
      e.preventDefault();
      emailDropZone.classList.remove('dragover');
      if (e.dataTransfer.files[0]) {
        loadEmailImage(e.dataTransfer.files[0]);
      }
    });
    emailImageInput.addEventListener('change', (e) => {
      if (e.target.files[0]) {
        loadEmailImage(e.target.files[0]);
      }
    });
    function loadEmailImage(file) {
      const reader = new FileReader();
      reader.onload = () => {
        emailImage.src = reader.result;
        previewContainer.classList.add('active');
        if (emailCropper) emailCropper.destroy();
        emailImage.onload = () => {
          initCropper();
          emailImage.style.opacity = 1;
        };
        if (emailImage.complete) {
          initCropper();
          emailImage.style.opacity = 1;
        }
      };
      reader.readAsDataURL(file);
    }
    function initCropper() {
      const selectedBannerType = bannerType.value;
      const { width, height } = bannerDimensions[selectedBannerType];
      emailCropper = new Cropper(emailImage, {
        viewMode: 1,
        aspectRatio: width / height,
        autoCropArea: 1,
        background: false,
        responsive: true,
        touchDragZoom: true,
        mouseWheelZoom: false,
        minContainerWidth: 100,
        minContainerHeight: 100,
      });
    }
    bannerType.addEventListener('change', () => {
      if (emailCropper) {
        const selectedBannerType = bannerType.value;
        const { width, height } = bannerDimensions[selectedBannerType];
        emailCropper.setAspectRatio(width / height);
      }
    });
    window.addEventListener('resize', () => {
      if (emailCropper) {
        emailCropper.checkCanvas();
        emailCropper.checkImage();
      }
    });
    document.getElementById('emailDownload').addEventListener('click', () => {
      if (!emailCropper) {
        return alert("Please upload an image first!");
      }
      const selectedBannerType = bannerType.value;
      const { width, height } = bannerDimensions[selectedBannerType];
      emailCropper.getCroppedCanvas({ width, height }).toBlob((blob) => {
        const url = URL.createObjectURL(blob);
        const a = document.createElement('a');
        a.href = url;
        a.download = `banner-${width}x${height}.${emailFileType.value.split('/')[1]}`;
        document.body.appendChild(a);
        a.click();
        document.body.removeChild(a);
        const result = document.getElementById('emailResult');
        result.innerHTML = '<div class="success-message"><i class="fas fa-check-circle"></i> Banner downloaded successfully!</div>';
      }, emailFileType.value);
    });
  </script>
</body>
</html>
