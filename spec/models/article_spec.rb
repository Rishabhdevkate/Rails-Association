require 'rails_helper'

RSpec.describe Article, type: :model do
  context 'when article is created' do
    let(:article) {build :article}

    it 'article is valid' do
      article.valid? == true
    end
  end
end
