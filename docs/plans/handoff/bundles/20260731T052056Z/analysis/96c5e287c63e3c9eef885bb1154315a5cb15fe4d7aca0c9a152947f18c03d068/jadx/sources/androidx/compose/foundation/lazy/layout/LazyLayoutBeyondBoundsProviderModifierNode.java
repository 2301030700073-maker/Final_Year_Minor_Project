package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda12;
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
import androidx.compose.ui.unit.LayoutDirection;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import kotlin.collections.EmptyMap;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyLayoutBeyondBoundsProviderModifierNode extends Modifier.Node implements LayoutModifierNode {
    public static final LazyLayoutBeyondBoundsProviderModifierNode$Companion$emptyBeyondBoundsScope$1 emptyBeyondBoundsScope = new LazyLayoutBeyondBoundsProviderModifierNode$Companion$emptyBeyondBoundsScope$1();
    public LazyLayoutBeyondBoundsInfo beyondBoundsInfo;
    public Orientation orientation;
    public LazyLayoutBeyondBoundsState state;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            try {
                iArr[LayoutDirection.Ltr.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayoutDirection.Rtl.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: hasMoreContent-FR3nfPY, reason: not valid java name */
    public final boolean m161hasMoreContentFR3nfPY(LazyLayoutBeyondBoundsInfo.Interval interval, int i) {
        if (i == 5 || i == 6) {
            if (this.orientation == Orientation.Horizontal) {
                return false;
            }
        } else if (i == 3 || i == 4) {
            if (this.orientation == Orientation.Vertical) {
                return false;
            }
        } else if (i != 1 && i != 2) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Lazy list does not support beyond bounds layout for the specified direction");
            return false;
        }
        if (m162isForward4vf7U8o(i)) {
            if (interval.end >= this.state.getItemCount() - 1) {
                return false;
            }
        } else if (interval.start <= 0) {
            return false;
        }
        return true;
    }

    /* renamed from: isForward-4vf7U8o, reason: not valid java name */
    public final boolean m162isForward4vf7U8o(int i) {
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
            int i2 = WhenMappings.$EnumSwitchMapping$0[HitTestResultKt.requireLayoutNode(this).layoutDirection.ordinal()];
            if (i2 == 1) {
                return false;
            }
            if (i2 == 2) {
                return true;
            }
            ContextsKt$$ExternalSyntheticBUOutline0.m();
            return false;
        }
        if (i != 4) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Lazy list does not support beyond bounds layout for the specified direction");
            return false;
        }
        int i3 = WhenMappings.$EnumSwitchMapping$0[HitTestResultKt.requireLayoutNode(this).layoutDirection.ordinal()];
        if (i3 == 1) {
            return true;
        }
        if (i3 == 2) {
            return false;
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m();
        return false;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final /* synthetic */ int maxIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int height;
        height = mo16measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, NodeMeasuringIntrinsics$IntrinsicMinMax.Max, NodeMeasuringIntrinsics$IntrinsicWidthHeight.Height, 2), ConstraintsKt.Constraints$default(0, i, 0, 0, 13)).getHeight();
        return height;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final /* synthetic */ int maxIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int width;
        width = mo16measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, NodeMeasuringIntrinsics$IntrinsicMinMax.Max, NodeMeasuringIntrinsics$IntrinsicWidthHeight.Width, 2), ConstraintsKt.Constraints$default(0, 0, 0, i, 7)).getWidth();
        return width;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo16measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        Placeable mo512measureBRTryo0 = measurable.mo512measureBRTryo0(j);
        return measureScope.layout(mo512measureBRTryo0.width, mo512measureBRTryo0.height, EmptyMap.INSTANCE, new AppBarKt$$ExternalSyntheticLambda12(mo512measureBRTryo0, 7));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final /* synthetic */ int minIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int height;
        height = mo16measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, NodeMeasuringIntrinsics$IntrinsicMinMax.Min, NodeMeasuringIntrinsics$IntrinsicWidthHeight.Height, 2), ConstraintsKt.Constraints$default(0, i, 0, 0, 13)).getHeight();
        return height;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final /* synthetic */ int minIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int width;
        width = mo16measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, NodeMeasuringIntrinsics$IntrinsicMinMax.Min, NodeMeasuringIntrinsics$IntrinsicWidthHeight.Width, 2), ConstraintsKt.Constraints$default(0, 0, 0, i, 7)).getWidth();
        return width;
    }
}
