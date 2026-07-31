package androidx.compose.ui.layout;

import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface MultiContentMeasurePolicy {
    int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i);

    int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i);

    /* renamed from: measure-3p2s80s */
    MeasureResult mo82measure3p2s80s(MeasureScope measureScope, List list, long j);

    int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i);

    int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i);
}
