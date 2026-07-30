package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.IntrinsicMeasurable;
import java.util.List;

/* compiled from: RowColumnImpl.kt */
/* loaded from: classes.dex */
public final class IntrinsicMeasureBlocks {
    public static final IntrinsicMeasureBlocks INSTANCE = new IntrinsicMeasureBlocks();

    private IntrinsicMeasureBlocks() {
    }

    public final int HorizontalMaxWidth(List list, int i, int i2) {
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        float f = 0.0f;
        for (int i5 = 0; i5 < size; i5++) {
            IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) list.get(i5);
            float weight = RowColumnImplKt.getWeight(RowColumnImplKt.getRowColumnParentData(intrinsicMeasurable));
            int maxIntrinsicWidth = intrinsicMeasurable.maxIntrinsicWidth(i);
            if (weight == 0.0f) {
                i4 += maxIntrinsicWidth;
            } else if (weight > 0.0f) {
                f += weight;
                i3 = Math.max(i3, Math.round(maxIntrinsicWidth / weight));
            }
        }
        return Math.round(i3 * f) + i4 + ((list.size() - 1) * i2);
    }

    public final int HorizontalMinWidth(List list, int i, int i2) {
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        float f = 0.0f;
        for (int i5 = 0; i5 < size; i5++) {
            IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) list.get(i5);
            float weight = RowColumnImplKt.getWeight(RowColumnImplKt.getRowColumnParentData(intrinsicMeasurable));
            int minIntrinsicWidth = intrinsicMeasurable.minIntrinsicWidth(i);
            if (weight == 0.0f) {
                i4 += minIntrinsicWidth;
            } else if (weight > 0.0f) {
                f += weight;
                i3 = Math.max(i3, Math.round(minIntrinsicWidth / weight));
            }
        }
        return Math.round(i3 * f) + i4 + ((list.size() - 1) * i2);
    }

    public final int VerticalMaxHeight(List list, int i, int i2) {
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        float f = 0.0f;
        for (int i5 = 0; i5 < size; i5++) {
            IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) list.get(i5);
            float weight = RowColumnImplKt.getWeight(RowColumnImplKt.getRowColumnParentData(intrinsicMeasurable));
            int maxIntrinsicHeight = intrinsicMeasurable.maxIntrinsicHeight(i);
            if (weight == 0.0f) {
                i4 += maxIntrinsicHeight;
            } else if (weight > 0.0f) {
                f += weight;
                i3 = Math.max(i3, Math.round(maxIntrinsicHeight / weight));
            }
        }
        return Math.round(i3 * f) + i4 + ((list.size() - 1) * i2);
    }

    public final int VerticalMinHeight(List list, int i, int i2) {
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        float f = 0.0f;
        for (int i5 = 0; i5 < size; i5++) {
            IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) list.get(i5);
            float weight = RowColumnImplKt.getWeight(RowColumnImplKt.getRowColumnParentData(intrinsicMeasurable));
            int minIntrinsicHeight = intrinsicMeasurable.minIntrinsicHeight(i);
            if (weight == 0.0f) {
                i4 += minIntrinsicHeight;
            } else if (weight > 0.0f) {
                f += weight;
                i3 = Math.max(i3, Math.round(minIntrinsicHeight / weight));
            }
        }
        return Math.round(i3 * f) + i4 + ((list.size() - 1) * i2);
    }

    public final int HorizontalMaxHeight(List list, int i, int i2) {
        int round;
        if (list.isEmpty()) {
            return 0;
        }
        int min = Math.min((list.size() - 1) * i2, i);
        int size = list.size();
        int i3 = 0;
        float f = 0.0f;
        for (int i4 = 0; i4 < size; i4++) {
            IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) list.get(i4);
            float weight = RowColumnImplKt.getWeight(RowColumnImplKt.getRowColumnParentData(intrinsicMeasurable));
            if (weight == 0.0f) {
                int min2 = Math.min(intrinsicMeasurable.maxIntrinsicWidth(Integer.MAX_VALUE), i == Integer.MAX_VALUE ? Integer.MAX_VALUE : i - min);
                min += min2;
                i3 = Math.max(i3, intrinsicMeasurable.maxIntrinsicHeight(min2));
            } else if (weight > 0.0f) {
                f += weight;
            }
        }
        if (f == 0.0f) {
            round = 0;
        } else {
            round = i == Integer.MAX_VALUE ? Integer.MAX_VALUE : Math.round(Math.max(i - min, 0) / f);
        }
        int size2 = list.size();
        for (int i5 = 0; i5 < size2; i5++) {
            IntrinsicMeasurable intrinsicMeasurable2 = (IntrinsicMeasurable) list.get(i5);
            float weight2 = RowColumnImplKt.getWeight(RowColumnImplKt.getRowColumnParentData(intrinsicMeasurable2));
            if (weight2 > 0.0f) {
                i3 = Math.max(i3, intrinsicMeasurable2.maxIntrinsicHeight(round != Integer.MAX_VALUE ? Math.round(round * weight2) : Integer.MAX_VALUE));
            }
        }
        return i3;
    }

    public final int HorizontalMinHeight(List list, int i, int i2) {
        int round;
        if (list.isEmpty()) {
            return 0;
        }
        int min = Math.min((list.size() - 1) * i2, i);
        int size = list.size();
        int i3 = 0;
        float f = 0.0f;
        for (int i4 = 0; i4 < size; i4++) {
            IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) list.get(i4);
            float weight = RowColumnImplKt.getWeight(RowColumnImplKt.getRowColumnParentData(intrinsicMeasurable));
            if (weight == 0.0f) {
                int min2 = Math.min(intrinsicMeasurable.maxIntrinsicWidth(Integer.MAX_VALUE), i == Integer.MAX_VALUE ? Integer.MAX_VALUE : i - min);
                min += min2;
                i3 = Math.max(i3, intrinsicMeasurable.minIntrinsicHeight(min2));
            } else if (weight > 0.0f) {
                f += weight;
            }
        }
        if (f == 0.0f) {
            round = 0;
        } else {
            round = i == Integer.MAX_VALUE ? Integer.MAX_VALUE : Math.round(Math.max(i - min, 0) / f);
        }
        int size2 = list.size();
        for (int i5 = 0; i5 < size2; i5++) {
            IntrinsicMeasurable intrinsicMeasurable2 = (IntrinsicMeasurable) list.get(i5);
            float weight2 = RowColumnImplKt.getWeight(RowColumnImplKt.getRowColumnParentData(intrinsicMeasurable2));
            if (weight2 > 0.0f) {
                i3 = Math.max(i3, intrinsicMeasurable2.minIntrinsicHeight(round != Integer.MAX_VALUE ? Math.round(round * weight2) : Integer.MAX_VALUE));
            }
        }
        return i3;
    }

    public final int VerticalMaxWidth(List list, int i, int i2) {
        int round;
        if (list.isEmpty()) {
            return 0;
        }
        int min = Math.min((list.size() - 1) * i2, i);
        int size = list.size();
        int i3 = 0;
        float f = 0.0f;
        for (int i4 = 0; i4 < size; i4++) {
            IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) list.get(i4);
            float weight = RowColumnImplKt.getWeight(RowColumnImplKt.getRowColumnParentData(intrinsicMeasurable));
            if (weight == 0.0f) {
                int min2 = Math.min(intrinsicMeasurable.maxIntrinsicHeight(Integer.MAX_VALUE), i == Integer.MAX_VALUE ? Integer.MAX_VALUE : i - min);
                min += min2;
                i3 = Math.max(i3, intrinsicMeasurable.maxIntrinsicWidth(min2));
            } else if (weight > 0.0f) {
                f += weight;
            }
        }
        if (f == 0.0f) {
            round = 0;
        } else {
            round = i == Integer.MAX_VALUE ? Integer.MAX_VALUE : Math.round(Math.max(i - min, 0) / f);
        }
        int size2 = list.size();
        for (int i5 = 0; i5 < size2; i5++) {
            IntrinsicMeasurable intrinsicMeasurable2 = (IntrinsicMeasurable) list.get(i5);
            float weight2 = RowColumnImplKt.getWeight(RowColumnImplKt.getRowColumnParentData(intrinsicMeasurable2));
            if (weight2 > 0.0f) {
                i3 = Math.max(i3, intrinsicMeasurable2.maxIntrinsicWidth(round != Integer.MAX_VALUE ? Math.round(round * weight2) : Integer.MAX_VALUE));
            }
        }
        return i3;
    }

    public final int VerticalMinWidth(List list, int i, int i2) {
        int round;
        if (list.isEmpty()) {
            return 0;
        }
        int min = Math.min((list.size() - 1) * i2, i);
        int size = list.size();
        int i3 = 0;
        float f = 0.0f;
        for (int i4 = 0; i4 < size; i4++) {
            IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) list.get(i4);
            float weight = RowColumnImplKt.getWeight(RowColumnImplKt.getRowColumnParentData(intrinsicMeasurable));
            if (weight == 0.0f) {
                int min2 = Math.min(intrinsicMeasurable.maxIntrinsicHeight(Integer.MAX_VALUE), i == Integer.MAX_VALUE ? Integer.MAX_VALUE : i - min);
                min += min2;
                i3 = Math.max(i3, intrinsicMeasurable.minIntrinsicWidth(min2));
            } else if (weight > 0.0f) {
                f += weight;
            }
        }
        if (f == 0.0f) {
            round = 0;
        } else {
            round = i == Integer.MAX_VALUE ? Integer.MAX_VALUE : Math.round(Math.max(i - min, 0) / f);
        }
        int size2 = list.size();
        for (int i5 = 0; i5 < size2; i5++) {
            IntrinsicMeasurable intrinsicMeasurable2 = (IntrinsicMeasurable) list.get(i5);
            float weight2 = RowColumnImplKt.getWeight(RowColumnImplKt.getRowColumnParentData(intrinsicMeasurable2));
            if (weight2 > 0.0f) {
                i3 = Math.max(i3, intrinsicMeasurable2.minIntrinsicWidth(round != Integer.MAX_VALUE ? Math.round(round * weight2) : Integer.MAX_VALUE));
            }
        }
        return i3;
    }
}
