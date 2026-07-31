package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScopeImpl;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import org.minidns.dnsqueryresult.DnsQueryResult;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 extends DnsQueryResult {
    public final /* synthetic */ int $afterContentPadding;
    public final /* synthetic */ int $beforeContentPadding;
    public final /* synthetic */ Alignment.Horizontal $horizontalAlignment;
    public final /* synthetic */ int $itemsCount;
    public final /* synthetic */ int $spaceBetweenItems;
    public final /* synthetic */ LazyListState $state;
    public final /* synthetic */ LazyLayoutMeasureScopeImpl $this_LazyLayoutMeasurePolicy;
    public final /* synthetic */ long $visualItemOffset;
    public final long childConstraints;
    public final LazyListItemProviderImpl itemProvider;
    public final LazyLayoutMeasureScopeImpl measureScope;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1(long j, LazyListItemProviderImpl lazyListItemProviderImpl, LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl, int i, int i2, Alignment.Horizontal horizontal, int i3, int i4, long j2, LazyListState lazyListState) {
        super(2);
        this.$this_LazyLayoutMeasurePolicy = lazyLayoutMeasureScopeImpl;
        this.$itemsCount = i;
        this.$spaceBetweenItems = i2;
        this.$horizontalAlignment = horizontal;
        this.$beforeContentPadding = i3;
        this.$afterContentPadding = i4;
        this.$visualItemOffset = j2;
        this.$state = lazyListState;
        this.itemProvider = lazyListItemProviderImpl;
        this.measureScope = lazyLayoutMeasureScopeImpl;
        this.childConstraints = ConstraintsKt.Constraints$default(0, Constraints.m734getMaxWidthimpl(j), 0, Integer.MAX_VALUE, 5);
    }

    @Override // org.minidns.dnsqueryresult.DnsQueryResult
    /* renamed from: getAndMeasure--hBUhpc, reason: not valid java name */
    public final LazyLayoutMeasuredItem mo244getAndMeasurehBUhpc(int i, int i2, int i3, long j) {
        return m245getAndMeasure0kLqBqw(i, j);
    }

    /* renamed from: getAndMeasure-0kLqBqw, reason: not valid java name */
    public final LazyListMeasuredItem m245getAndMeasure0kLqBqw(int i, long j) {
        LazyListItemProviderImpl lazyListItemProviderImpl = this.itemProvider;
        Object key = lazyListItemProviderImpl.getKey(i);
        Object contentType = lazyListItemProviderImpl.intervalContent.getContentType(i);
        return new LazyListMeasuredItem(i, m1085getPlaceables3p2s80s(this.measureScope, i, j), this.$horizontalAlignment, this.$this_LazyLayoutMeasurePolicy.subcomposeMeasureScope.getLayoutDirection(), this.$beforeContentPadding, this.$afterContentPadding, i == this.$itemsCount + (-1) ? 0 : this.$spaceBetweenItems, this.$visualItemOffset, key, contentType, this.$state.itemAnimator, j);
    }
}
