package androidx.compose.foundation.lazy;

import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScopeImpl;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import com.google.android.exoplayer2.util.Log;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 {
    public final /* synthetic */ int $afterContentPadding;
    public final /* synthetic */ int $beforeContentPadding;
    public final /* synthetic */ BiasAlignment.Horizontal $horizontalAlignment;
    public final /* synthetic */ int $itemsCount;
    public final /* synthetic */ int $spaceBetweenItems;
    public final /* synthetic */ LazyListState $state;
    public final /* synthetic */ LazyLayoutMeasureScopeImpl $this_LazyLayoutMeasurePolicy;
    public final /* synthetic */ long $visualItemOffset;
    public final long childConstraints;
    public final LazyListItemProviderImpl itemProvider;
    public final LazyLayoutMeasureScopeImpl measureScope;
    public final MutableIntObjectMap placeablesCache;

    public LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1(long j, LazyListItemProviderImpl lazyListItemProviderImpl, LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl, int i, int i2, BiasAlignment.Horizontal horizontal, int i3, int i4, long j2, LazyListState lazyListState) {
        this.$this_LazyLayoutMeasurePolicy = lazyLayoutMeasureScopeImpl;
        this.$itemsCount = i;
        this.$spaceBetweenItems = i2;
        this.$horizontalAlignment = horizontal;
        this.$beforeContentPadding = i3;
        this.$afterContentPadding = i4;
        this.$visualItemOffset = j2;
        this.$state = lazyListState;
        MutableIntObjectMap mutableIntObjectMap = IntObjectMapKt.EmptyIntObjectMap;
        this.placeablesCache = new MutableIntObjectMap();
        this.itemProvider = lazyListItemProviderImpl;
        this.measureScope = lazyLayoutMeasureScopeImpl;
        this.childConstraints = ConstraintsKt.Constraints$default(Constraints.m434getMaxWidthimpl(j), Log.LOG_LEVEL_OFF, 5);
    }

    /* renamed from: getAndMeasure-0kLqBqw, reason: not valid java name */
    public final LazyListMeasuredItem m103getAndMeasure0kLqBqw(int i, long j) {
        long j2;
        List list;
        LazyListItemProviderImpl lazyListItemProviderImpl = this.itemProvider;
        Object key = lazyListItemProviderImpl.getKey(i);
        Object contentType = lazyListItemProviderImpl.getContentType(i);
        MutableIntObjectMap mutableIntObjectMap = this.placeablesCache;
        List list2 = (List) mutableIntObjectMap.get(i);
        if (list2 != null) {
            j2 = j;
            list = list2;
        } else {
            List compose = this.measureScope.compose(i);
            int size = compose.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i2 = 0; i2 < size; i2++) {
                arrayList.add(((Measurable) compose.get(i2)).mo292measureBRTryo0(j));
            }
            j2 = j;
            mutableIntObjectMap.set(i, arrayList);
            list = arrayList;
        }
        return new LazyListMeasuredItem(i, list, this.$horizontalAlignment, this.$this_LazyLayoutMeasurePolicy.subcomposeMeasureScope.getLayoutDirection(), this.$beforeContentPadding, this.$afterContentPadding, i != this.$itemsCount + (-1) ? this.$spaceBetweenItems : 0, this.$visualItemOffset, key, contentType, this.$state.itemAnimator, j2);
    }
}
