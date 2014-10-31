//
//  SquareShape.swift
//  Swiftris
//
//  Created by Simon Tucker on 10/23/14.
//  Copyright (c) 2014 Simon Tucker. All rights reserved.
//

import SpriteKit

class SquareShape: Shape {
    /*
    | 0•| 1 |
    | 2 | 3 |
    
    • marks the row/column indicator for the shape
    
    */
    
    // The square shape will not rotate
    
    override var blockRowColumnPositions: [Orientation: Array<(rowDiff: Int, columnDiff: Int)>] {
        return [
            Orientation.Zero: [(0,0), (0,1), (1,0), (1,1)],
            Orientation.Ninety: [(0,0), (0,1), (1,0), (1,1)],
            Orientation.OneEighty: [(0,0), (0,1), (1,0), (1,1)],
            Orientation.TwoSeventy: [(0,0), (0,1), (1,0), (1,1)]
        ]
    }
    
    override var bottomBlocksForOrientations: [Orientation: Array<Block>] {
        return [
            Orientation.Zero: [blocks[SecondBlockIdx], blocks[FourthBlockIdx]],
            Orientation.Ninety: [blocks[SecondBlockIdx], blocks[FourthBlockIdx]],
            Orientation.OneEighty: [blocks[SecondBlockIdx], blocks[FourthBlockIdx]],
            Orientation.TwoSeventy: [blocks[SecondBlockIdx], blocks[FourthBlockIdx]]
        ]
    }
}