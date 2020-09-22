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
      it '商品とUserが紐づいていないと登録できない' do
        @item.user = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Userを入力してください")
      end
      it 'nameが空だと登録できない' do
        @item.name = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("商品名を入力してください")
      end
      it 'buy_dateが空だと登録できない' do
        @item.buy_date = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("購入日を入力してください")
      end
      it 'limit_dateが空だと登録できない' do
        @item.limit_date = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("賞味(消費)期限を入力してください")
      end
    end
  end
end
