-- 提取特征
-- 1. user features
--		user_received_counts					用户领取优惠券次数
-- 		user_none_consume_counts				用户获得优惠券但没有消费的次数
-- 		user_coupon_consume_counts 				用户获得优惠券并核销次数
-- 		user_coupon_consume_rate				用户领取优惠券后进行核销率
--		user_coupon_discount_floor_50_rate		用户满0~50减的优惠券核销率
--		user_coupon_discount_floor_200_rate		用户满50~200减的优惠券核销率
--		user_coupon_discount_floor_500_rate		用户满200~500减的优惠券核销率
--		user_coupon_discount_floor_others_rate	用户其他满减的优惠券核销率
--		user_consume_discount_floor_50_rate		用户核销满0~50减的优惠券占所有核销优惠券的比重
--		user_consume_discount_floor_200_rate	用户核销50~200减的优惠券占所有核销优惠券的比重
--		user_consume_discount_floor_500_rate	用户核销200~500减的优惠券占所有核销优惠券的比重
--		user_consume_discount_floor_others_rate	用户核销其他满减的优惠券占所有核销优惠券的比重
--		user_average_discount_rate				用户核销优惠券的平均消费折率
--		user_minimum_discount_rate				用户核销优惠券的最低消费折率
--		user_maximum_discount_rate				用户核销优惠券的最高消费折率
--		user_consume_merchants					用户核销过优惠券的不同商家数量
--		user_consume_merchants_rate				用户核销过优惠券的不同商家数量占所有不同商家的比重
--		user_merchant_average_consume_counts	用户平均核销每个商家多少张优惠券
--		user_consume_coupons					用户核销过的不同优惠券数量
--		user_consume_coupons_rate				用户核销过的不同优惠券数量占所有不同优惠券的比重
--  	user_average_coupon_consume_counts		用户平均每种优惠券核销多少张
--		user_average_consume_time_rate			用户核销优惠券的平均时间率
--		user_consume_average_distance			用户核销优惠券中的平均用户-商家距离
--		user_consume_minimum_distance			用户核销优惠券中的最小用户-商家距离
--		user_consume_maximum_distance			用户核销优惠券中的最大用户-商家距离
--	user online features
--		user_online_action_counts				用户线上操作次数
--		user_online_action_0_rate				用户线上点击率	
--		user_online_action_1_rate				用户线上购买率
--		user_online_action_2_rate				用户线上领取率
--		user_online_none_consume_counts			用户线上不消费次数
--		user_online_coupon_consume_counts		用户线上优惠券核销次数
--		user_online_coupon_consume_rate			用户线上优惠券核销率
--	user online-offline features
--		user_offline_none_consume_rate			用户线下不消费次数占线上线下总的不消费次数的比重
--		user_offline_coupon_consume_rate		用户线下的优惠券核销次数占线上线下总的优惠券核销次数的比重
--		user_offline_rate 						用户线下领取的记录数量占总的记录数量的比重
--
-- 2. merchant features
--		merchant_received_counts				商家优惠券被领取次数
--		merchant_none_consume_counts			商家优惠券被领取后不核销次数
--		merchant_coupon_consume_counts			商家优惠券被领取后核销次数
--		merchant_coupon_consume_rate			商家优惠券被领取后核销率
--		merchant_average_discount_rate			商家优惠券核销的平均消费折率
--		merchant_minimum_discount_rate			商家优惠券核销的最低消费折率
--		merchant_maximum_discount_rate			商家优惠券核销的最高消费折率
--		merchant_consume_users					核销商家优惠券的不同用户数量
--		merchant_consume_users_rate				核销商家优惠券的不同用户数量占领取不同的用户比重
-- 		merchant_user_average_consume_counts	商家优惠券平均每个用户核销多少张
--		merchant_consume_coupons				商家被核销过的不同优惠券数量
--   	merchant_consume_coupons_rate			商家被核销过的不同优惠券数量占所有领取过的不同优惠券数量的比重
--		merchant_average_coupon_consume_counts	商家平均每种优惠券核销多少张
--		merchant_average_consume_time_rate		商家被核销优惠券的平均时间率
--		merchant_consume_average_distance		商家被核销优惠券中的平均用户-商家距离
--		merchant_consume_maximum_distance		商家被核销优惠券中的最大用户-商家距离
--		merchant_consume_minimum_distance		商家被核销优惠券中的最小用户-商家距离
--		
-- 3. user-merchant features
--		user_merchant_coupon_counts				用户领取商家的优惠券次数
--		user_merchant_none_consume_counts		用户领取商家的优惠券后不核销次数
--		user_merchant_coupon_consume_counts		用户领取商家的优惠券后核销次数
--		user_merchant_coupon_consume_rate		用户领取商家的优惠券后核销率
--		user_none_consume_merchant_rate			用户对每个商家的不核销次数占用户总的不核销次数的比重
--		user_coupon_consume_merchant_rate		用户对每个商家的优惠券核销次数占用户总的核销次数的比重
--		user_none_consume_merchant_rate			用户对每个商家的不核销次数占商家总的不核销次数的比重
--		user_coupon_consume_merchant_rate		用户对每个商家的优惠券核销次数占商家总的核销次数的比重
--		
-- 4. coupon features
--		coupon_type								优惠券类型(直接优惠为0, 满减为1)
--		coupon_discount 						优惠券折率
--		coupon_discount_floor 					满减优惠券的最低消费
--		coupon_history_counts 					历史出现次数
--      coupon_history_consume_counts			历史核销次数
--		coupon_history_consume_rate         	历史核销率
--		coupon_history_consume_time_rate		历史核销时间率
--		day_of_week								领取优惠券是一周的第几天
-- 		day_of_month							领取优惠券是一月的第几天
--	user_coupon_history_features
--		user_coupon_history_received_counts		历史上用户领取该优惠券次数
--		user_coupon_history_consume_counts		历史上用户消费该优惠券次数
--		user_coupon_history_consume_rate		历史上用户对该优惠券的核销率
--		
-- 5. other features
--		user_received_counts					用户领取的所有优惠券数目
--		user_received_coupon_counts				用户领取的特定优惠券数目
--		user_later_received_coupons 			用户此次之后领取的所有优惠券数目
--		user_later_received_coupon_counts		用户此次之后领取的特定优惠券数目
--		merchant_received_counts				商家被领取的优惠券数目
--		merchant_received_coupon_counts			商家被领取的特定优惠券数目
--  	user_merchant_received_counts			用户领取特定商家的优惠券数目
--		user_merchants 							用户领取的不同商家数目
--		merchant_users 							商家被多少不同用户领取的数目
--  	this_day_user_received_counts			用户当天领取的优惠券数目
--  	this_day_user_received_coupon_counts	用户当天领取的特定优惠券数目
--		user_coupons							用户领取的所有优惠券种类数目
--		merchant_coupons						商家发行的所有优惠券种类数目
--		user_last_received_coupons 				用户此次之前领取的所有优惠券数目
--		user_last_received_coupon_counts		用户此次之前领取的特定优惠券数目
--		user_last_coupon_type					用户领取的上一张优惠券类型
--		user_last_date_diff						用户上一次领取的时间距离
--		user_last_same_coupon					用户领取的上一张优惠券是否与当前同种
--		user_last_high_discount					用户领取的上一张优惠券折扣是否高于现在
--		user_last_high_consume_rate				用户领取的上一张优惠券的历史核销率是否高于现在
--		user_later_coupon_type					用户领取的下一张优惠券类型
--		user_later_date_diff					用户下一次领取的时间距离
--		user_later_same_coupon					用户领取的下一张优惠券是否与当前同种
--		user_later_high_discount				用户领取的下一张优惠券折扣是否高于现在
--		user_later_high_consume_rate			用户领取的下一张优惠券的历史核销率是否高于现在

--		user_consume_counts 					用户所有消费次数(正常消费+优惠券消费)
--		user_common_consume_counts				用户正常消费次数(不使用优惠券消费)
--		user_common_consume_rate				用户正常消费占所有消费的比重
--		merchant_consume_counts 				商家所有消费次数
--  	merchant_common_consume_counts			商家正常消费次数
--		merchant_common_consume_rate			商家正常消费率
-- 		user_merchant_consume_counts 			用户消费商家次数
--		user_merchant_common_counts 			用户正常消费商家次数
-- 		user_merchant_common_rate 				用户商家正常消费率
