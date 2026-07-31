package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.lazy.grid.LazyGridSlots;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScopeImpl;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.InlineClassHelperKt;
import java.util.List;
import org.wikipedia.settings.BasePreferenceLoader;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyStaggeredGridMeasureContext$measuredItemProvider$1 extends BasePreferenceLoader {
    public final boolean isVertical;
    public final LazyStaggeredGridItemProviderImpl itemProvider;
    public final LazyLayoutMeasureScopeImpl measureScope;
    public final LazyGridSlots resolvedSlots;
    public final /* synthetic */ LazyStaggeredGridMeasureContext this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyStaggeredGridMeasureContext$measuredItemProvider$1(LazyStaggeredGridMeasureContext lazyStaggeredGridMeasureContext, boolean z, LazyStaggeredGridItemProviderImpl lazyStaggeredGridItemProviderImpl, LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl, LazyGridSlots lazyGridSlots) {
        super(2);
        this.this$0 = lazyStaggeredGridMeasureContext;
        this.isVertical = z;
        this.itemProvider = lazyStaggeredGridItemProviderImpl;
        this.measureScope = lazyLayoutMeasureScopeImpl;
        this.resolvedSlots = lazyGridSlots;
    }

    @Override // org.wikipedia.settings.BasePreferenceLoader
    /* renamed from: getAndMeasure--hBUhpc */
    public final LazyLayoutMeasuredItem mo153getAndMeasurehBUhpc(int i, int i2, int i3, long j) {
        LazyStaggeredGridItemProviderImpl lazyStaggeredGridItemProviderImpl = this.itemProvider;
        Object key = lazyStaggeredGridItemProviderImpl.getKey(i);
        Object contentType = lazyStaggeredGridItemProviderImpl.intervalContent.getContentType(i);
        List m913getPlaceables3p2s80s = m913getPlaceables3p2s80s(this.measureScope, i, j);
        LazyStaggeredGridMeasureContext lazyStaggeredGridMeasureContext = this.this$0;
        return new LazyStaggeredGridMeasuredItem(i, key, m913getPlaceables3p2s80s, lazyStaggeredGridMeasureContext.isVertical, lazyStaggeredGridMeasureContext.mainAxisSpacing, i2, i3, lazyStaggeredGridMeasureContext.beforeContentPadding, lazyStaggeredGridMeasureContext.afterContentPadding, contentType, lazyStaggeredGridMeasureContext.state.itemAnimator, j);
    }

    /* renamed from: getAndMeasure-jy6DScQ, reason: not valid java name */
    public final LazyStaggeredGridMeasuredItem m170getAndMeasurejy6DScQ(long j, int i) {
        int i2;
        long createConstraints;
        LazyStaggeredGridItemProviderImpl lazyStaggeredGridItemProviderImpl = this.itemProvider;
        Object key = lazyStaggeredGridItemProviderImpl.getKey(i);
        Object contentType = lazyStaggeredGridItemProviderImpl.intervalContent.getContentType(i);
        LazyGridSlots lazyGridSlots = this.resolvedSlots;
        int[] iArr = lazyGridSlots.positions;
        int length = iArr.length;
        int i3 = (int) (j >> 32);
        int i4 = length - 1;
        if (i3 <= i4) {
            i4 = i3;
        }
        int i5 = ((int) (4294967295L & j)) - i3;
        int i6 = length - i4;
        if (i5 > i6) {
            i5 = i6;
        }
        if (i5 == 1) {
            i2 = iArr[i4];
        } else {
            int[] iArr2 = lazyGridSlots.sizes;
            int i7 = (i4 + i5) - 1;
            i2 = (iArr2[i7] + iArr[i7]) - iArr2[i4];
        }
        if (this.isVertical) {
            if (i2 < 0) {
                InlineClassHelperKt.throwIllegalArgumentException("width must be >= 0");
            }
            createConstraints = ConstraintsKt.createConstraints(i2, i2, 0, Integer.MAX_VALUE);
        } else {
            if (i2 < 0) {
                InlineClassHelperKt.throwIllegalArgumentException("height must be >= 0");
            }
            createConstraints = ConstraintsKt.createConstraints(0, Integer.MAX_VALUE, i2, i2);
        }
        long j2 = createConstraints;
        List m913getPlaceables3p2s80s = m913getPlaceables3p2s80s(this.measureScope, i, j2);
        LazyStaggeredGridMeasureContext lazyStaggeredGridMeasureContext = this.this$0;
        return new LazyStaggeredGridMeasuredItem(i, key, m913getPlaceables3p2s80s, lazyStaggeredGridMeasureContext.isVertical, lazyStaggeredGridMeasureContext.mainAxisSpacing, i4, i5, lazyStaggeredGridMeasureContext.beforeContentPadding, lazyStaggeredGridMeasureContext.afterContentPadding, contentType, lazyStaggeredGridMeasureContext.state.itemAnimator, j2);
    }
}
