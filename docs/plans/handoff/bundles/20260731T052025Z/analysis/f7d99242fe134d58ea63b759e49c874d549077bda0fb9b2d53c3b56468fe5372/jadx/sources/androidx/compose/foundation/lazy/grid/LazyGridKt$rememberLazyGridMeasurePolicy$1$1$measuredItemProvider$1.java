package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScopeImpl;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import org.minidns.dnsqueryresult.DnsQueryResult;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1 extends DnsQueryResult {
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

    @Override // org.minidns.dnsqueryresult.DnsQueryResult
    /* renamed from: getAndMeasure--hBUhpc */
    public final LazyLayoutMeasuredItem mo244getAndMeasurehBUhpc(int i, int i2, int i3, long j) {
        return m249getAndMeasurem8Kt_7k(i, j, i2, i3, this.defaultMainAxisSpacing);
    }

    /* renamed from: getAndMeasure-m8Kt_7k, reason: not valid java name */
    public final LazyGridMeasuredItem m249getAndMeasurem8Kt_7k(int i, long j, int i2, int i3, int i4) {
        int m735getMinHeightimpl;
        LazyGridItemProviderImpl lazyGridItemProviderImpl = this.itemProvider;
        Object key = lazyGridItemProviderImpl.getKey(i);
        Object contentType = lazyGridItemProviderImpl.intervalContent.getContentType(i);
        List m1085getPlaceables3p2s80s = m1085getPlaceables3p2s80s(this.measureScope, i, j);
        if (Constraints.m732getHasFixedWidthimpl(j)) {
            m735getMinHeightimpl = Constraints.m736getMinWidthimpl(j);
        } else {
            if (!Constraints.m731getHasFixedHeightimpl(j)) {
                InlineClassHelperKt.throwIllegalArgumentException("does not have fixed height");
            }
            m735getMinHeightimpl = Constraints.m735getMinHeightimpl(j);
        }
        LayoutDirection layoutDirection = this.$this_LazyLayoutMeasurePolicy.subcomposeMeasureScope.getLayoutDirection();
        LazyLayoutItemAnimator lazyLayoutItemAnimator = this.$state.itemAnimator;
        return new LazyGridMeasuredItem(i, key, m735getMinHeightimpl, i4, layoutDirection, this.$beforeContentPadding, this.$afterContentPadding, m1085getPlaceables3p2s80s, this.$visualItemOffset, contentType, lazyLayoutItemAnimator, j, i2, i3);
    }
}
