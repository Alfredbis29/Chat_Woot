// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// Keyboard shortcut: Press / to focus search
document.addEventListener('DOMContentLoaded', function() {
  const searchInput = document.getElementById('search-input');
  
  if (searchInput) {
    document.addEventListener('keydown', function(e) {
      // Only trigger if not typing in an input/textarea and '/' is pressed
      if (e.key === '/' && e.target.tagName !== 'INPUT' && e.target.tagName !== 'TEXTAREA') {
        e.preventDefault();
        searchInput.focus();
      }
    });
  }
});

// Feedback widget handler
function handleFeedback(type, slug) {
  const messageEl = document.getElementById('feedback-message');
  const messages = {
    yes: 'Thank you for your feedback! We\'re glad this article was helpful.',
    no: 'Thank you for your feedback. We\'ll work on improving this article.'
  };
  
  messageEl.textContent = messages[type];
  messageEl.style.display = 'block';
  
  // Disable buttons
  document.querySelectorAll('.hc-feedback-btn').forEach(btn => {
    btn.disabled = true;
    btn.style.opacity = '0.6';
    btn.style.cursor = 'not-allowed';
  });
  
  // Store feedback (in a real app, this would be sent to a server)
  console.log(`Feedback: ${type} for article: ${slug}`);
}
