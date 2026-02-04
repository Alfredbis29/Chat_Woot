class CategoriesController < ApplicationController
  def index
    @categories = {
      'Getting Started' => [
        { slug: 'create-first-inbox', title: 'Create your first inbox' },
        { slug: 'invite-team', title: 'Invite your team' },
        { slug: 'setup-automation', title: 'Set up automation' }
      ],
      'Popular Topics' => [
        { slug: 'reports-analytics', title: 'Reports & Analytics' },
        { slug: 'integrations', title: 'Integrations' },
        { slug: 'security-privacy', title: 'Security & Privacy' }
      ]
    }
  end
end
