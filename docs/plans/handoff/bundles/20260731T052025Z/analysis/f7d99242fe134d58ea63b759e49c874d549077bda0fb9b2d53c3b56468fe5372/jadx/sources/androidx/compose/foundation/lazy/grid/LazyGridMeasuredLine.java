package androidx.compose.foundation.lazy.grid;

import androidx.cardview.widget.CardView;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LazyGridMeasuredLine {
    public final int index;
    public final LazyGridMeasuredItem[] items;
    public final int mainAxisSize;
    public final int mainAxisSizeWithSpacings;
    public final int mainAxisSpacing;
    public final CardView.AnonymousClass1 slots;
    public final List spans;

    public LazyGridMeasuredLine(int i, LazyGridMeasuredItem[] lazyGridMeasuredItemArr, CardView.AnonymousClass1 anonymousClass1, List list, int i2) {
        this.index = i;
        this.items = lazyGridMeasuredItemArr;
        this.slots = anonymousClass1;
        this.spans = list;
        this.mainAxisSpacing = i2;
        int i3 = 0;
        for (LazyGridMeasuredItem lazyGridMeasuredItem : lazyGridMeasuredItemArr) {
            i3 = Math.max(i3, lazyGridMeasuredItem.mainAxisSize);
        }
        this.mainAxisSize = i3;
        int i4 = i3 + this.mainAxisSpacing;
        this.mainAxisSizeWithSpacings = i4 >= 0 ? i4 : 0;
    }

    public final LazyGridMeasuredItem[] position(int i, int i2, int i3) {
        LazyGridMeasuredItem[] lazyGridMeasuredItemArr = this.items;
        int length = lazyGridMeasuredItemArr.length;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i4 < length) {
            LazyGridMeasuredItem lazyGridMeasuredItem = lazyGridMeasuredItemArr[i4];
            int i7 = i5 + 1;
            int i8 = (int) ((GridItemSpan) this.spans.get(i5)).packedValue;
            lazyGridMeasuredItem.position(i, ((int[]) this.slots.this$0)[i6], i2, i3, this.index, i6);
            i6 += i8;
            i4++;
            i5 = i7;
        }
        return lazyGridMeasuredItemArr;
    }
}
