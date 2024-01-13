// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit

public class GravityManager {
    
    public var animator: UIDynamicAnimator?
    
    public init() {}
    
    public func initialize(_ views: [UIView], ref: UIView) {
        
        animator = UIDynamicAnimator(referenceView: ref)

        let gravity = UIGravityBehavior(items: views)
        animator!.addBehavior(gravity)

        let collision = UICollisionBehavior(items: views)
        collision.addBoundary(
            withIdentifier: "barrier" as NSCopying,
            for: UIBezierPath(
                rect: CGRect(
                    x: 0,
                    y: ref.frame.height,
                    width: ref.frame.width,
                    height: 10
                )
            )
        )
        collision.addBoundary(
            withIdentifier: "barrier2" as NSCopying,
            for: UIBezierPath(
                rect: CGRect(
                    x: 0,
                    y: 0,
                    width: 10,
                    height: ref.frame.height
                )
            )
        )
        collision.addBoundary(
            withIdentifier: "barrier3" as NSCopying,
            for: UIBezierPath(
                rect: CGRect(
                    x: ref.frame.width,
                    y: 0,
                    width: 10,
                    height: ref.frame.height
                )
            )
        )
        animator!.addBehavior(collision)
    }
}
