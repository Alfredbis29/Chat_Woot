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
