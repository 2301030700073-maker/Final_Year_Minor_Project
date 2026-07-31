package com.google.android.material.carousel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CarouselOrientationHelper$1 {
    public final /* synthetic */ int $r8$classId;
    public final int orientation;
    public final /* synthetic */ CarouselLayoutManager val$carouselLayoutManager;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CarouselOrientationHelper$1(CarouselLayoutManager carouselLayoutManager, int i) {
        this(1);
        this.$r8$classId = i;
        switch (i) {
            case 1:
                this.val$carouselLayoutManager = carouselLayoutManager;
                this(0);
                break;
            default:
                this.val$carouselLayoutManager = carouselLayoutManager;
                break;
        }
    }

    public final int getParentStart() {
        switch (this.$r8$classId) {
            case 0:
                return 0;
            default:
                CarouselLayoutManager carouselLayoutManager = this.val$carouselLayoutManager;
                if (carouselLayoutManager.isLayoutRtl()) {
                    return carouselLayoutManager.mWidth;
                }
                return 0;
        }
    }

    public CarouselOrientationHelper$1(int i) {
        this.orientation = i;
    }
}
