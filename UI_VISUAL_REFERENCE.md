# UI Components Visual Reference

## Navigation Bar

### Desktop Layout
```
┌─────────────────────────────────────────────────────────────┐
│  ChatWoot  │  Home  │  Categories  │  Search  │  Contact  │
└─────────────────────────────────────────────────────────────┘
```

### Mobile Layout
```
┌──────────────────────────────────┐
│  ChatWoot              ☰          │
├──────────────────────────────────┤
│  › Home                          │
│  › Categories                    │
│  › Search                        │
│  › Contact                       │
└──────────────────────────────────┘
```

### Colors
- Background: White (#ffffff)
- Logo: Gradient (blue #667eea to purple #764ba2)
- Text: Dark slate (#334155)
- Border: Light shadow

---

## Header Section

### Layout
```
┌──────────────────────────────────────────────┐
│  ← Back to Help Center                       │
│                                              │
│        Your Page Title Here                  │
│                                              │
│  Your subtitle or description text           │
│                                              │
│  ┌─────────────────────────────────────┐    │
│  │ 🔍 Search here...        [Search]   │    │
│  └─────────────────────────────────────┘    │
└──────────────────────────────────────────────┘
```

### Colors
- Background: Gradient purple (#667eea) to pink (#764ba2)
- Text: White
- Title: 3rem, bold (700)
- Subtitle: 1.125rem, medium (500)

---

## Card Component

### Default State
```
┌─────────────────────────────────────┐
│                                     │
│  Card Title                         │
│                                     │
│  This is the card description that  │
│  explains what the card is about.   │
│                                     │
│  Read more →                        │
│                                     │
└─────────────────────────────────────┘
```

### Hover State
```
┌─────────────────────────────────────┐  ↑ Lifts up
│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│  Accent bar appears
│                                     │  Border lightens
│  Card Title                         │  Shadow deepens
│                                     │
│  This is the card description that  │
│  explains what the card is about.   │
│                                     │
│  Read more →                        │
│                                     │
└─────────────────────────────────────┘
```

### Styling
- Padding: 1.5rem
- Border Radius: 0.75rem
- Border: 1px solid light gray
- Shadow: Subtle
- Hover: Transform up 4px, deeper shadow, accent border

---

## Button Styles

### Primary Button
```
┌─────────────────────────────┐
│    Get Started →            │
└─────────────────────────────┘
```
- Background: Gradient (blue → purple)
- Color: White
- Padding: 0.75rem 1.5rem
- Shadow: Medium

### Secondary Button
```
┌─────────────────────────────┐
│    Learn More               │
└─────────────────────────────┘
```
- Background: Light gray (#f1f5f9)
- Color: Dark gray (#334155)
- Border: 1px light gray
- No shadow

---

## Grid Layout

### Desktop (3 columns)
```
┌──────────────┐  ┌──────────────┐  ┌──────────────┐
│   Card 1     │  │   Card 2     │  │   Card 3     │
└──────────────┘  └──────────────┘  └──────────────┘
┌──────────────┐  ┌──────────────┐  ┌──────────────┐
│   Card 4     │  │   Card 5     │  │   Card 6     │
└──────────────┘  └──────────────┘  └──────────────┘
```

### Tablet (2 columns)
```
┌──────────────────┐  ┌──────────────────┐
│    Card 1        │  │    Card 2        │
└──────────────────┘  └──────────────────┘
┌──────────────────┐  ┌──────────────────┐
│    Card 3        │  │    Card 4        │
└──────────────────┘  └──────────────────┘
```

### Mobile (1 column)
```
┌────────────────────────────┐
│       Card 1               │
└────────────────────────────┘
┌────────────────────────────┐
│       Card 2               │
└────────────────────────────┘
┌────────────────────────────┐
│       Card 3               │
└────────────────────────────┘
```

---

## Article View

### Layout
```
┌───────────────────────────────────────────────────────┐
│ ← Back to Help Center                                 │
│                                                       │
│              Article Title Here                       │
│                                                       │
│ [Category Tag]  ⏱️ 5 min read  [Related Tag]         │
└───────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────┐
│                                                     │
│ Home / Category / Article Title                     │
│                                                     │
│ Article content with proper typography, spacing,   │
│ and formatting. Includes headings, paragraphs,      │
│ lists, code blocks, and blockquotes.                │
│                                                     │
│ ## Heading 2                                        │
│                                                     │
│ More content here with good readability.            │
│                                                     │
│ - List item 1                                       │
│ - List item 2                                       │
│                                                     │
│ ### Heading 3                                       │
│                                                     │
│ More structured content with clear hierarchy.       │
│                                                     │
│ ┌─────────────────────────────────────┐            │
│ │ code_block()                        │            │
│ │   returns formatted output          │            │
│ └─────────────────────────────────────┘            │
│                                                     │
│ ┌─────────────────────────────────────┐            │
│ │ Important quote or key point        │            │
│ │ that users should remember          │            │
│ └─────────────────────────────────────┘            │
│                                                     │
│ ═══════════════════════════════════════════════════ │
│                                                     │
│ Was this article helpful?                           │
│ [👍 Yes]  [👎 No]                                  │
│                                                     │
│ ═══════════════════════════════════════════════════ │
│                                                     │
│ Related Articles                                    │
│                                                     │
│ • Related Article 1                                 │
│   Category Name                                     │
│                                                     │
│ • Related Article 2                                 │
│   Category Name                                     │
│                                                     │
│ • Related Article 3                                 │
│   Category Name                                     │
│                                                     │
└─────────────────────────────────────────────────────┘
```

---

## Search Results Page

### With Query
```
┌─────────────────────────────────────────────────────┐
│ ← Back                                              │
│        Search Results                               │
│ Searching for: "query"                              │
│                                                     │
│ ┌────────────────────────────────────────────────┐ │
│ │ 🔍 search...                      [Search]     │ │
│ └────────────────────────────────────────────────┘ │
└─────────────────────────────────────────────────────┘

Category Suggestions:
┌──────────────┐  ┌──────────────┐  ┌──────────────┐
│ Getting      │  │ Features &   │  │ Integrations │
│ Started      │  │ Setup        │  │              │
└──────────────┘  └──────────────┘  └──────────────┘
```

### Empty State
```
┌─────────────────────────────────────────────────────┐
│                      🔍                             │
│                                                     │
│          Start Searching                            │
│                                                     │
│  Enter a search term above to find the articles     │
│  you're looking for.                                │
│                                                     │
│  Or [browse categories] to explore our help        │
│  center.                                            │
│                                                     │
└─────────────────────────────────────────────────────┘
```

---

## Footer

### Layout
```
┌────────────────────────────────────────────────────┐
│  ChatWoot Help Center  │  Quick Links  │  Connect  │
│  Your guide to using   │  - Home       │  - GitHub │
│  ChatWoot effectively. │  - Categories │  - Twitter│
│                        │  - Search     │  - Discord│
│                        │  - Contact    │           │
├────────────────────────────────────────────────────┤
│  Can't find what you're looking for? Contact       │
│  support.                                          │
│                                                    │
│  © 2026 ChatWoot. All rights reserved.             │
│  Privacy Policy | Terms of Service                 │
└────────────────────────────────────────────────────┘
```

### Colors
- Background: Dark slate (#1e293b)
- Text: Light gray (#cbd5e1)
- Links: Medium gray (#94a3b8) → white on hover
- Accent: Blue (#60a5fa)

---

## Form Elements

### Search Input
```
┌─────────────────────────────────────────────────────┐
│ 🔍 Search for articles, topics, or questions...    │
└─────────────────────────────────────────────────────┘
```

- Padding: 1rem 1.25rem
- Border Radius: 0.5rem
- Shadow: Subtle on normal, deeper on focus
- Focus: Outline glow effect

---

## Animations

### Hover Lift Effect
```
Static:              Hover:
┌────────────┐       ┌────────────┐
│   Card     │       │   Card     │  ↑ Moves up
│            │  →    │            │
└────────────┘       └────────────┘
                     Shadow deepens
```

### Color Transition
```
Default:             Hover:
┌────────────┐       ┌────────────┐
│  Read →    │  →    │  Read →    │  (Color changes)
│ (Blue)     │       │ (Darker)   │
└────────────┘       └────────────┘
```

### Accent Bar Animation
```
Default:             Hover:
|                    ██ (Appears)
┌────────────┐       ┌────────────┐
│   Card     │  →    │   Card     │
│            │       │            │
└────────────┘       └────────────┘
```

---

## Responsive Breakpoints

### Screen Sizes
| Device | Width | Grid | Navbar |
|--------|-------|------|--------|
| Mobile | 375px | 1 col | Hamburger |
| Small Mobile | 480px | 1 col | Hamburger |
| Tablet | 768px | 2 cols | Full |
| Desktop | 1024px | 3 cols | Full |
| Large Desktop | 1920px | 3 cols | Full |

---

## Color Reference

### Primary Gradient
```
Start: #667eea (Blue)
End: #764ba2 (Purple)
Angle: 135deg
```

### Text Colors
```
Primary: #1e293b (Dark slate)
Secondary: #64748b (Medium slate)
Tertiary: #94a3b8 (Light slate)
Link: #667eea (Blue) → #764ba2 (Purple) on hover
```

### Background Colors
```
Page: #f8fafc (Light)
Surface: #ffffff (White)
Secondary: #f1f5f9
Border: #e2e8f0
Dark: #1e293b (Footer)
```

---

## Typography Hierarchy

### Sizes
```
H1 (Display):   3rem (48px)      - Page titles
H2 (Large):     1.75rem (28px)   - Section titles
H3 (Medium):    1.375rem (22px)  - Subsection titles
Body:           1.125rem (18px)  - Article text
Small:          0.95rem (15px)   - Secondary text
Tiny:           0.75rem (12px)   - Tags, meta
```

### Weights
```
Regular: 400  - Body text
Medium: 500   - Emphasis
Semi-Bold: 600 - Headings
Bold: 700     - Main titles
```

---

**This visual reference helps you understand the UI structure and can be used as a guide for modifications.**
