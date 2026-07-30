package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;

/* compiled from: RowColumnMeasurePolicy.kt */
/* loaded from: classes.dex */
public interface RowColumnMeasurePolicy {
    /* renamed from: createConstraints-xF2OJ5Q */
    long mo254createConstraintsxF2OJ5Q(int i, int i2, int i3, int i4, boolean z);

    int crossAxisSize(Placeable placeable);

    int mainAxisSize(Placeable placeable);

    MeasureResult placeHelper(Placeable[] placeableArr, MeasureScope measureScope, int i, int[] iArr, int i2, int i3, int[] iArr2, int i4, int i5, int i6);

    void populateMainAxisPositions(int i, int[] iArr, int[] iArr2, MeasureScope measureScope);

    /* compiled from: RowColumnMeasurePolicy.kt */
    /* renamed from: androidx.compose.foundation.layout.RowColumnMeasurePolicy$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        /* renamed from: createConstraints-xF2OJ5Q$default, reason: not valid java name */
        public static /* synthetic */ long m276createConstraintsxF2OJ5Q$default(RowColumnMeasurePolicy rowColumnMeasurePolicy, int i, int i2, int i3, int i4, boolean z, int i5, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createConstraints-xF2OJ5Q");
            }
            if ((i5 & 16) != 0) {
                z = false;
            }
            return rowColumnMeasurePolicy.mo254createConstraintsxF2OJ5Q(i, i2, i3, i4, z);
        }
    }
}
