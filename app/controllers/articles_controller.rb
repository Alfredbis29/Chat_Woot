class ArticlesController < ApplicationController
  def show
    @slug = params[:slug]
    @article = get_article(@slug)
    @related_articles = get_related_articles(@slug, @article[:category])
    @reading_time = calculate_reading_time(@article[:content])
  end

  private

  def get_article(slug)
    articles = {
      'create-first-inbox' => {
        title: 'Create your first inbox',
        content: 'Learn how to set up your first inbox in ChatWoot. You can connect email, website chat, or social media channels to start receiving messages from your customers.',
        category: 'Getting Started',
        tags: ['Setup', 'Inbox', 'Channels']
      },
      'invite-team' => {
        title: 'Invite your team',
        content: 'Add team members to your ChatWoot account, configure roles and permissions, and start collaborating on customer conversations. Team collaboration is key to providing excellent customer support.',
        category: 'Getting Started',
        tags: ['Team', 'Collaboration', 'Permissions']
      },
      'setup-automation' => {
        title: 'Set up automation',
        content: 'Automate repetitive tasks using rules and canned responses. Save time and ensure consistent responses across your team. Set up triggers based on keywords, time, or other conditions.',
        category: 'Getting Started',
        tags: ['Automation', 'Rules', 'Efficiency']
      },
      'reports-analytics' => {
        title: 'Reports & Analytics',
        content: 'Understand your team performance and conversation trends. Track response times, resolution rates, and customer satisfaction metrics to improve your support operations.',
        category: 'Popular Topics',
        tags: ['Analytics', 'Metrics', 'Performance']
      },
      'integrations' => {
        title: 'Integrations',
        content: 'Connect ChatWoot with the tools you already use. Integrate with CRM systems, help desk software, and other business tools to streamline your workflow.',
        category: 'Popular Topics',
        tags: ['Integrations', 'CRM', 'Tools']
      },
      'security-privacy' => {
        title: 'Security & Privacy',
        content: 'Learn how ChatWoot protects your data and how to configure access controls. We take security seriously and provide enterprise-grade encryption and compliance features.',
        category: 'Popular Topics',
        tags: ['Security', 'Privacy', 'Compliance']
      }
    }
    articles[slug] || { title: 'Article Not Found', content: 'The article you are looking for does not exist.', category: 'Error' }
  end

  def get_related_articles(current_slug, category)
    all_articles = {
      'create-first-inbox' => { slug: 'create-first-inbox', title: 'Create your first inbox', category: 'Getting Started' },
      'invite-team' => { slug: 'invite-team', title: 'Invite your team', category: 'Getting Started' },
      'setup-automation' => { slug: 'setup-automation', title: 'Set up automation', category: 'Getting Started' },
      'reports-analytics' => { slug: 'reports-analytics', title: 'Reports & Analytics', category: 'Popular Topics' },
      'integrations' => { slug: 'integrations', title: 'Integrations', category: 'Popular Topics' },
      'security-privacy' => { slug: 'security-privacy', title: 'Security & Privacy', category: 'Popular Topics' }
    }
    all_articles.select { |slug, article| slug != current_slug && article[:category] == category }.values.take(2)
  end

  def calculate_reading_time(content)
    # Average reading speed is 200-250 words per minute
    words = content.split(/\s+/).length
    minutes = (words / 200.0).ceil
    minutes < 1 ? 1 : minutes
  end
end
