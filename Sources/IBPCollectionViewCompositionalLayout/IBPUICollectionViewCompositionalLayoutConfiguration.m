#import "IBPUICollectionViewCompositionalLayoutConfiguration_Private.h"

@implementation IBPUICollectionViewCompositionalLayoutConfiguration

+ (instancetype)defaultConfiguration {
    return [[self alloc] init];
}

- (instancetype)initWithScrollDirection:(UICollectionViewScrollDirection)scrollDirection
                    interSectionSpacing:(CGFloat)interSectionSpacing
             boundarySupplementaryItems:(NSArray<IBPNSCollectionLayoutBoundarySupplementaryItem *> *)boundarySupplementaryItems
                 contentInsetsReference:(UIContentInsetsReference)contentInsetsReference  API_AVAILABLE(ios(14.0)) {
    IBPUICollectionViewCompositionalLayoutConfiguration *configuration = [self.class defaultConfiguration];
    configuration.scrollDirection = scrollDirection;
    configuration.interSectionSpacing = interSectionSpacing;
    configuration.boundarySupplementaryItems = boundarySupplementaryItems;
    configuration.contentInsetsReference = contentInsetsReference;
    return configuration;
}

- (instancetype)initWithScrollDirection:(UICollectionViewScrollDirection)scrollDirection
                    interSectionSpacing:(CGFloat)interSectionSpacing
             boundarySupplementaryItems:(NSArray<IBPNSCollectionLayoutBoundarySupplementaryItem *> *)boundarySupplementaryItems {
    IBPUICollectionViewCompositionalLayoutConfiguration *configuration = [self.class defaultConfiguration];
    configuration.scrollDirection = scrollDirection;
    configuration.interSectionSpacing = interSectionSpacing;
    configuration.boundarySupplementaryItems = boundarySupplementaryItems;
    if (@available(iOS 14.0, *)) {
        configuration.contentInsetsReference = UIContentInsetsReferenceSafeArea;
    }
    return configuration;
}

- (instancetype)init {
    if (@available(iOS 13, *)) {
        return [[NSClassFromString(@"UICollectionViewCompositionalLayoutConfiguration") alloc] init];
    } else {
        self = [super init];
        if (self) {
            self.scrollDirection = UICollectionViewScrollDirectionVertical;
            self.interSectionSpacing = 0;
            self.boundarySupplementaryItems = @[];
            if (@available(iOS 14.0, *)) {
                self.contentInsetsReference = UIContentInsetsReferenceSafeArea;
            }
        }
        return self;
    }
}

- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    if (@available(iOS 14.0, *)) {
        return [[self.class alloc] initWithScrollDirection:self.scrollDirection
                                       interSectionSpacing:self.interSectionSpacing
                                boundarySupplementaryItems:self.boundarySupplementaryItems
                                    contentInsetsReference:self.contentInsetsReference];
    } else {
        return [[self.class alloc] initWithScrollDirection:self.scrollDirection
                                       interSectionSpacing:self.interSectionSpacing
                                boundarySupplementaryItems:self.boundarySupplementaryItems];
    }
}

@end
