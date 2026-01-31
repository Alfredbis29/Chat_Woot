class ArticlesController < ApplicationController
  def show
    @slug = params[:slug]
    @article = get_article(@slug)
  end

  private

  def get_article(slug)
    articles = {
      'create-first-inbox' => {
        title: 'Create your first inbox',
        content: 'Learn how to set up your first inbox in ChatWoot. You can connect email, website chat, or social media channels to start receiving messages from your customers.',
        category: 'Getting Started'
      },
      'invite-team' => {
        title: 'Invite your team',
        content: 'Add team members to your ChatWoot account, configure roles and permissions, and start collaborating on customer conversations. Team collaboration is key to providing excellent customer support.',
        category: 'Getting Started'
      },
      'setup-automation' => {
        title: 'Set up automation',
        content: 'Automate repetitive tasks using rules and canned responses. Save time and ensure consistent responses across your team. Set up triggers based on keywords, time, or other conditions.',
        category: 'Getting Started'
      },
      'reports-analytics' => {
        title: 'Reports & Analytics',
        content: 'Understand your team performance and conversation trends. Track response times, resolution rates, and customer satisfaction metrics to improve your support operations.',
        category: 'Popular Topics'
      },
      'integrations' => {
        title: 'Integrations',
        content: 'Connect ChatWoot with the tools you already use. Integrate with CRM systems, help desk software, and other business tools to streamline your workflow.',
        category: 'Popular Topics'
      },
      'security-privacy' => {
        title: 'Security & Privacy',
        content: 'Learn how ChatWoot protects your data and how to configure access controls. We take security seriously and provide enterprise-grade encryption and compliance features.',
        category: 'Popular Topics'
      }
    }
    articles[slug] || { title: 'Article Not Found', content: 'The article you are looking for does not exist.', category: 'Error' }
  end
end
