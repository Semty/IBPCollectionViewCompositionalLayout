#import <UIKit/UIKit.h>

@class IBPNSCollectionLayoutBoundarySupplementaryItem;

NS_ASSUME_NONNULL_BEGIN

@interface IBPUICollectionViewCompositionalLayoutConfiguration : NSObject<NSCopying>

@property (nonatomic) UICollectionViewScrollDirection scrollDirection; // default is UICollectionViewScrollDirectionVertical
@property (nonatomic) CGFloat interSectionSpacing;                     // default is 0
@property (nonatomic, copy) NSArray<IBPNSCollectionLayoutBoundarySupplementaryItem *> *boundarySupplementaryItems;
@property(nonatomic) UIContentInsetsReference contentInsetsReference API_AVAILABLE(ios(14.0), tvos(14.0), watchos(7.0));    // default is UIContentInsetsReferenceSafeArea

@end

NS_ASSUME_NONNULL_END
