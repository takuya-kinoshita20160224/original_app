require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end
  
  describe '商品新規登録' do
    context '商品が登録できる時' do
      it 'name,buy_date,limit_dateがあれば登録できる' do
        expect(@item).to be_valid
      end
      it 'textは空でも登録できる' do
        @item.text = nil
        expect(@item).to be_valid
      end
    end
    context '商品が登録できない時' do
      it 'nameが空だと登録できない' do
        @item.name = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end
      it 'buy_dateが空だと登録できない' do
        @item.buy_date = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Buy date can't be blank")
      end
      it 'limit_dateが空だと登録できない' do
        @item.limit_date = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Limit date can't be blank")
      end
    end
  end
end
