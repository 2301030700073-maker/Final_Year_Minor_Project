package androidx.compose.foundation.layout;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.collection.IntIntPair;
import androidx.compose.foundation.layout.FlowLayoutBuildingBlocks;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.MultiContentMeasurePolicy;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FlowMeasurePolicy implements MultiContentMeasurePolicy, RowColumnMeasurePolicy {
    public final CrossAxisAlignment$VerticalCrossAxisAlignment crossAxisAlignment;
    public final float crossAxisArrangementSpacing;
    public final Arrangement$Horizontal horizontalArrangement;
    public final float mainAxisSpacing;
    public final int maxLines;
    public final FlowLayoutOverflowState overflow;
    public final Arrangement$Vertical verticalArrangement;

    public FlowMeasurePolicy(Arrangement$Horizontal arrangement$Horizontal, Arrangement$Vertical arrangement$Vertical, float f, CrossAxisAlignment$VerticalCrossAxisAlignment crossAxisAlignment$VerticalCrossAxisAlignment, float f2, int i, FlowLayoutOverflowState flowLayoutOverflowState) {
        this.horizontalArrangement = arrangement$Horizontal;
        this.verticalArrangement = arrangement$Vertical;
        this.mainAxisSpacing = f;
        this.crossAxisAlignment = crossAxisAlignment$VerticalCrossAxisAlignment;
        this.crossAxisArrangementSpacing = f2;
        this.maxLines = i;
        this.overflow = flowLayoutOverflowState;
    }

    public static int intrinsicCrossAxisSize(List list, int i, int i2, int i3, int i4, FlowLayoutOverflowState flowLayoutOverflowState) {
        boolean z;
        boolean z2;
        long m105constructorimpl = IntIntPair.m105constructorimpl(0, 0);
        if (!list.isEmpty()) {
            int i5 = Integer.MAX_VALUE;
            FlowLayoutBuildingBlocks flowLayoutBuildingBlocks = new FlowLayoutBuildingBlocks(flowLayoutOverflowState, ConstraintsKt.Constraints(0, i, 0, Integer.MAX_VALUE), i4, i2, i3);
            Measurable measurable = (Measurable) CollectionsKt.getOrNull(0, list);
            int minIntrinsicHeight = measurable != null ? measurable.minIntrinsicHeight(i) : 0;
            int minIntrinsicWidth = measurable != null ? measurable.minIntrinsicWidth(minIntrinsicHeight) : 0;
            boolean z3 = true;
            if (list.size() > 1) {
                z = true;
            } else {
                z = true;
                z3 = false;
            }
            int i6 = 0;
            if (flowLayoutBuildingBlocks.m205getWrapInfoOpUlnko(z3, 0, IntIntPair.m105constructorimpl(i, Integer.MAX_VALUE), measurable == null ? null : new IntIntPair(IntIntPair.m105constructorimpl(minIntrinsicWidth, minIntrinsicHeight)), 0, 0, 0, false, false).isLastItemInContainer) {
                flowLayoutOverflowState.getClass();
                m105constructorimpl = m105constructorimpl;
            } else {
                int size = list.size();
                int i7 = i;
                int i8 = 0;
                int i9 = 0;
                int i10 = 0;
                int i11 = 0;
                int i12 = 0;
                while (true) {
                    if (i10 >= size) {
                        break;
                    }
                    int i13 = i7 - minIntrinsicWidth;
                    int i14 = i10 + 1;
                    int max = Math.max(i9, minIntrinsicHeight);
                    Measurable measurable2 = (Measurable) CollectionsKt.getOrNull(i14, list);
                    minIntrinsicHeight = measurable2 != null ? measurable2.minIntrinsicHeight(i) : 0;
                    int minIntrinsicWidth2 = measurable2 != null ? measurable2.minIntrinsicWidth(minIntrinsicHeight) + i2 : 0;
                    if (i10 + 2 < list.size()) {
                        i10 = i14;
                        z2 = z;
                    } else {
                        i10 = i14;
                        z2 = false;
                    }
                    int i15 = i10 - i12;
                    int i16 = i8;
                    int i17 = minIntrinsicWidth2;
                    FlowLayoutBuildingBlocks.WrapInfo m205getWrapInfoOpUlnko = flowLayoutBuildingBlocks.m205getWrapInfoOpUlnko(z2, i15, IntIntPair.m105constructorimpl(i13, i5), measurable2 == null ? null : new IntIntPair(IntIntPair.m105constructorimpl(minIntrinsicWidth2, minIntrinsicHeight)), i16, i6, max, false, false);
                    if (m205getWrapInfoOpUlnko.isLastItemInLine) {
                        int i18 = max + i3 + i6;
                        flowLayoutBuildingBlocks.getWrapEllipsisInfo(m205getWrapInfoOpUlnko, measurable2 != null, i16, i18, i13, i15);
                        int i19 = i17 - i2;
                        i8 = i16 + 1;
                        if (m205getWrapInfoOpUlnko.isLastItemInContainer) {
                            i11 = i10;
                            i6 = i18;
                            break;
                        }
                        i7 = i;
                        i12 = i10;
                        minIntrinsicWidth = i19;
                        i6 = i18;
                        i9 = 0;
                    } else {
                        minIntrinsicWidth = i17;
                        i7 = i13;
                        i8 = i16;
                        i9 = max;
                    }
                    i11 = i10;
                    i5 = Integer.MAX_VALUE;
                    z = true;
                }
                m105constructorimpl = IntIntPair.m105constructorimpl(i6 - i3, i11);
            }
        }
        return (int) (m105constructorimpl >> 32);
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    /* renamed from: createConstraints-xF2OJ5Q */
    public final long mo202createConstraintsxF2OJ5Q(int i, int i2, int i3, boolean z) {
        RowMeasurePolicy rowMeasurePolicy = RowKt.DefaultRowMeasurePolicy;
        return !z ? ConstraintsKt.Constraints(i, i2, 0, i3) : MathKt.m987fitPrioritizingWidthZbe2FdA(i, i2, 0, i3);
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    public final int crossAxisSize(Placeable placeable) {
        return placeable.getMeasuredHeight();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FlowMeasurePolicy)) {
            return false;
        }
        FlowMeasurePolicy flowMeasurePolicy = (FlowMeasurePolicy) obj;
        return this.horizontalArrangement.equals(flowMeasurePolicy.horizontalArrangement) && this.verticalArrangement.equals(flowMeasurePolicy.verticalArrangement) && Dp.m745equalsimpl0(this.mainAxisSpacing, flowMeasurePolicy.mainAxisSpacing) && this.crossAxisAlignment.equals(flowMeasurePolicy.crossAxisAlignment) && Dp.m745equalsimpl0(this.crossAxisArrangementSpacing, flowMeasurePolicy.crossAxisArrangementSpacing) && this.maxLines == flowMeasurePolicy.maxLines && Intrinsics.areEqual(this.overflow, flowMeasurePolicy.overflow);
    }

    public final int hashCode() {
        return this.overflow.hashCode() + ((((((Float.floatToIntBits(this.crossAxisArrangementSpacing) + ((this.crossAxisAlignment.hashCode() + CameraDevices$CC.m((this.verticalArrangement.hashCode() + ((this.horizontalArrangement.hashCode() + 38161) * 31)) * 31, this.mainAxisSpacing, 31)) * 31)) * 31) + Integer.MAX_VALUE) * 31) + this.maxLines) * 31);
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    public final int mainAxisSize(Placeable placeable) {
        return placeable.getMeasuredWidth();
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    public final int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        List list2 = (List) CollectionsKt.getOrNull(1, list);
        Measurable measurable = list2 != null ? (Measurable) CollectionsKt.firstOrNull(list2) : null;
        List list3 = (List) CollectionsKt.getOrNull(2, list);
        this.overflow.m206setOverflowMeasurableshBUhpc$foundation_layout(measurable, list3 != null ? (Measurable) CollectionsKt.firstOrNull(list3) : null, ConstraintsKt.Constraints$default(0, i, 0, 0, 13));
        List list4 = (List) CollectionsKt.firstOrNull(list);
        if (list4 == null) {
            list4 = EmptyList.INSTANCE;
        }
        return intrinsicCrossAxisSize(list4, i, intrinsicMeasureScope.mo171roundToPx0680j_4(this.mainAxisSpacing), intrinsicMeasureScope.mo171roundToPx0680j_4(this.crossAxisArrangementSpacing), this.maxLines, this.overflow);
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    public final int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        List list2 = (List) CollectionsKt.getOrNull(1, list);
        Measurable measurable = list2 != null ? (Measurable) CollectionsKt.firstOrNull(list2) : null;
        List list3 = (List) CollectionsKt.getOrNull(2, list);
        this.overflow.m206setOverflowMeasurableshBUhpc$foundation_layout(measurable, list3 != null ? (Measurable) CollectionsKt.firstOrNull(list3) : null, ConstraintsKt.Constraints$default(0, 0, 0, i, 7));
        List list4 = (List) CollectionsKt.firstOrNull(list);
        if (list4 == null) {
            list4 = EmptyList.INSTANCE;
        }
        int mo171roundToPx0680j_4 = intrinsicMeasureScope.mo171roundToPx0680j_4(this.mainAxisSpacing);
        int size = list4.size();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i2 < size) {
            int maxIntrinsicWidth = ((Measurable) list4.get(i2)).maxIntrinsicWidth(i) + mo171roundToPx0680j_4;
            int i6 = i2 + 1;
            if (i6 - i4 == Integer.MAX_VALUE || i6 == list4.size()) {
                i3 = Math.max(i3, (i5 + maxIntrinsicWidth) - mo171roundToPx0680j_4);
                i4 = i2;
                i5 = 0;
            } else {
                i5 += maxIntrinsicWidth;
            }
            i2 = i6;
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:107:0x03b3 A[LOOP:1: B:106:0x03b1->B:107:0x03b3, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x03c7  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x044a  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x046b  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x046f  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x047d  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0481  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x044e  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0137 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x023b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x026d  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x027c  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x02db  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x02f3  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0323  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x038e  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02fa  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x02e5  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02d5  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x02c0  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0270 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    /* renamed from: measure-3p2s80s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.compose.ui.layout.MeasureResult mo207measure3p2s80s(androidx.compose.ui.layout.MeasureScope r53, java.util.List r54, long r55) {
        /*
            Method dump skipped, instructions count: 1179
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.layout.FlowMeasurePolicy.mo207measure3p2s80s(androidx.compose.ui.layout.MeasureScope, java.util.List, long):androidx.compose.ui.layout.MeasureResult");
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    public final int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        List list2 = (List) CollectionsKt.getOrNull(1, list);
        Measurable measurable = list2 != null ? (Measurable) CollectionsKt.firstOrNull(list2) : null;
        List list3 = (List) CollectionsKt.getOrNull(2, list);
        this.overflow.m206setOverflowMeasurableshBUhpc$foundation_layout(measurable, list3 != null ? (Measurable) CollectionsKt.firstOrNull(list3) : null, ConstraintsKt.Constraints$default(0, i, 0, 0, 13));
        List list4 = (List) CollectionsKt.firstOrNull(list);
        if (list4 == null) {
            list4 = EmptyList.INSTANCE;
        }
        return intrinsicCrossAxisSize(list4, i, intrinsicMeasureScope.mo171roundToPx0680j_4(this.mainAxisSpacing), intrinsicMeasureScope.mo171roundToPx0680j_4(this.crossAxisArrangementSpacing), this.maxLines, this.overflow);
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    public final int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        int[] iArr;
        int i2;
        List list2;
        long m105constructorimpl;
        int i3;
        int i4;
        int i5;
        IntIntPair intIntPair;
        FlowMeasurePolicy flowMeasurePolicy = this;
        List list3 = (List) CollectionsKt.getOrNull(1, list);
        Measurable measurable = list3 != null ? (Measurable) CollectionsKt.firstOrNull(list3) : null;
        List list4 = (List) CollectionsKt.getOrNull(2, list);
        flowMeasurePolicy.overflow.m206setOverflowMeasurableshBUhpc$foundation_layout(measurable, list4 != null ? (Measurable) CollectionsKt.firstOrNull(list4) : null, ConstraintsKt.Constraints$default(0, 0, 0, i, 7));
        List list5 = (List) CollectionsKt.firstOrNull(list);
        if (list5 == null) {
            list5 = EmptyList.INSTANCE;
        }
        int mo171roundToPx0680j_4 = intrinsicMeasureScope.mo171roundToPx0680j_4(flowMeasurePolicy.mainAxisSpacing);
        int mo171roundToPx0680j_42 = intrinsicMeasureScope.mo171roundToPx0680j_4(flowMeasurePolicy.crossAxisArrangementSpacing);
        long m105constructorimpl2 = IntIntPair.m105constructorimpl(0, 0);
        if (list5.isEmpty()) {
            return 0;
        }
        int size = list5.size();
        int[] iArr2 = new int[size];
        int size2 = list5.size();
        int[] iArr3 = new int[size2];
        int size3 = list5.size();
        for (int i6 = 0; i6 < size3; i6++) {
            Measurable measurable2 = (Measurable) list5.get(i6);
            int minIntrinsicWidth = measurable2.minIntrinsicWidth(i);
            iArr2[i6] = minIntrinsicWidth;
            iArr3[i6] = measurable2.minIntrinsicHeight(minIntrinsicWidth);
        }
        int size4 = list5.size();
        int[] iArr4 = iArr3;
        FlowLayoutOverflowState flowLayoutOverflowState = flowMeasurePolicy.overflow;
        if (Integer.MAX_VALUE < size4) {
            flowLayoutOverflowState.getClass();
        }
        if (Integer.MAX_VALUE >= list5.size()) {
            flowLayoutOverflowState.getClass();
        }
        int min = Math.min(Integer.MAX_VALUE, list5.size());
        int i7 = 0;
        for (int i8 = 0; i8 < size; i8++) {
            i7 += iArr2[i8];
        }
        int size5 = ((list5.size() - 1) * mo171roundToPx0680j_4) + i7;
        if (size2 == 0) {
            Regex$$ExternalSyntheticBUOutline0.m990m();
            return 0;
        }
        int i9 = iArr4[0];
        int i10 = size2 - 1;
        int i11 = 0;
        if (1 <= i10) {
            int i12 = i9;
            int i13 = 1;
            while (true) {
                int i14 = iArr4[i13];
                if (i12 < i14) {
                    i12 = i14;
                }
                if (i13 == i10) {
                    break;
                }
                i13++;
            }
            i9 = i12;
        }
        if (size == 0) {
            Regex$$ExternalSyntheticBUOutline0.m990m();
            return 0;
        }
        int i15 = iArr2[0];
        int i16 = size - 1;
        if (1 <= i16) {
            int i17 = 1;
            while (true) {
                int i18 = iArr2[i17];
                if (i15 < i18) {
                    i15 = i18;
                }
                if (i17 == i16) {
                    break;
                }
                i17++;
            }
        }
        int i19 = size5;
        int i20 = i9;
        while (i15 <= i19 && i20 != i) {
            int i21 = (i15 + i19) / 2;
            if (list5.isEmpty()) {
                i2 = i19;
                list2 = list5;
                m105constructorimpl = m105constructorimpl2;
                iArr = iArr4;
            } else {
                int i22 = i11;
                iArr = iArr4;
                FlowLayoutBuildingBlocks flowLayoutBuildingBlocks = new FlowLayoutBuildingBlocks(flowLayoutOverflowState, ConstraintsKt.Constraints(i22, i21, i22, Integer.MAX_VALUE), flowMeasurePolicy.maxLines, mo171roundToPx0680j_4, mo171roundToPx0680j_42);
                Measurable measurable3 = (Measurable) CollectionsKt.getOrNull(i22, list5);
                int i23 = measurable3 != null ? iArr[i22] : i22;
                int i24 = measurable3 != null ? iArr2[i22] : 0;
                i2 = i19;
                int i25 = 0;
                int i26 = 0;
                int i27 = 0;
                if (flowLayoutBuildingBlocks.m205getWrapInfoOpUlnko(list5.size() > 1, 0, IntIntPair.m105constructorimpl(i21, Integer.MAX_VALUE), measurable3 == null ? null : new IntIntPair(IntIntPair.m105constructorimpl(i24, i23)), 0, 0, 0, false, false).isLastItemInContainer) {
                    flowLayoutOverflowState.getClass();
                    list2 = list5;
                    m105constructorimpl = m105constructorimpl2;
                } else {
                    int size6 = list5.size();
                    int i28 = i21;
                    int i29 = i24;
                    int i30 = 0;
                    int i31 = 0;
                    int i32 = i23;
                    int i33 = 0;
                    while (true) {
                        int i34 = i27;
                        if (i31 >= size6) {
                            list2 = list5;
                            break;
                        }
                        int i35 = i28 - i29;
                        int i36 = size6;
                        int i37 = i31 + 1;
                        i27 = Math.max(i34, i32);
                        Measurable measurable4 = (Measurable) CollectionsKt.getOrNull(i37, list5);
                        int i38 = measurable4 != null ? iArr[i37] : 0;
                        if (measurable4 != null) {
                            i3 = i37;
                            i4 = iArr2[i37] + mo171roundToPx0680j_4;
                        } else {
                            i3 = i37;
                            i4 = 0;
                        }
                        int i39 = i30;
                        boolean z = i31 + 2 < list5.size();
                        int i40 = i3 - i39;
                        long m105constructorimpl3 = IntIntPair.m105constructorimpl(i35, Integer.MAX_VALUE);
                        if (measurable4 == null) {
                            i5 = i4;
                            list2 = list5;
                            intIntPair = null;
                        } else {
                            list2 = list5;
                            i5 = i4;
                            intIntPair = new IntIntPair(IntIntPair.m105constructorimpl(i4, i38));
                        }
                        FlowLayoutBuildingBlocks.WrapInfo m205getWrapInfoOpUlnko = flowLayoutBuildingBlocks.m205getWrapInfoOpUlnko(z, i40, m105constructorimpl3, intIntPair, i25, i26, i27, false, false);
                        if (m205getWrapInfoOpUlnko.isLastItemInLine) {
                            int i41 = i27 + mo171roundToPx0680j_42 + i26;
                            int i42 = i25;
                            flowLayoutBuildingBlocks.getWrapEllipsisInfo(m205getWrapInfoOpUlnko, measurable4 != null, i42, i41, i35, i40);
                            int i43 = i5 - mo171roundToPx0680j_4;
                            i25 = i42 + 1;
                            if (m205getWrapInfoOpUlnko.isLastItemInContainer) {
                                i26 = i41;
                                i33 = i3;
                                break;
                            }
                            i5 = i43;
                            i28 = i21;
                            i26 = i41;
                            i30 = i3;
                            i27 = 0;
                        } else {
                            i28 = i35;
                            i30 = i39;
                        }
                        list5 = list2;
                        i32 = i38;
                        size6 = i36;
                        i31 = i3;
                        i33 = i31;
                        i29 = i5;
                    }
                    m105constructorimpl = IntIntPair.m105constructorimpl(i26 - mo171roundToPx0680j_42, i33);
                }
            }
            int i44 = (int) (m105constructorimpl >> 32);
            int i45 = (int) (m105constructorimpl & 4294967295L);
            if (i44 > i || i45 < min) {
                i15 = i21 + 1;
                if (i15 > i2) {
                    return i15;
                }
                flowMeasurePolicy = this;
                i19 = i2;
            } else {
                if (i44 >= i) {
                    return i21;
                }
                i19 = i21 - 1;
                flowMeasurePolicy = this;
            }
            size5 = i21;
            iArr4 = iArr;
            i11 = 0;
            i20 = i44;
            list5 = list2;
        }
        return size5;
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    public final MeasureResult placeHelper(final Placeable[] placeableArr, MeasureScope measureScope, final int i, final int[] iArr, int i2, final int i3, final int[] iArr2, final int i4, final int i5, final int i6) {
        final LayoutDirection layoutDirection = LayoutDirection.Ltr;
        return measureScope.layout(i2, i3, EmptyMap.INSTANCE, new Function1() { // from class: androidx.compose.foundation.layout.FlowLineMeasurePolicy$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                OffsetKt offsetKt;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                int[] iArr3 = iArr2;
                int i7 = iArr3 != null ? iArr3[i4] : 0;
                int i8 = i5;
                for (int i9 = i8; i9 < i6; i9++) {
                    Placeable placeable = placeableArr[i9];
                    placeable.getClass();
                    Object parentData = placeable.getParentData();
                    RowColumnParentData rowColumnParentData = parentData instanceof RowColumnParentData ? (RowColumnParentData) parentData : null;
                    if (rowColumnParentData == null || (offsetKt = rowColumnParentData.crossAxisAlignment) == null) {
                        offsetKt = this.crossAxisAlignment;
                    }
                    placementScope.place(placeable, iArr[i9 - i8], offsetKt.align$foundation_layout(i3, placeable.getMeasuredHeight(), layoutDirection, placeable, i) + i7, 0.0f);
                }
                return Unit.INSTANCE;
            }
        });
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    public final void populateMainAxisPositions(int i, int[] iArr, int[] iArr2, MeasureScope measureScope) {
        this.horizontalArrangement.arrange(measureScope, i, iArr, measureScope.getLayoutDirection(), iArr2);
    }

    public final String toString() {
        return "FlowMeasurePolicy(isHorizontal=true, horizontalArrangement=" + this.horizontalArrangement + ", verticalArrangement=" + this.verticalArrangement + ", mainAxisSpacing=" + ((Object) Dp.m746toStringimpl(this.mainAxisSpacing)) + ", crossAxisAlignment=" + this.crossAxisAlignment + ", crossAxisArrangementSpacing=" + ((Object) Dp.m746toStringimpl(this.crossAxisArrangementSpacing)) + ", maxItemsInMainAxis=2147483647, maxLines=" + this.maxLines + ", overflow=" + this.overflow + ')';
    }
}
