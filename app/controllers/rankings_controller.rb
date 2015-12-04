class RankingsController < ApplicationController
    
    def want
        ids = Want.group(:item_id).order('count_item_id DESC').limit(10).count('item_id').keys
        @want_ranking_items = Item.find(ids).sort_by{|i| ids.index(i.id)}
    end
    
    def have
        ids = Have.group(:item_id).order('count_item_id DESC').limit(10).count('item_id').keys
        @have_ranking_items = Item.find(ids).sort_by{|i| ids.index(i.id)}
    end
end
