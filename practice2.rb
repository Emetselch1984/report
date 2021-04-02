module FeaturesSpecHelper
  def switch_namespace(namespace)
    config = Rails.application.config.baukis2
    Capybara.app_host = "http://" + config[namespace][:host]
  end
end
FactoryBot.define do
  factory :home_address do

  end
  factory :work_address do

  end
end

FactoryBot.define do
  factory :customer do
    sequence(:email) {|n| "member#{}@example.jp"}
    association :home_address, strategy: :build
    association :work_address, strategy: :build
  end
end
FactoryBot.define do
  factory :customer do
    sequence(:email){|n|"member#{n}@example.jp" }
    association :home_address, strategy: :build
    association :work_address, strategy: :build
  end
end

require "rails_helper"
feature "職員による顧客管理" do
  include FeaturesSpecHelper
  let(:staff_member) {create(:staff_member) }
  let!(:customer) {create(:customer)}
  before do
    switch_namespace(:staff)
    login_as_staff_member(staff_member)
  end
  scenario "職員が顧客、自己住所、勤務先を更新する" do
    c
  end
end
require "rails_helper" do
  feature "職員による顧客管理" do
    include FeaturesSpecHelpre
    let(:staff_member){create(:staff_member)}
    let!(:customer){create(:customer)}
    before do
      switch_namespace(:staff)
      login_as_staff_member(staff_member)
    end
    scenario "職員が顧客、自宅住所、勤務先を更新する" do
      click_link "顧客管理"
      first("fieldset#home-address-fields")do
        fill_in "郵便番号",with: "9999999"
      end
    end
    click_button "更新"
    expect(customer.email).to eq("test@example.jp")
    expect(customer.home_address.postal_code).to eq("9999999")
    expect(customer.work_address.company_name).to eq("テスト")
  end
end