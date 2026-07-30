package androidx.compose.foundation.lazy.layout;

/* compiled from: LazyLayoutMeasuredItem.kt */
/* loaded from: classes.dex */
public interface LazyLayoutMeasuredItem {
    /* renamed from: getConstraints-msEJaDk */
    long mo321getConstraintsmsEJaDk();

    int getIndex();

    Object getKey();

    int getLane();

    int getMainAxisSizeWithSpacings();

    /* renamed from: getOffset-Bjo55l4 */
    long mo322getOffsetBjo55l4(int i);

    Object getParentData(int i);

    int getPlaceablesCount();

    int getSpan();

    boolean isVertical();

    void position(int i, int i2, int i3, int i4);

    void setNonScrollableItem(boolean z);
}
