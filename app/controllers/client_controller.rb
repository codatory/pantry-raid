class ClientController < ApplicationController
    def form
        @categories = Category.all.includes(:items)
    end

    def submit
        @pl = PickList.create(
            name: params[:name]
        )
        params.each do |name,value|
            m = name.match(/_item_(\d+)/)
            if m && value == "1"
                @pl.pick_list_items.create(
                    item_id: m[1]
                )
            end
        end
        redirect_to controller: "client", action: "show", id: @pl
    end

    def show
        @pl = PickList.find(params[:id])
    end
end
