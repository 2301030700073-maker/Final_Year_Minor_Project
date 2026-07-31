package com.google.protobuf;

import androidx.collection.IntIntPair;
import androidx.compose.foundation.layout.FlowLayoutBuildingBlocks$WrapInfo;
import androidx.compose.foundation.layout.FlowLayoutOverflowState;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.ui.unit.Constraints;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ArrayDecoders$Registers {
    public int int1;
    public long long1;
    public Object object1;
    public int recursionDepth;

    public ArrayDecoders$Registers(FlowLayoutOverflowState flowLayoutOverflowState, long j, int i, int i2) {
        this.object1 = flowLayoutOverflowState;
        this.long1 = j;
        this.int1 = i;
        this.recursionDepth = i2;
    }

    public SpacerKt getWrapEllipsisInfo(FlowLayoutBuildingBlocks$WrapInfo flowLayoutBuildingBlocks$WrapInfo, boolean z, int i, int i2, int i3, int i4) {
        if (!flowLayoutBuildingBlocks$WrapInfo.isLastItemInContainer) {
            return null;
        }
        ((FlowLayoutOverflowState) this.object1).getClass();
        return null;
    }

    /* renamed from: getWrapInfo-OpUlnko, reason: not valid java name */
    public FlowLayoutBuildingBlocks$WrapInfo m643getWrapInfoOpUlnko(boolean z, int i, long j, IntIntPair intIntPair, int i2, int i3, int i4, boolean z2, boolean z3) {
        int i5 = this.int1;
        int i6 = this.recursionDepth;
        long j2 = this.long1;
        FlowLayoutOverflowState flowLayoutOverflowState = (FlowLayoutOverflowState) this.object1;
        int i7 = i3 + i4;
        if (intIntPair == null) {
            return new FlowLayoutBuildingBlocks$WrapInfo(true, true);
        }
        long j3 = intIntPair.packedValue;
        flowLayoutOverflowState.getClass();
        if (i2 >= Integer.MAX_VALUE || ((int) (j & 4294967295L)) - ((int) (j3 & 4294967295L)) < 0) {
            return new FlowLayoutBuildingBlocks$WrapInfo(true, true);
        }
        if (i != 0 && (i >= Integer.MAX_VALUE || ((int) (j >> 32)) - ((int) (j3 >> 32)) < 0)) {
            return z2 ? new FlowLayoutBuildingBlocks$WrapInfo(true, true) : new FlowLayoutBuildingBlocks$WrapInfo(true, m643getWrapInfoOpUlnko(z, 0, IntIntPair.m5constructorimpl(Constraints.m434getMaxWidthimpl(j2), (((int) (j & 4294967295L)) - i6) - i4), new IntIntPair(IntIntPair.m5constructorimpl(((int) (j3 >> 32)) - i5, (int) (j3 & 4294967295L))), i2 + 1, i7, 0, true, false).isLastItemInContainer);
        }
        Math.max(i4, (int) (j3 & 4294967295L));
        return new FlowLayoutBuildingBlocks$WrapInfo(false, false);
    }
}
