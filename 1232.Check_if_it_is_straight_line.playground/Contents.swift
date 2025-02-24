import UIKit

/*
 You are given an array coordinates, coordinates[i] = [x, y], where [x, y] represents the coordinate of a point. Check if these points make a straight line in the XY plane
 
 Input: coordinates = [[1,2],[2,3],[3,4],[4,5],[5,6],[6,7]]
 Output: true
 
 
 Input: coordinates = [[1,1],[2,2],[3,4],[4,5],[5,6],[7,7]]
 Output: false
 
 (y[i]−y[0])/(x[i]−x[0])=(y[1]−y[0])/(x[1]−x[0])
 
 */
// движутся обе координаты в точке  - изменение по X должно быть равно изменению по Y  second case
let coord = [[1,2],[2,3],[3,4],[4,5],[5,6],[6,7]]
let coord1 = [[1,1],[2,2],[3,4],[4,5],[5,6],[7,7]]
let coord11 = [[2,1],[4,2],[6,3]]

// движутся только одна координата в точке изменение по X или по Y отсутсвует first case
let coord2 = [[0,0],[0,1],[0,-1]] // частный случай
let coord3 = [[0,0],[1,0],[-1,0]]

let coord4 = [[1,2],[2,3],[3,5]]

func checkStraightLine(_ coordinates: [[Int]]) -> Bool {
    
    // (y[i]−y[0])/(x[i]−x[0])=(y[1]−y[0])/(x[1]−x[0]) - если не знаете эту формулу, то вывести её будет задачей не 5 минут точно
    
    let x0 = coordinates[0][0]
      let y0 = coordinates[0][1]
      let x1 = coordinates[1][0]
      let y1 = coordinates[1][1]
      for i in 2..<coordinates.count {
          let x = coordinates[i][0]
          let y = coordinates[i][1]
          if (x1 - x0) * (y - y0) != (x - x0) * (y1 - y0) {
              return false
          }
      }
      return true
  }


checkStraightLine(coord2)
