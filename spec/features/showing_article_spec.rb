require "rails_helper"

  RSpec.feature "Showing an Article" do

    before do
      @article = Article.create(title: "The latestt article", body: "Body of first article")
    end

  scenario "Display individual article" do
    visit "/"

    click_link @article.title

    expect(page).to have_content(@article.title)
    expect(page).to have_content(@article.title)
    expect(current_path).to eq(article_path(@article))
  end
end