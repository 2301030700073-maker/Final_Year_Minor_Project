package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.Placeable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FlowLayoutBuildingBlocks {
    public final long constraints;
    public final int crossAxisSpacing;
    public final int mainAxisSpacing;
    public final int maxItemsInMainAxis;
    public final FlowLayoutOverflowState overflow;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class WrapEllipsisInfo {
        public final Measurable ellipsis;
        public final long ellipsisSize;
        public boolean placeEllipsisOnLastContentLine = true;
        public final Placeable placeable;

        public WrapEllipsisInfo(Measurable measurable, Placeable placeable, long j) {
            this.ellipsis = measurable;
            this.placeable = placeable;
            this.ellipsisSize = j;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class WrapInfo {
        public final boolean isLastItemInContainer;
        public final boolean isLastItemInLine;

        public WrapInfo(boolean z, boolean z2) {
            this.isLastItemInLine = z;
            this.isLastItemInContainer = z2;
        }
    }

    public FlowLayoutBuildingBlocks(int i, FlowLayoutOverflowState flowLayoutOverflowState, long j, int i2, int i3) {
        this.maxItemsInMainAxis = i;
        this.overflow = flowLayoutOverflowState;
        this.constraints = j;
        this.mainAxisSpacing = i2;
        this.crossAxisSpacing = i3;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.compose.foundation.layout.FlowLayoutBuildingBlocks.WrapEllipsisInfo getWrapEllipsisInfo(androidx.compose.foundation.layout.FlowLayoutBuildingBlocks.WrapInfo r6, boolean r7, int r8, int r9, int r10, int r11) {
        /*
            r5 = this;
            boolean r6 = r6.isLastItemInContainer
            r0 = 0
            if (r6 != 0) goto L6
            goto L49
        L6:
            androidx.compose.foundation.layout.FlowLayoutOverflowState r6 = r5.overflow
            androidx.compose.foundation.layout.FlowLayoutOverflow$OverflowType r1 = r6.type
            int[] r2 = androidx.compose.foundation.layout.FlowLayoutOverflowState.WhenMappings.$EnumSwitchMapping$0
            int r1 = r1.ordinal()
            r1 = r2[r1]
            r2 = 1
            if (r1 == r2) goto L3b
            r3 = 2
            if (r1 == r3) goto L3b
            r3 = 3
            if (r1 == r3) goto L23
            r3 = 4
            if (r1 != r3) goto L1f
            goto L23
        L1f:
            coil3.util.ContextsKt$$ExternalSyntheticBUOutline0.m()
            return r0
        L23:
            if (r7 == 0) goto L2c
            androidx.compose.ui.layout.Measurable r7 = r6.seeMoreMeasurable
            androidx.collection.IntIntPair r9 = r6.seeMoreSize
            androidx.compose.ui.layout.Placeable r6 = r6.seeMorePlaceable
            goto L39
        L2c:
            r7 = -1
            if (r8 < r7) goto L34
            if (r9 < 0) goto L34
            androidx.compose.ui.layout.Measurable r7 = r6.collapseMeasurable
            goto L35
        L34:
            r7 = r0
        L35:
            androidx.collection.IntIntPair r9 = r6.collapseSize
            androidx.compose.ui.layout.Placeable r6 = r6.collapsePlaceable
        L39:
            if (r7 != 0) goto L3d
        L3b:
            r1 = r0
            goto L47
        L3d:
            androidx.compose.foundation.layout.FlowLayoutBuildingBlocks$WrapEllipsisInfo r1 = new androidx.compose.foundation.layout.FlowLayoutBuildingBlocks$WrapEllipsisInfo
            r9.getClass()
            long r3 = r9.packedValue
            r1.<init>(r7, r6, r3)
        L47:
            if (r1 != 0) goto L4a
        L49:
            return r0
        L4a:
            if (r8 < 0) goto L5c
            if (r11 == 0) goto L5d
            long r6 = r1.ellipsisSize
            r8 = 32
            long r6 = r6 >> r8
            int r6 = (int) r6
            int r10 = r10 - r6
            if (r10 < 0) goto L5c
            int r5 = r5.maxItemsInMainAxis
            if (r11 >= r5) goto L5c
            goto L5d
        L5c:
            r2 = 0
        L5d:
            r1.placeEllipsisOnLastContentLine = r2
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.layout.FlowLayoutBuildingBlocks.getWrapEllipsisInfo(androidx.compose.foundation.layout.FlowLayoutBuildingBlocks$WrapInfo, boolean, int, int, int, int):androidx.compose.foundation.layout.FlowLayoutBuildingBlocks$WrapEllipsisInfo");
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00c5, code lost:
    
        if ((((((int) (r24 >> 32)) - ((int) (r5 >> 32))) - r8) - ((int) (r11 >> 32))) < 0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x005a, code lost:
    
        if ((((int) (r24 >> 32)) - ((int) (r5 >> 32))) < 0) goto L23;
     */
    /* renamed from: getWrapInfo-OpUlnko, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.compose.foundation.layout.FlowLayoutBuildingBlocks.WrapInfo m116getWrapInfoOpUlnko(boolean r22, int r23, long r24, androidx.collection.IntIntPair r26, int r27, int r28, int r29, boolean r30, boolean r31) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.layout.FlowLayoutBuildingBlocks.m116getWrapInfoOpUlnko(boolean, int, long, androidx.collection.IntIntPair, int, int, int, boolean, boolean):androidx.compose.foundation.layout.FlowLayoutBuildingBlocks$WrapInfo");
    }
}
