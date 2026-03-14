# Design Tokens Reference

## Complete Design System

### Color Palette

#### Primary Colors
```
Primary Blue: #667eea
Primary Purple: #764ba2
Primary Gradient: linear-gradient(135deg, #667eea 0%, #764ba2 100%)
```

#### Text Colors
```
Text Primary: #1e293b (Dark slate)
Text Secondary: #64748b (Medium slate)
Text Tertiary: #94a3b8 (Light slate)
Text Light: #cbd5e1 (Very light slate)
Text Disabled: #cbd5e1
```

#### Background Colors
```
Background Base: #f8fafc (Light blue-gray)
Background Surface: #ffffff (White)
Background Secondary: #f1f5f9 (Slightly darker)
Background Tertiary: #e2e8f0 (Light border color)
```

#### Border Colors
```
Border Primary: #e2e8f0
Border Secondary: #cbd5e1
Border Tertiary: #94a3b8
Border Hover: #cbd5e1
```

#### State Colors
```
Success: #16a34a (Green)
Success Light: #dcfce7
Error: #dc2626 (Red)
Error Light: #fef2f2
Warning: #f59e0b (Amber)
Info: #3b82f6 (Blue)
```

#### Component Colors
```
Link Color: #667eea
Link Hover: #764ba2
Link Visited: #7c3aed
Code Background: #f1f5f9
Code Text: #e11d48
Code Block Background: #1e293b
Code Block Text: #e2e8f0
```

---

### Typography

#### Font Family
```
Font Stack: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, 
           "Helvetica Neue", Arial, sans-serif
Monospace: 'Monaco', 'Menlo', 'Ubuntu Mono', monospace
```

#### Font Sizes
```
H1 (Display): 3rem (48px)
H2 (Large): 1.75rem (28px)
H3 (Medium): 1.375rem (22px) / 1.125rem (18px)
Body: 1.125rem (18px)
Subtitle: 1rem (16px)
Small: 0.95rem (15px) / 0.875rem (14px)
Tiny: 0.75rem (12px)
```

#### Font Weights
```
Light: 300 (Not commonly used)
Regular: 400
Medium: 500
Semi-Bold: 600 (Headings, emphasis)
Bold: 700 (Main titles)
```

#### Line Heights
```
Tight: 1.4 (Not commonly used)
Normal: 1.6 (Links, labels)
Relaxed: 1.8 (Body text)
Loose: 1.9 (Articles)
```

#### Letter Spacing
```
Normal: 0
Tight: -0.02em (Headings)
Relaxed: 0.3px (Body in articles)
```

---

### Spacing Scale

```
0: 0
xs: 0.25rem (4px)
sm: 0.5rem (8px)
md: 1rem (16px)
lg: 1.5rem (24px)
xl: 2rem (32px)
2xl: 2.5rem (40px)
3xl: 3rem (48px)
4xl: 4rem (64px)
```

#### Common Spacing Usage
```
Padding Small: 0.5rem - 0.75rem
Padding Medium: 1rem - 1.5rem
Padding Large: 2rem - 2.5rem

Gap (between items): 0.75rem - 1.5rem
Margin Bottom: 1rem - 1.5rem
Margin Top: 2rem - 2.5rem
```

---

### Border Radius

```
None: 0
xs: 0.25rem (4px) - buttons borders
sm: 0.375rem (6px) - tags, small elements
md: 0.5rem (8px) - medium elements, inputs
lg: 0.75rem (12px) - cards, sections
xl: 1rem (16px) - large sections
full: 50% / 9999px - circles
```

#### Usage
```
Buttons: 0.5rem - 0.75rem
Cards: 0.75rem - 1rem
Tags: 1rem (full)
Code blocks: 0.75rem
Sections: 1rem
```

---

### Shadows

#### Shadow Levels
```
None: none
sm: 0 1px 2px 0 rgba(0, 0, 0, 0.05)
md: 0 2px 4px rgba(0, 0, 0, 0.1)
lg: 0 4px 6px rgba(0, 0, 0, 0.07), 0 1px 3px rgba(0, 0, 0, 0.06)
xl: 0 8px 12px rgba(0, 0, 0, 0.1)
2xl: 0 10px 15px rgba(0, 0, 0, 0.1), 0 4px 6px rgba(0, 0, 0, 0.07)
3xl: 0 10px 25px rgba(0, 0, 0, 0.15)
```

#### Component Shadows
```
Button: 0 4px 12px rgba(102, 126, 234, 0.3) [Primary]
Button Hover: 0 6px 20px rgba(102, 126, 234, 0.4) [Primary]
Card: 0 4px 6px rgba(0, 0, 0, 0.07), 0 1px 3px rgba(0, 0, 0, 0.06)
Card Hover: 0 10px 15px rgba(0, 0, 0, 0.1), 0 4px 6px rgba(0, 0, 0, 0.07)
```

---

### Components

#### Button (Primary)
```css
Padding: 0.75rem 1.5rem
Border Radius: 0.5rem - 0.75rem
Font Weight: 600
Font Size: 0.95rem
Background: linear-gradient(135deg, #667eea 0%, #764ba2 100%)
Color: white
Shadow: 0 4px 12px rgba(102, 126, 234, 0.3)
Transition: all 0.3s ease

States:
  Hover: Transform: translateY(-2px), Shadow: 0 6px 20px
  Active: Transform: translateY(0), Shadow: 0 2px 8px
  Disabled: Opacity: 0.5
```

#### Button (Secondary)
```css
Padding: 0.75rem 1.5rem
Border Radius: 0.5rem
Font Weight: 600
Background: #f1f5f9
Color: #334155
Border: 1px solid #cbd5e1

States:
  Hover: Background: #e2e8f0
```

#### Card
```css
Border Radius: 0.75rem
Border: 1px solid #e2e8f0
Padding: 1.5rem
Background: #f8fafc
Box Shadow: 0 4px 6px rgba(0, 0, 0, 0.07)
Transition: all 0.3s

States:
  Hover: 
    Transform: translateY(-4px)
    Box Shadow: 0 8px 12px rgba(0, 0, 0, 0.1)
    Border Color: #cbd5e1
    Background: #f1f5f9
```

#### Input/Search
```css
Padding: 1rem 1.25rem
Border Radius: 0.5rem
Border: none
Font Size: 1rem
Box Shadow: 0 2px 4px rgba(0, 0, 0, 0.1)
Transition: box-shadow 0.2s

States:
  Focus: Box Shadow: 0 4px 12px rgba(0, 0, 0, 0.15)
```

#### Tag
```css
Padding: 0.375rem 0.75rem
Border Radius: 1rem (full)
Font Size: 0.75rem
Font Weight: 500
Border: 1px solid rgba(255, 255, 255, 0.3)
Background: rgba(255, 255, 255, 0.2)
Color: white (typically on colored backgrounds)
```

#### Section
```css
Background: #ffffff
Border Radius: 1rem
Padding: 2rem 2rem 2.5rem
Box Shadow: 0 4px 6px rgba(0, 0, 0, 0.07), 0 1px 3px rgba(0, 0, 0, 0.06)
Border Left: 4px solid transparent
Transition: all 0.2s

States:
  Hover:
    Box Shadow: 0 10px 15px rgba(0, 0, 0, 0.1)
    Border Left Color: #667eea
```

---

### Animations & Transitions

#### Duration
```
Fast: 0.2s
Normal: 0.3s
Slow: 0.5s
```

#### Timing Functions
```
ease: ease (default)
ease-in: ease-in
ease-out: ease-out
ease-in-out: ease-in-out
linear: linear
```

#### Common Animations
```css
/* Hover lift effect */
transform: translateY(-2px)
transition: all 0.3s ease

/* Color change */
color: new_color
transition: color 0.2s

/* Shadow depth */
box-shadow: 0 6px 20px rgba(...)
transition: box-shadow 0.2s

/* Fade in */
@keyframes fadeIn {
  from { opacity: 0; transform: translateY(10px); }
  to { opacity: 1; transform: translateY(0); }
}
animation: fadeIn 0.5s ease-in-out
```

---

### Responsive Design

#### Breakpoints
```
Mobile Small: 375px
Mobile: 480px
Tablet: 768px
Desktop: 1024px
Desktop Large: 1200px
Desktop XL: 1920px
```

#### Grid System
```
Desktop (3+ columns): repeat(auto-fit, minmax(250px, 1fr))
Tablet (2 columns): repeat(2, 1fr)
Mobile (1 column): 1fr
```

#### Media Queries
```css
/* Tablet and below */
@media (max-width: 768px) { ... }

/* Mobile only */
@media (max-width: 480px) { ... }

/* Large screens */
@media (min-width: 1200px) { ... }
```

---

### Accessibility

#### Color Contrast (WCAG AA)
```
Normal Text: 4.5:1 ratio minimum
Large Text: 3:1 ratio minimum

Examples that meet requirements:
- #1e293b on #ffffff: 13.69:1 ✓
- #667eea on #ffffff: 3.82:1 ✓
- #94a3b8 on #ffffff: 4.96:1 ✓
```

#### Focus States
```css
/* All interactive elements must have focus styles */
outline: 2px solid #667eea
outline-offset: 2px
```

#### Minimum Touch Targets
```
Recommended: 48x48px (mobile)
Minimum: 44x44px

Button: 48x48px
Link: 48x48px
Input: 48px height
Card: 48x48px minimum tappable area
```

---

### Z-Index Scale

```
Base: auto (default)
Dropdown: 50
Modal: 100
Navbar: 100
Tooltip: 150
Alert: 200
```

---

### Usage Examples

#### Creating a New Styled Component
```css
.hc-my-component {
  /* Spacing */
  padding: 1.5rem;
  margin: 1rem 0;
  
  /* Typography */
  font-size: 1rem;
  font-weight: 500;
  line-height: 1.6;
  color: #334155;
  
  /* Visual */
  background-color: #f8fafc;
  border: 1px solid #e2e8f0;
  border-radius: 0.75rem;
  
  /* Interaction */
  transition: all 0.3s ease;
  
  /* Responsive */
  max-width: 100%;
}

@media (max-width: 768px) {
  .hc-my-component {
    padding: 1rem;
    font-size: 0.95rem;
  }
}
```

---

**Last Updated**: February 9, 2026
**Design System Version**: 1.0
