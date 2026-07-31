package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScopeImpl;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import org.wikipedia.settings.BasePreferenceLoader;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1 extends BasePreferenceLoader {
    public final /* synthetic */ int $afterContentPadding;
    public final /* synthetic */ int $beforeContentPadding;
    public final /* synthetic */ LazyGridState $state;
    public final /* synthetic */ LazyLayoutMeasureScopeImpl $this_LazyLayoutMeasurePolicy;
    public final /* synthetic */ long $visualItemOffset;
    public final int defaultMainAxisSpacing;
    public final LazyGridItemProviderImpl itemProvider;
    public final LazyLayoutMeasureScopeImpl measureScope;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1(LazyGridItemProviderImpl lazyGridItemProviderImpl, LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl, int i, LazyGridState lazyGridState, int i2, int i3, long j) {
        super(2);
        this.$this_LazyLayoutMeasurePolicy = lazyLayoutMeasureScopeImpl;
        this.$state = lazyGridState;
        this.$beforeContentPadding = i2;
        this.$afterContentPadding = i3;
        this.$visualItemOffset = j;
        this.itemProvider = lazyGridItemProviderImpl;
        this.measureScope = lazyLayoutMeasureScopeImpl;
        this.defaultMainAxisSpacing = i;
    }

    @Override // org.wikipedia.settings.BasePreferenceLoader
    /* renamed from: getAndMeasure--hBUhpc */
    public final LazyLayoutMeasuredItem mo153getAndMeasurehBUhpc(int i, int i2, int i3, long j) {
        return m159getAndMeasurem8Kt_7k(i, j, i2, i3, this.defaultMainAxisSpacing);
    }

    /* renamed from: getAndMeasure-m8Kt_7k, reason: not valid java name */
    public final LazyGridMeasuredItem m159getAndMeasurem8Kt_7k(int i, long j, int i2, int i3, int i4) {
        int m682getMinHeightimpl;
        LazyGridItemProviderImpl lazyGridItemProviderImpl = this.itemProvider;
        Object key = lazyGridItemProviderImpl.getKey(i);
        Object contentType = lazyGridItemProviderImpl.intervalContent.getContentType(i);
        List m913getPlaceables3p2s80s = m913getPlaceables3p2s80s(this.measureScope, i, j);
        if (Constraints.m679getHasFixedWidthimpl(j)) {
            m682getMinHeightimpl = Constraints.m683getMinWidthimpl(j);
        } else {
            if (!Constraints.m678getHasFixedHeightimpl(j)) {
                InlineClassHelperKt.throwIllegalArgumentException("does not have fixed height");
            }
            m682getMinHeightimpl = Constraints.m682getMinHeightimpl(j);
        }
        LayoutDirection layoutDirection = this.$this_LazyLayoutMeasurePolicy.subcomposeMeasureScope.getLayoutDirection();
        LazyLayoutItemAnimator lazyLayoutItemAnimator = this.$state.itemAnimator;
        return new LazyGridMeasuredItem(i, key, m682getMinHeightimpl, i4, layoutDirection, this.$beforeContentPadding, this.$afterContentPadding, m913getPlaceables3p2s80s, this.$visualItemOffset, contentType, lazyLayoutItemAnimator, j, i2, i3);
    }
}
