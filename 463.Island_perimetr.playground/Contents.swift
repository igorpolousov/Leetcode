import UIKit

/*
 
 
 Code

 Testcase
 Testcase

 Test Result
 463. Island Perimeter

 You are given row x col grid representing a map where grid[i][j] = 1 represents land and grid[i][j] = 0 represents water.

 Grid cells are connected horizontally/vertically (not diagonally). The grid is completely surrounded by water, and there is exactly one island (i.e., one or more connected land cells).

 The island doesn't have "lakes", meaning the water inside isn't connected to the water around the island. One cell is a square with side length 1. The grid is rectangular, width and height don't exceed 100. Determine the perimeter of the island.
 
 Input: grid = [[0,1,0,0],[1,1,1,0],[0,1,0,0],[1,1,0,0]]
 Output: 16
 Explanation: The perimeter is the 16 yellow stripes in the image above.
 Example 2:

 Input: grid = [[1]]
 Output: 4
 Example 3:

 Input: grid = [[1,0]]
 Output: 4

 */

let grid1 = [[0,1,0,0],[1,1,1,0],[0,1,0,0],[1,1,0,0]]
let grid2 = [[1]]
let grid3 = [[1,0]]

func islandPerimetr(_ grid: [[Int]]) -> Int {
    
    /*
     Для примера построения кода используем grid1 размером 4х4 клетки.
     1 элемент массива представляет первую(верхнюю) строку из 4-х клеток
     2 вторая строка сверху
     3 третья строка сверху
     4 четвертая строка сверху
     */
    
    var perimeter = 0
    
    // Берем 0 элемент массива grid, который является массивом Int [0,1,0,0]
          for i in 0..<grid.count {
              // из массива [0,1,0,0] так же берем 0 элемент
              for j in 0..<grid[i].count {
                  //
                  if grid[i][j] == 1 {
                      // предполагаем что соседей нет и делаем периметр = 4
                      perimeter += 4
                      // проверяем есть ли сосед снизу
                      if i > 0 && grid[i - 1][j] == 1 {
                          perimeter -= 2
                      }
                      // проверяем есть ли сосед сверху
                      if j > 0 && grid[i][j - 1] == 1 {
                          perimeter -= 2
                      }
                  }
              }
          }
          return perimeter
}
