package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.FillNode$$ExternalSyntheticLambda0;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.DefaultIntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicsMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.node.NodeMeasuringIntrinsics$IntrinsicMinMax;
import androidx.compose.ui.node.NodeMeasuringIntrinsics$IntrinsicWidthHeight;
import androidx.compose.ui.unit.ConstraintsKt;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.collections.EmptyMap;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LazyLayoutBeyondBoundsProviderModifierNode extends Modifier.Node implements LayoutModifierNode {
    public static final LazyLayoutBeyondBoundsProviderModifierNode$Companion$emptyBeyondBoundsScope$1 emptyBeyondBoundsScope = new LazyLayoutBeyondBoundsProviderModifierNode$Companion$emptyBeyondBoundsScope$1();
    public LazyLayoutBeyondBoundsInfo beyondBoundsInfo;
    public Orientation orientation;
    public LazyLayoutBeyondBoundsState state;

    /* JADX WARN: Code restructure failed: missing block: B:24:0x001b, code lost:
    
        if (r4.orientation == androidx.compose.foundation.gestures.Orientation.Vertical) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x000d, code lost:
    
        if (r4.orientation == androidx.compose.foundation.gestures.Orientation.Horizontal) goto L30;
     */
    /* renamed from: hasMoreContent-FR3nfPY, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m251hasMoreContentFR3nfPY(androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo.Interval r5, int r6) {
        /*
            r4 = this;
            r0 = 5
            r1 = 0
            r2 = 1
            if (r6 != r0) goto L6
            goto L9
        L6:
            r0 = 6
            if (r6 != r0) goto L10
        L9:
            androidx.compose.foundation.gestures.Orientation r0 = r4.orientation
            androidx.compose.foundation.gestures.Orientation r3 = androidx.compose.foundation.gestures.Orientation.Horizontal
            if (r0 != r3) goto L24
            goto L3b
        L10:
            r0 = 3
            if (r6 != r0) goto L14
            goto L17
        L14:
            r0 = 4
            if (r6 != r0) goto L1e
        L17:
            androidx.compose.foundation.gestures.Orientation r0 = r4.orientation
            androidx.compose.foundation.gestures.Orientation r3 = androidx.compose.foundation.gestures.Orientation.Vertical
            if (r0 != r3) goto L24
            goto L3b
        L1e:
            if (r6 != r2) goto L21
            goto L24
        L21:
            r0 = 2
            if (r6 != r0) goto L3c
        L24:
            boolean r6 = r4.m252isForward4vf7U8o(r6)
            if (r6 == 0) goto L36
            int r5 = r5.end
            androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState r4 = r4.state
            int r4 = r4.getItemCount()
            int r4 = r4 - r2
            if (r5 >= r4) goto L3b
            goto L3a
        L36:
            int r4 = r5.start
            if (r4 <= 0) goto L3b
        L3a:
            return r2
        L3b:
            return r1
        L3c:
            java.lang.String r4 = "Lazy list does not support beyond bounds layout for the specified direction"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsProviderModifierNode.m251hasMoreContentFR3nfPY(androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo$Interval, int):boolean");
    }

    /* renamed from: isForward-4vf7U8o, reason: not valid java name */
    public final boolean m252isForward4vf7U8o(int i) {
        if (i == 1) {
            return false;
        }
        if (i == 2) {
            return true;
        }
        if (i == 5) {
            return false;
        }
        if (i == 6) {
            return true;
        }
        if (i == 3) {
            int ordinal = HitTestResultKt.requireLayoutNode(this).layoutDirection.ordinal();
            if (ordinal == 0) {
                return false;
            }
            if (ordinal == 1) {
                return true;
            }
            UriKt$$ExternalSyntheticBUOutline0.m857m();
            return false;
        }
        if (i != 4) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Lazy list does not support beyond bounds layout for the specified direction");
            return false;
        }
        int ordinal2 = HitTestResultKt.requireLayoutNode(this).layoutDirection.ordinal();
        if (ordinal2 == 0) {
            return true;
        }
        if (ordinal2 == 1) {
            return false;
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return false;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final /* synthetic */ int maxIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int height;
        height = mo109measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, NodeMeasuringIntrinsics$IntrinsicMinMax.Max, NodeMeasuringIntrinsics$IntrinsicWidthHeight.Height, 2), ConstraintsKt.Constraints$default(0, i, 0, 0, 13)).getHeight();
        return height;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final /* synthetic */ int maxIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int width;
        width = mo109measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, NodeMeasuringIntrinsics$IntrinsicMinMax.Max, NodeMeasuringIntrinsics$IntrinsicWidthHeight.Width, 2), ConstraintsKt.Constraints$default(0, 0, 0, i, 7)).getWidth();
        return width;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo109measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        Placeable mo571measureBRTryo0 = measurable.mo571measureBRTryo0(j);
        return measureScope.layout(mo571measureBRTryo0.width, mo571measureBRTryo0.height, EmptyMap.INSTANCE, new FillNode$$ExternalSyntheticLambda0(mo571measureBRTryo0, 4));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final /* synthetic */ int minIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int height;
        height = mo109measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, NodeMeasuringIntrinsics$IntrinsicMinMax.Min, NodeMeasuringIntrinsics$IntrinsicWidthHeight.Height, 2), ConstraintsKt.Constraints$default(0, i, 0, 0, 13)).getHeight();
        return height;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final /* synthetic */ int minIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int width;
        width = mo109measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, NodeMeasuringIntrinsics$IntrinsicMinMax.Min, NodeMeasuringIntrinsics$IntrinsicWidthHeight.Width, 2), ConstraintsKt.Constraints$default(0, 0, 0, i, 7)).getWidth();
        return width;
    }
}
