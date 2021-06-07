import Foundation

final class FillWithColor {
    
    func fillWithColor(_ image: [[Int]], _ row: Int, _ column: Int, _ newColor: Int) -> [[Int]] {
        if image.first == nil { return image }
        
        let rowCount = image.count
        let columnCount = image[0].count
        
        if (row < 0 || row >= rowCount || column < 0 || column >= columnCount) { return image }
        
        let oldColor = image[row][column]
        var mutatingImage = image
                
        let forward = column+1
        let back = column-1
        let up = row+1
        let down = row-1
        
        if forward < columnCount && image[row][forward] == oldColor {
            for forwards in forward..<columnCount {
                if (image[row][forwards] == oldColor){ mutatingImage[row][forwards] = newColor }
            }
        }
            
        if back >= 0 && image[row][back] == oldColor {
            for backs in 0...back {
                if (image[row][backs] == oldColor){ mutatingImage[row][backs] = newColor }
            }
        }
        
        if up < rowCount && image[up][column] == oldColor {
            for ups in up..<rowCount {
                if (image[ups][column] == oldColor){ mutatingImage[ups][column] = newColor }
            }
        }
        
        if down >= 0 && image[down][column] == oldColor {
            for downs in 0...down {
                if (image[downs][column] == oldColor){ mutatingImage[downs][column] = newColor }
            }
        }

        mutatingImage[row][column] = newColor
        
        return mutatingImage
    }
}
