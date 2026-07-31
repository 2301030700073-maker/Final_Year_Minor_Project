package androidx.compose.foundation.layout;

import androidx.collection.IntIntPair;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FlowLayoutOverflowState {
    public Measurable collapseMeasurable;
    public Placeable collapsePlaceable;
    public IntIntPair collapseSize;
    public Measurable seeMoreMeasurable;
    public Placeable seeMorePlaceable;
    public IntIntPair seeMoreSize;
    public final FlowLayoutOverflow$OverflowType type;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FlowLayoutOverflow$OverflowType.values().length];
            try {
                iArr[FlowLayoutOverflow$OverflowType.Visible.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FlowLayoutOverflow$OverflowType.Clip.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FlowLayoutOverflow$OverflowType.ExpandIndicator.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FlowLayoutOverflow$OverflowType.ExpandOrCollapseIndicator.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public FlowLayoutOverflowState(FlowLayoutOverflow$OverflowType flowLayoutOverflow$OverflowType) {
        this.type = flowLayoutOverflow$OverflowType;
    }

    /* renamed from: ellipsisSize-F35zm-w$foundation_layout, reason: not valid java name */
    public final IntIntPair m117ellipsisSizeF35zmw$foundation_layout(int i, int i2, boolean z) {
        int i3 = WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()];
        if (i3 == 1 || i3 == 2) {
            return null;
        }
        if (i3 == 3) {
            if (z) {
                return this.seeMoreSize;
            }
            return null;
        }
        if (i3 != 4) {
            ContextsKt$$ExternalSyntheticBUOutline0.m();
            return null;
        }
        if (z) {
            return this.seeMoreSize;
        }
        if (i + 1 < 0 || i2 < 0) {
            return null;
        }
        return this.collapseSize;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FlowLayoutOverflowState) && this.type == ((FlowLayoutOverflowState) obj).type;
    }

    public final int hashCode() {
        return this.type.hashCode() * 961;
    }

    /* renamed from: setOverflowMeasurables--hBUhpc$foundation_layout, reason: not valid java name */
    public final void m118setOverflowMeasurableshBUhpc$foundation_layout(Measurable measurable, Measurable measurable2, long j) {
        long m127constructorimpl = OffsetKt.m127constructorimpl(j, LayoutOrientation.Horizontal);
        if (measurable != null) {
            int minIntrinsicWidth = measurable.minIntrinsicWidth(Constraints.m680getMaxHeightimpl(m127constructorimpl));
            this.seeMoreSize = new IntIntPair(IntIntPair.m8constructorimpl(minIntrinsicWidth, measurable.minIntrinsicHeight(minIntrinsicWidth)));
            this.seeMoreMeasurable = measurable instanceof Measurable ? measurable : null;
            this.seeMorePlaceable = null;
        }
        if (measurable2 != null) {
            int minIntrinsicWidth2 = measurable2.minIntrinsicWidth(Constraints.m680getMaxHeightimpl(m127constructorimpl));
            this.collapseSize = new IntIntPair(IntIntPair.m8constructorimpl(minIntrinsicWidth2, measurable2.minIntrinsicHeight(minIntrinsicWidth2)));
            this.collapseMeasurable = measurable2 instanceof Measurable ? measurable2 : null;
            this.collapsePlaceable = null;
        }
    }

    public final String toString() {
        return "FlowLayoutOverflowState(type=" + this.type + ", minLinesToShowCollapse=0, minCrossAxisSizeToShowCollapse=0)";
    }
}
