package androidx.compose.ui.node;

import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;

/* compiled from: LayoutModifierNode.kt */
/* loaded from: classes.dex */
public interface LayoutModifierNode extends DelegatableNode {
    int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i);

    int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i);

    /* renamed from: measure-3p2s80s */
    MeasureResult mo39measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j);

    int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i);

    int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i);

    /* compiled from: LayoutModifierNode.kt */
    /* renamed from: androidx.compose.ui.node.LayoutModifierNode$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
    }
}
