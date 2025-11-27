import UIKit

/*

 121. Best Time to Buy and Sell Stock
 Easy
 Topics
 premium lock icon
 Companies
 You are given an array prices where prices[i] is the price of a given stock on the ith day.

 You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

 Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.

  

 Example 1:

 Input: prices = [7,1,5,3,6,4]
 Output: 5
 Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
 Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.
 Example 2:

 Input: prices = [7,6,4,3,1]
 Output: 0
 Explanation: In this case, no transactions are done and the max profit = 0.
  

 Constraints:

 1 <= prices.length <= 10^5
 0 <= prices[i] <= 10^4
 */

let prices = [7,1,5,3,6,4]
let prices_1 = [1,2,3,4,5]


func maxProfit121(prices: [Int]) -> Int {
    var profit = 0
  
    // buy price
    var bp = prices[0]
    
    for item in prices {
        if (item - bp) <= 0 {
            bp = item
        } else if profit < item - bp {
            profit = item - bp
        }
    }
    return profit
}

//maxProfit(prices: prices)

func maxProfit(_ prices: [Int]) -> Int {
      var minPrice = Int.max
      var ans = 0
      
      for price in prices {
          minPrice = min(minPrice, price)
          ans = max(ans, price - minPrice)
      }
      
      return ans
      
  }

/*
 
 122. Best Time to Buy and Sell Stock II
 Medium

 Topics
 
 Companies
 You are given an integer array prices where prices[i] is the price of a given stock on the ith day.

 On each day, you may decide to buy and/or sell the stock. You can only hold at most one share of the stock at any time. However, you can sell and buy the stock multiple times on the same day, ensuring you never hold more than one share of the stock.

 Find and return the maximum profit you can achieve.

  

 Example 1:

 Input: prices = [7,1,5,3,6,4]
 Output: 7
 Explanation: Buy on day 2 (price = 1) and sell on day 3 (price = 5), profit = 5-1 = 4.
 Then buy on day 4 (price = 3) and sell on day 5 (price = 6), profit = 6-3 = 3.
 Total profit is 4 + 3 = 7.
 Example 2:

 Input: prices = [1,2,3,4,5]
 Output: 4
 Explanation: Buy on day 1 (price = 1) and sell on day 5 (price = 5), profit = 5-1 = 4.
 Total profit is 4.
 Example 3:

 Input: prices = [7,6,4,3,1]
 Output: 0
 Explanation: There is no way to make a positive profit, so we never buy the stock to achieve the maximum profit of 0.
 */

func maxProfit122(prices: [Int]) -> Int {
    guard !prices.isEmpty else {return 0}
    
    var profit = 0
    
    for i in 1..<prices.count {
        guard prices[i] > prices[i - 1] else {continue}
        
        profit += prices[i] - prices[i - 1]
    }
    
    return profit
}

//maxProfit122(prices: prices)


/*
 123. Best Time to Buy and Sell Stock III
 
 You are given an array prices where prices[i] is the price of a given stock on the ith day.

 Find the maximum profit you can achieve. You may complete at most two transactions.

 Note: You may not engage in multiple transactions simultaneously (i.e., you must sell the stock before you buy again).

  

 Example 1:

 Input: prices = [3,3,5,0,0,3,1,4]
 Output: 6
 Explanation: Buy on day 4 (price = 0) and sell on day 6 (price = 3), profit = 3-0 = 3.
 Then buy on day 7 (price = 1) and sell on day 8 (price = 4), profit = 4-1 = 3.
 Example 2:

 Input: prices = [1,2,3,4,5]
 Output: 4
 Explanation: Buy on day 1 (price = 1) and sell on day 5 (price = 5), profit = 5-1 = 4.
 Note that you cannot buy on day 1, buy on day 2 and sell them later, as you are engaging multiple transactions at the same time. You must sell before buying again.
 Example 3:

 Input: prices = [7,6,4,3,1]
 Output: 0
 Explanation: In this case, no transaction is done, i.e. max profit = 0.
 */

func maxProfit123(prices: [Int]) -> Int {
    
    var buy1 = Int.max
    var buy2 = Int.max
    
    var sell1 = 0
    var sell2 = 0
    
    for price in prices {
        buy1 = min(buy1, price)
        sell1 = max(sell1, price - buy1)
        
        buy2 = min(buy2, price - sell1)
        sell2 = max(sell2, price - buy2)
    
    }
    
    return sell2
}

maxProfit123(prices: prices)

/*
 Цикл задач на вопросы связанные с массивами. Эти задачи направлены на поиск суммы/разности  2-х чисел в массиве
 Исходоные данные:
 1. Имеем три задачи с номерами 121, 122, 123 - easy medium and hard
 2. Имеем исходный массив чисел Int
 
 Задача 121 - Дан массив в котором индекс в массиве - это номер дня и значение по индексу - это стоимость акции в этот день.
 
 В каждый день можно решать купить или продать акцию, за один день можно купить только одну акцию и выбрать день в будущем для продажи акции. Найти максимальную прибыль, которую можно получить от транзакции
 
 Цель - найти самую выгодную транзакцию и показать прибыль по ней. Другими словами найти максимальную разницу между двумя любыми числами в массиве соблюдая очередность чисел
 
 Задача 122 - выяснить какую максимальную прибыль можно получить
 
 Цель - найти все максимальные разницы числе в массиве 
 
 Задача 123 - можно выполнить только две транзакции
 
 Что объединяет эти три задачи?
 
 покупать за раз можно только одну акцию, перед покупкой новой нужно сначала продать предыдущую
 */

