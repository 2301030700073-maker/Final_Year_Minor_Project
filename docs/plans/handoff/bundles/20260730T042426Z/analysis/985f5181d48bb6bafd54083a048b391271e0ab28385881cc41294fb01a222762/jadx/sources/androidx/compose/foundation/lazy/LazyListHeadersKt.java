package androidx.compose.foundation.lazy;

import java.util.List;
import kotlin.collections.CollectionsKt;

/* compiled from: LazyListHeaders.kt */
/* loaded from: classes.dex */
public abstract class LazyListHeadersKt {
    public static final LazyListMeasuredItem findOrComposeLazyListHeader(List list, LazyListMeasuredItemProvider lazyListMeasuredItemProvider, List list2, int i, int i2, int i3) {
        int index = ((LazyListMeasuredItem) CollectionsKt.first(list)).getIndex();
        int size = list2.size();
        int i4 = -1;
        int i5 = -1;
        int i6 = 0;
        while (i6 < size && ((Number) list2.get(i6)).intValue() <= index) {
            i5 = ((Number) list2.get(i6)).intValue();
            i6++;
            i4 = ((Number) ((i6 < 0 || i6 > CollectionsKt.getLastIndex(list2)) ? -1 : list2.get(i6))).intValue();
        }
        int size2 = list.size();
        int i7 = Integer.MIN_VALUE;
        int i8 = Integer.MIN_VALUE;
        int i9 = -1;
        for (int i10 = 0; i10 < size2; i10++) {
            LazyListMeasuredItem lazyListMeasuredItem = (LazyListMeasuredItem) list.get(i10);
            if (lazyListMeasuredItem.getIndex() == i5) {
                i7 = lazyListMeasuredItem.getOffset();
                i9 = i10;
            } else if (lazyListMeasuredItem.getIndex() == i4) {
                i8 = lazyListMeasuredItem.getOffset();
            }
        }
        if (i5 == -1) {
            return null;
        }
        LazyListMeasuredItem m323getAndMeasure0kLqBqw$default = LazyListMeasuredItemProvider.m323getAndMeasure0kLqBqw$default(lazyListMeasuredItemProvider, i5, 0L, 2, null);
        m323getAndMeasure0kLqBqw$default.setNonScrollableItem(true);
        int max = i7 != Integer.MIN_VALUE ? Math.max(-i, i7) : -i;
        if (i8 != Integer.MIN_VALUE) {
            max = Math.min(max, i8 - m323getAndMeasure0kLqBqw$default.getSize());
        }
        m323getAndMeasure0kLqBqw$default.position(max, i2, i3);
        if (i9 != -1) {
            list.set(i9, m323getAndMeasure0kLqBqw$default);
        } else {
            list.add(0, m323getAndMeasure0kLqBqw$default);
        }
        return m323getAndMeasure0kLqBqw$default;
    }
}
