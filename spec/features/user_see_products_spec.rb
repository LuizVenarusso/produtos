require 'rails_helper'

feature 'products' do
  scenario 'success' do
    category = create(:product_category)
    product = Product.create(name: 'Hospedagem', description: 'Hospedagem nova',
                             product_key: 'HOP123', product_category: category)

    visit root_path
    click_on 'Produtos'

    expect(page).to have_content(product.name)
    expect(page).to have_content(product.description)
    expect(page).to have_content(product.product_key)
    expect(page).to have_content(product.product_category.name)
    expect(page).not_to have_content('Não há produtos cadastrados!')
  end
  scenario 'show error message when dont have product' do
    visit root_path
    click_on 'Produtos'

    expect(page).to have_content('Não há produtos cadastrados!')
  end
  scenario 'see two products in the page' do
    category = create(:product_category)
    product = Product.create(name: 'Hospedagem', description: 'Hospedagem',
                             product_key: 'HOP123', product_category: category)
    product2 = Product.create(name: 'Hospedagem', description: 'Hospedagem new',
                              product_key: 'HOP123', product_category: category)

    visit root_path
    click_on 'Produtos'

    expect(page).to have_content(product.name)
    expect(page).to have_content(product.description)
    expect(page).to have_content(product.product_key)
    expect(page).to have_content(product.product_category.name)
    expect(page).to have_content(product2.name)
    expect(page).to have_content(product2.description)
    expect(page).to have_content(product2.product_key)
    expect(page).to have_content(product2.product_category.name)
    expect(page).not_to have_content('Não há produtos cadastrados!')
  end
end
