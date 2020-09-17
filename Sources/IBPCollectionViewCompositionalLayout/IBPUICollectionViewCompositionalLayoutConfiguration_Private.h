#import "IBPUICollectionViewCompositionalLayoutConfiguration.h"

NS_ASSUME_NONNULL_BEGIN

@interface IBPUICollectionViewCompositionalLayoutConfiguration()

+ (instancetype)defaultConfiguration;
- (instancetype)initWithScrollDirection:(UICollectionViewScrollDirection)scrollDirection
                    interSectionSpacing:(CGFloat)interSectionSpacing
             boundarySupplementaryItems:(NSArray<IBPNSCollectionLayoutBoundarySupplementaryItem *> *)boundarySupplementaryItems
                 contentInsetsReference:(UIContentInsetsReference)contentInsetsReference API_AVAILABLE(ios(14.0));

@end

NS_ASSUME_NONNULL_END
