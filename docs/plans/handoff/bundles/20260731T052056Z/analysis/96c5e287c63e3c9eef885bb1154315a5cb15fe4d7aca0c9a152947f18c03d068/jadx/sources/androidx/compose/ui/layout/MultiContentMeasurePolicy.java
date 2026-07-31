package androidx.compose.ui.layout;

import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface MultiContentMeasurePolicy {
    int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i);

    int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i);

    /* renamed from: measure-3p2s80s */
    MeasureResult mo119measure3p2s80s(MeasureScope measureScope, List list, long j);

    int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i);

    int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i);
}
