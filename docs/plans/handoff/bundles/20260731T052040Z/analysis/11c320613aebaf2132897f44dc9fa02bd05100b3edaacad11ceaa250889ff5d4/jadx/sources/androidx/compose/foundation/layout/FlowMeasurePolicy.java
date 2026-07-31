package androidx.compose.foundation.layout;

import androidx.collection.IntIntPair;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.MultiContentMeasurePolicy;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import com.google.android.exoplayer2.util.Log;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.google.protobuf.ArrayDecoders$Registers;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import net.newpipe.app.AppKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowMeasurePolicy implements MultiContentMeasurePolicy, RowColumnMeasurePolicy {
    public final CrossAxisAlignment$VerticalCrossAxisAlignment crossAxisAlignment;
    public final float crossAxisArrangementSpacing;
    public final Arrangement$Horizontal horizontalArrangement;
    public final float mainAxisSpacing;
    public final FlowLayoutOverflowState overflow;
    public final Arrangement$Vertical verticalArrangement;

    public FlowMeasurePolicy(Arrangement$Horizontal arrangement$Horizontal, Arrangement$Vertical arrangement$Vertical, float f, CrossAxisAlignment$VerticalCrossAxisAlignment crossAxisAlignment$VerticalCrossAxisAlignment, float f2, FlowLayoutOverflowState flowLayoutOverflowState) {
        this.horizontalArrangement = arrangement$Horizontal;
        this.verticalArrangement = arrangement$Vertical;
        this.mainAxisSpacing = f;
        this.crossAxisAlignment = crossAxisAlignment$VerticalCrossAxisAlignment;
        this.crossAxisArrangementSpacing = f2;
        this.overflow = flowLayoutOverflowState;
    }

    public static int intrinsicCrossAxisSize(List list, int i, int i2, int i3, FlowLayoutOverflowState flowLayoutOverflowState) {
        boolean z;
        boolean z2;
        long m5constructorimpl = IntIntPair.m5constructorimpl(0, 0);
        if (!list.isEmpty()) {
            int i4 = Log.LOG_LEVEL_OFF;
            ArrayDecoders$Registers arrayDecoders$Registers = new ArrayDecoders$Registers(flowLayoutOverflowState, ConstraintsKt.Constraints(0, i, 0, Log.LOG_LEVEL_OFF), i2, i3);
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
            int i5 = 0;
            if (arrayDecoders$Registers.m643getWrapInfoOpUlnko(z3, 0, IntIntPair.m5constructorimpl(i, Log.LOG_LEVEL_OFF), measurable == null ? null : new IntIntPair(IntIntPair.m5constructorimpl(minIntrinsicWidth, minIntrinsicHeight)), 0, 0, 0, false, false).isLastItemInContainer) {
                flowLayoutOverflowState.getClass();
                m5constructorimpl = m5constructorimpl;
            } else {
                int size = list.size();
                int i6 = i;
                int i7 = 0;
                int i8 = 0;
                int i9 = 0;
                int i10 = 0;
                int i11 = 0;
                while (true) {
                    if (i9 >= size) {
                        break;
                    }
                    int i12 = i6 - minIntrinsicWidth;
                    int i13 = i9 + 1;
                    int max = Math.max(i8, minIntrinsicHeight);
                    Measurable measurable2 = (Measurable) CollectionsKt.getOrNull(i13, list);
                    minIntrinsicHeight = measurable2 != null ? measurable2.minIntrinsicHeight(i) : 0;
                    int minIntrinsicWidth2 = measurable2 != null ? measurable2.minIntrinsicWidth(minIntrinsicHeight) + i2 : 0;
                    if (i9 + 2 < list.size()) {
                        i9 = i13;
                        z2 = z;
                    } else {
                        i9 = i13;
                        z2 = false;
                    }
                    int i14 = i9 - i11;
                    int i15 = i7;
                    int i16 = minIntrinsicWidth2;
                    FlowLayoutBuildingBlocks$WrapInfo m643getWrapInfoOpUlnko = arrayDecoders$Registers.m643getWrapInfoOpUlnko(z2, i14, IntIntPair.m5constructorimpl(i12, i4), measurable2 == null ? null : new IntIntPair(IntIntPair.m5constructorimpl(minIntrinsicWidth2, minIntrinsicHeight)), i15, i5, max, false, false);
                    if (m643getWrapInfoOpUlnko.isLastItemInLine) {
                        int i17 = max + i3 + i5;
                        arrayDecoders$Registers.getWrapEllipsisInfo(m643getWrapInfoOpUlnko, measurable2 != null, i15, i17, i12, i14);
                        int i18 = i16 - i2;
                        i7 = i15 + 1;
                        if (m643getWrapInfoOpUlnko.isLastItemInContainer) {
                            i10 = i9;
                            i5 = i17;
                            break;
                        }
                        i6 = i;
                        i11 = i9;
                        minIntrinsicWidth = i18;
                        i5 = i17;
                        i8 = 0;
                    } else {
                        minIntrinsicWidth = i16;
                        i6 = i12;
                        i7 = i15;
                        i8 = max;
                    }
                    i10 = i9;
                    i4 = Log.LOG_LEVEL_OFF;
                    z = true;
                }
                m5constructorimpl = IntIntPair.m5constructorimpl(i5 - i3, i10);
            }
        }
        return (int) (m5constructorimpl >> 32);
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    /* renamed from: createConstraints-xF2OJ5Q */
    public final long mo80createConstraintsxF2OJ5Q(int i, int i2, int i3, boolean z) {
        RowMeasurePolicy rowMeasurePolicy = RowKt.DefaultRowMeasurePolicy;
        return !z ? ConstraintsKt.Constraints(i, i2, 0, i3) : AppKt.m700fitPrioritizingWidthZbe2FdA(i, i2, 0, i3);
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
        return this.horizontalArrangement.equals(flowMeasurePolicy.horizontalArrangement) && this.verticalArrangement.equals(flowMeasurePolicy.verticalArrangement) && Dp.m443equalsimpl0(this.mainAxisSpacing, flowMeasurePolicy.mainAxisSpacing) && this.crossAxisAlignment.equals(flowMeasurePolicy.crossAxisAlignment) && Dp.m443equalsimpl0(this.crossAxisArrangementSpacing, flowMeasurePolicy.crossAxisArrangementSpacing) && Intrinsics.areEqual(this.overflow, flowMeasurePolicy.overflow);
    }

    public final int hashCode() {
        return this.overflow.hashCode() + ((((((Float.floatToIntBits(this.crossAxisArrangementSpacing) + Modifier.CC.m(-1.0f, Modifier.CC.m(this.mainAxisSpacing, (this.verticalArrangement.hashCode() + ((this.horizontalArrangement.hashCode() + 38161) * 31)) * 31, 31), 31)) * 31) + Log.LOG_LEVEL_OFF) * 31) + Log.LOG_LEVEL_OFF) * 31);
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
        Measurable measurable2 = list3 != null ? (Measurable) CollectionsKt.firstOrNull(list3) : null;
        long Constraints$default = ConstraintsKt.Constraints$default(i, 0, 13);
        FlowLayoutOverflowState flowLayoutOverflowState = this.overflow;
        flowLayoutOverflowState.m81setOverflowMeasurableshBUhpc$foundation_layout(measurable, measurable2, Constraints$default);
        List list4 = (List) CollectionsKt.firstOrNull(list);
        if (list4 == null) {
            list4 = EmptyList.INSTANCE;
        }
        return intrinsicCrossAxisSize(list4, i, intrinsicMeasureScope.mo58roundToPx0680j_4(this.mainAxisSpacing), intrinsicMeasureScope.mo58roundToPx0680j_4(this.crossAxisArrangementSpacing), flowLayoutOverflowState);
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    public final int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        List list2 = (List) CollectionsKt.getOrNull(1, list);
        Measurable measurable = list2 != null ? (Measurable) CollectionsKt.firstOrNull(list2) : null;
        List list3 = (List) CollectionsKt.getOrNull(2, list);
        this.overflow.m81setOverflowMeasurableshBUhpc$foundation_layout(measurable, list3 != null ? (Measurable) CollectionsKt.firstOrNull(list3) : null, ConstraintsKt.Constraints$default(0, i, 7));
        List list4 = (List) CollectionsKt.firstOrNull(list);
        if (list4 == null) {
            list4 = EmptyList.INSTANCE;
        }
        int mo58roundToPx0680j_4 = intrinsicMeasureScope.mo58roundToPx0680j_4(this.mainAxisSpacing);
        int size = list4.size();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i2 < size) {
            int maxIntrinsicWidth = ((Measurable) list4.get(i2)).maxIntrinsicWidth(i) + mo58roundToPx0680j_4;
            int i6 = i2 + 1;
            if (i6 - i4 == Integer.MAX_VALUE || i6 == list4.size()) {
                i3 = Math.max(i3, (i5 + maxIntrinsicWidth) - mo58roundToPx0680j_4);
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
    /* JADX WARN: Removed duplicated region for block: B:105:0x03af A[LOOP:1: B:104:0x03ad->B:105:0x03af, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:109:0x03c3  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x044a  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x046b  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x046f  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x047d  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0481  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x044e  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0133 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0235 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0267  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x02d5  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x02ed  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x031d  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0388  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02f4  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02ba  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x026a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    /* renamed from: measure-3p2s80s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.compose.ui.layout.MeasureResult mo82measure3p2s80s(androidx.compose.ui.layout.MeasureScope r54, java.util.List r55, long r56) {
        /*
            Method dump skipped, instructions count: 1177
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.layout.FlowMeasurePolicy.mo82measure3p2s80s(androidx.compose.ui.layout.MeasureScope, java.util.List, long):androidx.compose.ui.layout.MeasureResult");
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    public final int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        List list2 = (List) CollectionsKt.getOrNull(1, list);
        Measurable measurable = list2 != null ? (Measurable) CollectionsKt.firstOrNull(list2) : null;
        List list3 = (List) CollectionsKt.getOrNull(2, list);
        Measurable measurable2 = list3 != null ? (Measurable) CollectionsKt.firstOrNull(list3) : null;
        long Constraints$default = ConstraintsKt.Constraints$default(i, 0, 13);
        FlowLayoutOverflowState flowLayoutOverflowState = this.overflow;
        flowLayoutOverflowState.m81setOverflowMeasurableshBUhpc$foundation_layout(measurable, measurable2, Constraints$default);
        List list4 = (List) CollectionsKt.firstOrNull(list);
        if (list4 == null) {
            list4 = EmptyList.INSTANCE;
        }
        return intrinsicCrossAxisSize(list4, i, intrinsicMeasureScope.mo58roundToPx0680j_4(this.mainAxisSpacing), intrinsicMeasureScope.mo58roundToPx0680j_4(this.crossAxisArrangementSpacing), flowLayoutOverflowState);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    public final int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        int i2;
        int[] iArr;
        FlowLayoutOverflowState flowLayoutOverflowState;
        int[] iArr2;
        IntIntPair intIntPair;
        List list2;
        long m5constructorimpl;
        int i3;
        int i4;
        int i5;
        int i6 = i;
        int i7 = 1;
        List list3 = (List) CollectionsKt.getOrNull(1, list);
        Measurable measurable = list3 != null ? (Measurable) CollectionsKt.firstOrNull(list3) : null;
        char c = 2;
        List list4 = (List) CollectionsKt.getOrNull(2, list);
        this.overflow.m81setOverflowMeasurableshBUhpc$foundation_layout(measurable, list4 != null ? (Measurable) CollectionsKt.firstOrNull(list4) : null, ConstraintsKt.Constraints$default(0, i6, 7));
        List list5 = (List) CollectionsKt.firstOrNull(list);
        if (list5 == null) {
            list5 = EmptyList.INSTANCE;
        }
        int mo58roundToPx0680j_4 = intrinsicMeasureScope.mo58roundToPx0680j_4(this.mainAxisSpacing);
        int mo58roundToPx0680j_42 = intrinsicMeasureScope.mo58roundToPx0680j_4(this.crossAxisArrangementSpacing);
        long m5constructorimpl2 = IntIntPair.m5constructorimpl(0, 0);
        if (list5.isEmpty()) {
            return 0;
        }
        int size = list5.size();
        int[] iArr3 = new int[size];
        int size2 = list5.size();
        int[] iArr4 = new int[size2];
        int size3 = list5.size();
        int i8 = 0;
        while (i8 < size3) {
            Measurable measurable2 = (Measurable) list5.get(i8);
            char c2 = c;
            int minIntrinsicWidth = measurable2.minIntrinsicWidth(i6);
            iArr3[i8] = minIntrinsicWidth;
            iArr4[i8] = measurable2.minIntrinsicHeight(minIntrinsicWidth);
            i8++;
            c = c2;
        }
        int size4 = list5.size();
        FlowLayoutOverflowState flowLayoutOverflowState2 = this.overflow;
        if (Integer.MAX_VALUE < size4) {
            flowLayoutOverflowState2.getClass();
        }
        if (Integer.MAX_VALUE >= list5.size()) {
            flowLayoutOverflowState2.getClass();
        }
        int min = Math.min(Log.LOG_LEVEL_OFF, list5.size());
        int i9 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            i9 += iArr3[i10];
        }
        int size5 = ((list5.size() - 1) * mo58roundToPx0680j_4) + i9;
        if (size2 == 0) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
            return 0;
        }
        int i11 = iArr4[0];
        int i12 = size2 - 1;
        if (1 <= i12) {
            int i13 = 1;
            i2 = 0;
            while (true) {
                int i14 = iArr4[i13];
                if (i11 < i14) {
                    i11 = i14;
                }
                if (i13 == i12) {
                    break;
                }
                i13++;
            }
        } else {
            i2 = 0;
        }
        if (size == 0) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
            return 0;
        }
        int i15 = iArr3[i2];
        int i16 = size - 1;
        if (1 <= i16) {
            int i17 = 1;
            while (true) {
                int i18 = iArr3[i17];
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
        while (i15 <= i19 && i11 != i6) {
            int i20 = (i15 + i19) / 2;
            if (list5.isEmpty()) {
                list2 = list5;
                iArr2 = iArr3;
                m5constructorimpl = m5constructorimpl2;
                iArr = iArr4;
                flowLayoutOverflowState = flowLayoutOverflowState2;
            } else {
                int i21 = i2;
                iArr = iArr4;
                flowLayoutOverflowState = flowLayoutOverflowState2;
                ArrayDecoders$Registers arrayDecoders$Registers = new ArrayDecoders$Registers(flowLayoutOverflowState, ConstraintsKt.Constraints(i21, i20, i21, Log.LOG_LEVEL_OFF), mo58roundToPx0680j_4, mo58roundToPx0680j_42);
                Measurable measurable3 = (Measurable) CollectionsKt.getOrNull(i21, list5);
                int i22 = measurable3 != null ? iArr[i21] : i21;
                int i23 = measurable3 != null ? iArr3[i21] : 0;
                boolean z = list5.size() > i7 ? i7 : 0;
                long m5constructorimpl3 = IntIntPair.m5constructorimpl(i20, Log.LOG_LEVEL_OFF);
                if (measurable3 == null) {
                    iArr2 = iArr3;
                    intIntPair = null;
                } else {
                    iArr2 = iArr3;
                    intIntPair = new IntIntPair(IntIntPair.m5constructorimpl(i23, i22));
                }
                int i24 = 0;
                if (arrayDecoders$Registers.m643getWrapInfoOpUlnko(z, 0, m5constructorimpl3, intIntPair, 0, 0, 0, false, false).isLastItemInContainer) {
                    flowLayoutOverflowState.getClass();
                    list2 = list5;
                    m5constructorimpl = m5constructorimpl2;
                } else {
                    int size6 = list5.size();
                    int i25 = i20;
                    int i26 = i23;
                    int i27 = 0;
                    int i28 = 0;
                    int i29 = 0;
                    int i30 = 0;
                    int i31 = i22;
                    int i32 = 0;
                    while (true) {
                        if (i30 >= size6) {
                            list2 = list5;
                            break;
                        }
                        int i33 = i25 - i26;
                        int i34 = size6;
                        int i35 = i30 + 1;
                        int max = Math.max(i28, i31);
                        Measurable measurable4 = (Measurable) CollectionsKt.getOrNull(i35, list5);
                        i31 = measurable4 != null ? iArr[i35] : 0;
                        if (measurable4 != null) {
                            i3 = i35;
                            i4 = iArr2[i35] + mo58roundToPx0680j_4;
                        } else {
                            i3 = i35;
                            i4 = 0;
                        }
                        list2 = list5;
                        int i36 = i3 - i29;
                        int i37 = i27;
                        FlowLayoutBuildingBlocks$WrapInfo m643getWrapInfoOpUlnko = arrayDecoders$Registers.m643getWrapInfoOpUlnko(i30 + 2 < list2.size(), i36, IntIntPair.m5constructorimpl(i33, Log.LOG_LEVEL_OFF), measurable4 == null ? null : new IntIntPair(IntIntPair.m5constructorimpl(i4, i31)), i37, i24, max, false, false);
                        if (m643getWrapInfoOpUlnko.isLastItemInLine) {
                            int i38 = max + mo58roundToPx0680j_42 + i24;
                            arrayDecoders$Registers.getWrapEllipsisInfo(m643getWrapInfoOpUlnko, measurable4 != null, i37, i38, i33, i36);
                            int i39 = i4 - mo58roundToPx0680j_4;
                            i27 = i37 + 1;
                            if (m643getWrapInfoOpUlnko.isLastItemInContainer) {
                                i24 = i38;
                                i32 = i3;
                                break;
                            }
                            i26 = i39;
                            i25 = i20;
                            i24 = i38;
                            i5 = i3;
                            i28 = 0;
                        } else {
                            i26 = i4;
                            i25 = i33;
                            i27 = i37;
                            i28 = max;
                            i5 = i29;
                        }
                        i29 = i5;
                        size6 = i34;
                        i30 = i3;
                        i32 = i30;
                        list5 = list2;
                    }
                    m5constructorimpl = IntIntPair.m5constructorimpl(i24 - mo58roundToPx0680j_42, i32);
                }
            }
            i11 = (int) (m5constructorimpl >> 32);
            int i40 = (int) (m5constructorimpl & 4294967295L);
            i6 = i;
            if (i11 > i6 || i40 < min) {
                i15 = i20 + 1;
                if (i15 > i19) {
                    return i15;
                }
            } else {
                if (i11 >= i6) {
                    return i20;
                }
                i19 = i20 - 1;
            }
            size5 = i20;
            iArr3 = iArr2;
            flowLayoutOverflowState2 = flowLayoutOverflowState;
            iArr4 = iArr;
            list5 = list2;
            i7 = 1;
            i2 = 0;
        }
        return size5;
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    public final MeasureResult placeHelper(final Placeable[] placeableArr, MeasureScope measureScope, final int[] iArr, int i, final int i2, final int[] iArr2, final int i3, final int i4, final int i5) {
        final LayoutDirection layoutDirection = LayoutDirection.Ltr;
        return measureScope.layout(i, i2, EmptyMap.INSTANCE, new Function1() { // from class: androidx.compose.foundation.layout.FlowLineMeasurePolicy$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SpacerKt spacerKt;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                int[] iArr3 = iArr2;
                int i6 = iArr3 != null ? iArr3[i3] : 0;
                int i7 = i4;
                for (int i8 = i7; i8 < i5; i8++) {
                    Placeable placeable = placeableArr[i8];
                    placeable.getClass();
                    Object parentData = placeable.getParentData();
                    RowColumnParentData rowColumnParentData = parentData instanceof RowColumnParentData ? (RowColumnParentData) parentData : null;
                    if (rowColumnParentData == null || (spacerKt = rowColumnParentData.crossAxisAlignment) == null) {
                        spacerKt = this.crossAxisAlignment;
                    }
                    placementScope.place(placeable, iArr[i8 - i7], spacerKt.align$foundation_layout(i2, placeable.getMeasuredHeight(), layoutDirection) + i6, 0.0f);
                }
                return Unit.INSTANCE;
            }
        });
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    public final void populateMainAxisPositions(int i, MeasureScope measureScope, int[] iArr, int[] iArr2) {
        this.horizontalArrangement.arrange(measureScope, i, iArr, measureScope.getLayoutDirection(), iArr2);
    }

    public final String toString() {
        return "FlowMeasurePolicy(isHorizontal=true, horizontalArrangement=" + this.horizontalArrangement + ", verticalArrangement=" + this.verticalArrangement + ", mainAxisSpacing=" + ((Object) Dp.m444toStringimpl(this.mainAxisSpacing)) + ", crossAxisAlignment=" + this.crossAxisAlignment + ", crossAxisArrangementSpacing=" + ((Object) Dp.m444toStringimpl(this.crossAxisArrangementSpacing)) + ", maxItemsInMainAxis=2147483647, maxLines=2147483647, overflow=" + this.overflow + ')';
    }
}
