-------------------------------------------------
-- AE2 auto craft 'Pure *** Crystal' 自動生成用プログラム
-- 要求最大64個ver
--
-- Creater 'wusagi24'
-------------------------------------------------

local material_slot = 1
local product_slot = 16
local get_item = nil
local crystal_seed_flg = false

print("ac-pure-crystal start")

while true do
	print("wait...")

-- インベントリにアイテムが入るのを待つ
	local evt = os.pullEvent("turtle_inventory")
-- インベントリにアイテムが入る
	print("change inventory")

	repeat

--		レッドストーン信号を前面に発信する
		print("redstone pulse ON")
		rs.setOutput('front', true)

--		素材スロットのアイテムを真下にドロップする　[*]
		print("drop material item")
		turtle.select(material_slot)
		turtle.dropDown(1)

--		完成品スロットに移動
		turtle.select(product_slot)

		repeat
--			一定時間待機する
			sleep(10)

--			真下のアイテムを完成品スロットに拾う
			if turtle.suckDown() then

--				完成品スロットのアイテム名取得
				get_item = turtle.getItemDetail()

				if get_item.name == 'appliedenergistics2:item.ItemMultiMaterial' and get_item.damage >= 10 and get_item.damage <= 12 then
--					取得アイテムがPureCrystal
					print("get Pure Crystal")
					crystal_seed_flg = false
				elseif get_item.name == 'appliedenergistics2:item.ItemCrystalSeed' then
--					取得アイテムがCrystalSeed
					print("get Crystal Seed")
					crystal_seed_flg = true
					print("re drop")
					turtle.dropDown()
				else
--					取得アイテムがその他
					print("get etc item")
					crystal_seed_flg = false
				end
			end
		until not crystal_seed_flg

--		アイテムを前面に送り出す
		print("return get item")
		turtle.drop()

--		レッドストーン信号を停止する
		print("redstone pulse OFF")
		rs.setOutput('front', false)

--	素材スロットにまだアイテムセットがあれば[*] に戻る
	until turtle.getItemCount(material_slot) <= 0
	print("end craft")

	sleep(1)
-- 待機状態に戻る
end