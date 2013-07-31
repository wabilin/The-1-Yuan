The One Yuan
============
A program to compute minmum cost shopping in convenience stores.
這是一個用以計算如何在便利商店中以最少的錢買東西的程式

Background
----------
In some convenience stores inside Taiwan's schools, the price to student is 90% off.
In case that you buy something cost NT$ 18, it'll be (18 * 0.9) = 16.2 = 16.

If you buy 2 breads, which cost NT$ 16 for one.
It'll be (16 * 2 * 0.9) = 28.8 = 29 (NT$) 
But if you check twice, it'll be:
  (16 * 0.9) + (16 * 0.9) = 14.4 + 14.4 = 14 + 14 = 28(NT$)

This progarm helps you to get the cheapest price.


在台灣的學校便利商店, 通常會給予學生九折(每家不同 大部分是九折或八九折)優惠
同時當他們遇到小數點的時候, 多半採取四捨五入制
所以就會產生以不同組合購買時, 會有不同的總價之情形

舉例而言, 當你買了兩個16元的麵包
如果你一次付清, 那就是 16*2*0.9 = 28.8 = 29 元
但如果你分開結的話, 那會變成 16 * 0.9 = 14.4 = 14, 14 * 2 = 28 元

而這個程式就是用來幫助您在便利商店中以最便宜的價格買到東西


TODO
----
- 改進演算法, 以改善數量大時的效率問題
- 增加個別商品的特殊折扣方案