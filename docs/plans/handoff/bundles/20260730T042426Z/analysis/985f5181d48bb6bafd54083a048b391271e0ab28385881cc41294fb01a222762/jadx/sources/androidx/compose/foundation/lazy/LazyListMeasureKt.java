package androidx.compose.foundation.lazy;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt;

/* compiled from: LazyListMeasure.kt */
/* loaded from: classes.dex */
public abstract class LazyListMeasureKt {
    private static final int calculateItemsOffsets$reverseAware(int i, boolean z, int i2) {
        return !z ? i : (i2 - i) - 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x0389  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x039f  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x03c7  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x040c  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0411  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x03c9  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x03aa  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x039b  */
    /* renamed from: measureLazyList-x0Ok8Vo, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.compose.foundation.lazy.LazyListMeasureResult m318measureLazyListx0Ok8Vo(int r40, androidx.compose.foundation.lazy.LazyListMeasuredItemProvider r41, int r42, int r43, int r44, int r45, int r46, int r47, float r48, long r49, boolean r51, java.util.List r52, androidx.compose.foundation.layout.Arrangement.Vertical r53, androidx.compose.foundation.layout.Arrangement.Horizontal r54, boolean r55, androidx.compose.ui.unit.Density r56, androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator r57, int r58, java.util.List r59, boolean r60, boolean r61, androidx.compose.foundation.lazy.LazyListLayoutInfo r62, kotlinx.coroutines.CoroutineScope r63, final androidx.compose.runtime.MutableState r64, androidx.compose.ui.graphics.GraphicsContext r65, kotlin.jvm.functions.Function3 r66) {
        /*
            Method dump skipped, instructions count: 1107
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.LazyListMeasureKt.m318measureLazyListx0Ok8Vo(int, androidx.compose.foundation.lazy.LazyListMeasuredItemProvider, int, int, int, int, int, int, float, long, boolean, java.util.List, androidx.compose.foundation.layout.Arrangement$Vertical, androidx.compose.foundation.layout.Arrangement$Horizontal, boolean, androidx.compose.ui.unit.Density, androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator, int, java.util.List, boolean, boolean, androidx.compose.foundation.lazy.LazyListLayoutInfo, kotlinx.coroutines.CoroutineScope, androidx.compose.runtime.MutableState, androidx.compose.ui.graphics.GraphicsContext, kotlin.jvm.functions.Function3):androidx.compose.foundation.lazy.LazyListMeasureResult");
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0079, code lost:
    
        r5 = (androidx.compose.foundation.lazy.LazyListItemInfo) r5.get(r6);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final java.util.List createItemsAfterList(java.util.List r18, androidx.compose.foundation.lazy.LazyListMeasuredItemProvider r19, int r20, int r21, java.util.List r22, float r23, boolean r24, androidx.compose.foundation.lazy.LazyListLayoutInfo r25) {
        /*
            Method dump skipped, instructions count: 442
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.LazyListMeasureKt.createItemsAfterList(java.util.List, androidx.compose.foundation.lazy.LazyListMeasuredItemProvider, int, int, java.util.List, float, boolean, androidx.compose.foundation.lazy.LazyListLayoutInfo):java.util.List");
    }

    private static final List createItemsBeforeList(int i, LazyListMeasuredItemProvider lazyListMeasuredItemProvider, int i2, List list) {
        int max = Math.max(0, i - i2);
        int i3 = i - 1;
        ArrayList arrayList = null;
        if (max <= i3) {
            while (true) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(LazyListMeasuredItemProvider.m323getAndMeasure0kLqBqw$default(lazyListMeasuredItemProvider, i3, 0L, 2, null));
                if (i3 == max) {
                    break;
                }
                i3--;
            }
        }
        int size = list.size() - 1;
        if (size >= 0) {
            while (true) {
                int i4 = size - 1;
                int intValue = ((Number) list.get(size)).intValue();
                if (intValue < max) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(LazyListMeasuredItemProvider.m323getAndMeasure0kLqBqw$default(lazyListMeasuredItemProvider, intValue, 0L, 2, null));
                }
                if (i4 < 0) {
                    break;
                }
                size = i4;
            }
        }
        return arrayList == null ? CollectionsKt.emptyList() : arrayList;
    }

    private static final List calculateItemsOffsets(List list, List list2, List list3, int i, int i2, int i3, int i4, int i5, boolean z, Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, boolean z2, Density density) {
        int i6 = z ? i2 : i;
        boolean z3 = i3 < Math.min(i6, i4);
        if (z3 && i5 != 0) {
            throw new IllegalStateException("non-zero itemsScrollOffset");
        }
        ArrayList arrayList = new ArrayList(list.size() + list2.size() + list3.size());
        if (!z3) {
            int size = list2.size();
            int i7 = i5;
            for (int i8 = 0; i8 < size; i8++) {
                LazyListMeasuredItem lazyListMeasuredItem = (LazyListMeasuredItem) list2.get(i8);
                i7 -= lazyListMeasuredItem.getMainAxisSizeWithSpacings();
                lazyListMeasuredItem.position(i7, i, i2);
                arrayList.add(lazyListMeasuredItem);
            }
            int size2 = list.size();
            int i9 = i5;
            for (int i10 = 0; i10 < size2; i10++) {
                LazyListMeasuredItem lazyListMeasuredItem2 = (LazyListMeasuredItem) list.get(i10);
                lazyListMeasuredItem2.position(i9, i, i2);
                arrayList.add(lazyListMeasuredItem2);
                i9 += lazyListMeasuredItem2.getMainAxisSizeWithSpacings();
            }
            int size3 = list3.size();
            for (int i11 = 0; i11 < size3; i11++) {
                LazyListMeasuredItem lazyListMeasuredItem3 = (LazyListMeasuredItem) list3.get(i11);
                lazyListMeasuredItem3.position(i9, i, i2);
                arrayList.add(lazyListMeasuredItem3);
                i9 += lazyListMeasuredItem3.getMainAxisSizeWithSpacings();
            }
        } else {
            if (!list2.isEmpty() || !list3.isEmpty()) {
                throw new IllegalArgumentException("no extra items");
            }
            int size4 = list.size();
            int[] iArr = new int[size4];
            for (int i12 = 0; i12 < size4; i12++) {
                iArr[i12] = ((LazyListMeasuredItem) list.get(calculateItemsOffsets$reverseAware(i12, z2, size4))).getSize();
            }
            int[] iArr2 = new int[size4];
            for (int i13 = 0; i13 < size4; i13++) {
                iArr2[i13] = 0;
            }
            if (z) {
                if (vertical == null) {
                    throw new IllegalArgumentException("null verticalArrangement when isVertical == true");
                }
                vertical.arrange(density, i6, iArr, iArr2);
            } else {
                if (horizontal == null) {
                    throw new IllegalArgumentException("null horizontalArrangement when isVertical == false");
                }
                horizontal.arrange(density, i6, iArr, LayoutDirection.Ltr, iArr2);
            }
            IntProgression indices = ArraysKt.getIndices(iArr2);
            if (z2) {
                indices = RangesKt.reversed(indices);
            }
            int first = indices.getFirst();
            int last = indices.getLast();
            int step = indices.getStep();
            if ((step > 0 && first <= last) || (step < 0 && last <= first)) {
                while (true) {
                    int i14 = iArr2[first];
                    LazyListMeasuredItem lazyListMeasuredItem4 = (LazyListMeasuredItem) list.get(calculateItemsOffsets$reverseAware(first, z2, size4));
                    if (z2) {
                        i14 = (i6 - i14) - lazyListMeasuredItem4.getSize();
                    }
                    lazyListMeasuredItem4.position(i14, i, i2);
                    arrayList.add(lazyListMeasuredItem4);
                    if (first == last) {
                        break;
                    }
                    first += step;
                }
            }
        }
        return arrayList;
    }
}
