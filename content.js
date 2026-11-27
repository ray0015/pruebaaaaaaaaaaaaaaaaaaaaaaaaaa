(() => {
  const estado = {
    cargadoEn: window.location.href,
    hora: new Date().toISOString()
  };

  console.log("[Intenciones] Activo en:", estado);

  window.__misIntenciones = {
    info: () => estado,
    marcarElemento: (selector, color = "2px solid #00ff88") => {
      document.querySelectorAll(selector).forEach((el) => {
        el.style.outline = color;
      });
    }
  };
})();
