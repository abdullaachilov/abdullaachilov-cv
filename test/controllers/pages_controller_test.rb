require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "homepage returns success" do
    get root_path
    assert_response :success
  end

  test "homepage renders correct layout" do
    get root_path
    assert_select "h1", "Abdulla Achilov"
    assert_select "title", /Senior Software Engineer/
  end

  test "homepage includes contact information" do
    get root_path
    assert_select "a[href='mailto:im@abdullaachilov.com']"
    assert_select "a[href='https://t.me/abdullaachilov']"
    assert_select "a[href='https://github.com/abdullaachilov']"
  end

  test "homepage includes professional experience section" do
    get root_path
    assert_select "h2", /Professional Experience/i
    assert_select "h3", /Senior Software Engineer/
  end

  test "homepage includes notable projects" do
    get root_path
    assert_select "h2", /Notable Projects/i
    assert_select "h3", "Dishle"
    assert_select "h3", "TripWatchDeal"
    assert_select "h3", "ByZoneCraft"
    assert_select "h3", "Claude-Approver"
  end

  test "homepage includes structured data" do
    get root_path
    assert_select "script[type='application/ld+json']"
  end

  test "homepage includes meta tags for SEO" do
    get root_path
    assert_select "meta[name='description']"
    assert_select "meta[property='og:title']"
    assert_select "meta[name='twitter:card']"
  end

  test "homepage includes dark mode toggle" do
    get root_path
    assert_select "button[aria-label='Toggle dark mode']"
  end

  test "homepage includes print/PDF button" do
    get root_path
    assert_select "button[aria-label='Save as PDF']"
  end

  test "homepage includes analytics script" do
    get root_path
    assert_select "script[data-website-id]"
  end

  test "homepage sets cache headers" do
    get root_path
    assert_response :success
    assert_match(/max-age/, response.headers["Cache-Control"])
  end

  test "health check returns success" do
    get rails_health_check_path
    assert_response :success
  end
end
