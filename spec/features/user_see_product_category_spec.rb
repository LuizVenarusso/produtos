require 'rails_helper'
feature 'product_category' do
   scenario 'success' do
     product_category = ProductCategory.create(name: 'Hospedagem', description: 'Domínio grátis e sites ilimitados')

     visit root_path
     click_on('Categoria')

     expect(page).to have_content(product_category.name)
   end

   scenario 'show error message when dont hanve category' do

     visit root_path
     click_on('Categoria')

     expect(page).to have_content('Não há categorias cadastradas!')
   end
end
