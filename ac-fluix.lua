-------------------------------------------------
-- AE2 auto craft 'fluix crystal' 自動生成用プログラム
--
-- creater 'wusagi24'
-------------------------------------------------

local material_1_slot = 1
local material_2_slot = 2
local material_3_slot = 3

local product_slot = 16

while true do

-- インベントリにアイテムが入るのを待つ
	local evt = os.pullEvent("turtle_inventory")
-- インベントリにアイテムが入る
	print("change inventory")
	print()

-- インベントリに素材がある程度搬入されるまで待つ
	-- sleep(3)

	repeat

--		素材スロットのアイテムを32セット真下にドロップする　[*]
		turtle.select(material_1_slot)
		turtle.dropDown(1)
		turtle.select(material_2_slot)
		turtle.dropDown(1)
		turtle.select(material_3_slot)
		turtle.dropDown(1)

--		一定時間待機する
		sleep(4)

--		完成品スロットに移動
		turtle.select(product_slot)

--		真下のアイテムを完成品スロットに拾う
		while turtle.suckDown() do
--			完成品スロットのアイテムを正面に送り出す
			turtle.drop()
		end

--	素材スロットにまだアイテムセットがあれば[*] に戻る
	until turtle.getItemCount(material_1_slot) <= 0

-- 待機状態に戻る
end