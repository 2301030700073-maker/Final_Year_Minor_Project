package androidx.compose.foundation.layout;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.compose.foundation.BorderKt$$ExternalSyntheticLambda1;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import net.thunderbird.core.ui.setting.dialog.ui.components.dialog.value.ColorDialogViewKt$$ExternalSyntheticLambda4;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FlexBoxMeasurePolicy implements MeasurePolicy {
    public final MutableState flexBoxConfigState;
    public final ResolvedFlexBoxConfig resolvedFlexBoxConfig;

    public FlexBoxMeasurePolicy(MutableState mutableState) {
        this.flexBoxConfigState = mutableState;
        ResolvedFlexBoxConfig resolvedFlexBoxConfig = new ResolvedFlexBoxConfig();
        resolvedFlexBoxConfig._density = OffsetKt.DefaultDensity;
        ConstraintsKt.Constraints$default(0, 0, 0, 0, 15);
        resolvedFlexBoxConfig.wrap = 0;
        resolvedFlexBoxConfig.rowGap = 0.0f;
        resolvedFlexBoxConfig.columnGap = 0.0f;
        this.resolvedFlexBoxConfig = resolvedFlexBoxConfig;
    }

    /* renamed from: processFlexLine-7gjidqw, reason: not valid java name */
    public static void m203processFlexLine7gjidqw(FlexLine flexLine, ArrayList arrayList, ResolvedFlexBoxConfig resolvedFlexBoxConfig, int i, long j) {
        int i2;
        int i3;
        int i4;
        int i5;
        ArrayList arrayList2 = arrayList;
        int i6 = flexLine.startIndex;
        int i7 = flexLine.endIndex;
        int m734getMaxWidthimpl = Constraints.m734getMaxWidthimpl(j);
        int i8 = i7 - i6;
        int m388$default$roundToPx0680j_4 = i8 > 0 ? Modifier.CC.m388$default$roundToPx0680j_4(resolvedFlexBoxConfig, resolvedFlexBoxConfig.columnGap) * (i8 - 1) : 0;
        if (m734getMaxWidthimpl != Integer.MAX_VALUE) {
            boolean z = i < m734getMaxWidthimpl;
            if (i6 < 0 || i6 > arrayList2.size()) {
                StreamSharing$$ExternalSyntheticLambda0.m(arrayList.size(), CameraDevices$CC.m30m(i6, "fromIndex (", ") is out of bounds [0, "));
                return;
            }
            if (i7 < 0 || i7 > arrayList2.size()) {
                StreamSharing$$ExternalSyntheticLambda0.m(arrayList.size(), CameraDevices$CC.m30m(i7, "toIndex (", ") is out of bounds [0, "));
                return;
            }
            int i9 = 0;
            int i10 = 0;
            float f = 0.0f;
            int i11 = 0;
            float f2 = 0.0f;
            for (int i12 = i6; i12 < i7; i12++) {
                ResolvedFlexItemInfo resolvedFlexItemInfo = (ResolvedFlexItemInfo) arrayList2.get(i12);
                resolvedFlexItemInfo.getClass();
                float f3 = z ? 0.0f : 1.0f;
                if (f3 != 0.0f && (z || resolvedFlexItemInfo.flexBaseSize >= resolvedFlexItemInfo.hypotheticalMainSize)) {
                    resolvedFlexItemInfo.isFrozen = false;
                    i11++;
                    int i13 = resolvedFlexItemInfo.flexBaseSize;
                    i10 += i13;
                    f += f3;
                    if (!z) {
                        f2 = (1.0f * i13) + f2;
                    }
                } else {
                    int i14 = resolvedFlexItemInfo.hypotheticalMainSize;
                    resolvedFlexItemInfo.targetMainSize = i14;
                    resolvedFlexItemInfo.isFrozen = true;
                    i9 += i14;
                }
            }
            int i15 = 0;
            float f4 = ((m734getMaxWidthimpl - m388$default$roundToPx0680j_4) - i9) - i10;
            if (z) {
                float f5 = m734getMaxWidthimpl - ((m388$default$roundToPx0680j_4 + i9) + i10);
                if (f < 1.0f) {
                    float f6 = f4 * f;
                    if (Math.abs(f6) < Math.abs(f5)) {
                        f5 = f6;
                    }
                }
                if (i6 < 0 || i6 > arrayList2.size()) {
                    StreamSharing$$ExternalSyntheticLambda0.m(arrayList2.size(), CameraDevices$CC.m30m(i6, "fromIndex (", ") is out of bounds [0, "));
                    return;
                }
                if (i7 < 0 || i7 > arrayList2.size()) {
                    StreamSharing$$ExternalSyntheticLambda0.m(arrayList2.size(), CameraDevices$CC.m30m(i7, "toIndex (", ") is out of bounds [0, "));
                    return;
                }
                while (i6 < i7) {
                    ResolvedFlexItemInfo resolvedFlexItemInfo2 = (ResolvedFlexItemInfo) arrayList2.get(i6);
                    if (!resolvedFlexItemInfo2.isFrozen) {
                        int round = Math.round(f5 * 0.0f);
                        f5 -= round;
                        int i16 = resolvedFlexItemInfo2.flexBaseSize + round;
                        resolvedFlexItemInfo2.targetMainSize = i16;
                        i15 += i16;
                    }
                    i6++;
                }
                i2 = m388$default$roundToPx0680j_4;
            } else {
                int i17 = 0;
                int i18 = 0;
                int i19 = 1;
                while (i19 != 0 && i17 < i8) {
                    i17++;
                    if (i11 == 0) {
                        i2 = m388$default$roundToPx0680j_4;
                        i15 = 0;
                        break;
                    }
                    float f7 = m734getMaxWidthimpl - ((m388$default$roundToPx0680j_4 + i9) + i10);
                    if (f < 1.0f) {
                        float f8 = f4 * f;
                        if (Math.abs(f8) < Math.abs(f7)) {
                            f7 = f8;
                        }
                    }
                    float abs = Math.abs(f7);
                    if (i6 < 0 || i6 > arrayList2.size()) {
                        StreamSharing$$ExternalSyntheticLambda0.m(arrayList.size(), CameraDevices$CC.m30m(i6, "fromIndex (", ") is out of bounds [0, "));
                        return;
                    }
                    if (i7 < 0 || i7 > arrayList2.size()) {
                        StreamSharing$$ExternalSyntheticLambda0.m(arrayList.size(), CameraDevices$CC.m30m(i7, "toIndex (", ") is out of bounds [0, "));
                        return;
                    }
                    float f9 = abs;
                    float f10 = f2;
                    float f11 = f10;
                    i19 = i15;
                    int i20 = i11;
                    int i21 = i6;
                    float f12 = f;
                    int i22 = i10;
                    int i23 = i9;
                    int i24 = i19;
                    while (i21 < i7) {
                        ResolvedFlexItemInfo resolvedFlexItemInfo3 = (ResolvedFlexItemInfo) arrayList2.get(i21);
                        int i25 = m388$default$roundToPx0680j_4;
                        if (resolvedFlexItemInfo3.isFrozen) {
                            i3 = m734getMaxWidthimpl;
                            i4 = i8;
                            i5 = i21;
                        } else {
                            float f13 = resolvedFlexItemInfo3.flexBaseSize * 1.0f;
                            int round2 = Math.round((f11 > 0.0f ? f13 / f11 : 0.0f) * f9);
                            i3 = m734getMaxWidthimpl;
                            int i26 = resolvedFlexItemInfo3.flexBaseSize - round2;
                            i4 = i8;
                            i5 = i21;
                            int minMainAxisSize$foundation_layout = resolvedFlexItemInfo3.getMinMainAxisSize$foundation_layout(true);
                            if (i26 < minMainAxisSize$foundation_layout) {
                                resolvedFlexItemInfo3.isFrozen = true;
                                int i27 = resolvedFlexItemInfo3.flexBaseSize;
                                f9 -= i27 - minMainAxisSize$foundation_layout;
                                f11 -= f13;
                                resolvedFlexItemInfo3.targetMainSize = minMainAxisSize$foundation_layout;
                                i20--;
                                i23 += minMainAxisSize$foundation_layout;
                                i22 -= i27;
                                f10 -= f13;
                                f12 -= 1.0f;
                                i19 = 1;
                            } else {
                                f9 -= round2;
                                f11 -= f13;
                                resolvedFlexItemInfo3.targetMainSize = i26;
                                i24 += i26;
                            }
                        }
                        i21 = i5 + 1;
                        arrayList2 = arrayList;
                        m388$default$roundToPx0680j_4 = i25;
                        m734getMaxWidthimpl = i3;
                        i8 = i4;
                    }
                    arrayList2 = arrayList;
                    i18 = i24;
                    i9 = i23;
                    i10 = i22;
                    f = f12;
                    i11 = i20;
                    f2 = f10;
                    i15 = 0;
                }
                i2 = m388$default$roundToPx0680j_4;
                i15 = i18;
            }
            m388$default$roundToPx0680j_4 = i2 + i9 + i15;
        } else {
            if (i6 < 0 || i6 > arrayList2.size()) {
                StreamSharing$$ExternalSyntheticLambda0.m(arrayList2.size(), CameraDevices$CC.m30m(i6, "fromIndex (", ") is out of bounds [0, "));
                return;
            }
            if (i7 < 0 || i7 > arrayList2.size()) {
                StreamSharing$$ExternalSyntheticLambda0.m(arrayList2.size(), CameraDevices$CC.m30m(i7, "toIndex (", ") is out of bounds [0, "));
                return;
            }
            while (i6 < i7) {
                ResolvedFlexItemInfo resolvedFlexItemInfo4 = (ResolvedFlexItemInfo) arrayList2.get(i6);
                int i28 = resolvedFlexItemInfo4.hypotheticalMainSize;
                resolvedFlexItemInfo4.targetMainSize = i28;
                m388$default$roundToPx0680j_4 += i28;
                i6++;
            }
        }
        flexLine.mainAxisSize = m388$default$roundToPx0680j_4;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        int i2;
        ColorDialogViewKt$$ExternalSyntheticLambda4 colorDialogViewKt$$ExternalSyntheticLambda4 = (ColorDialogViewKt$$ExternalSyntheticLambda4) this.flexBoxConfigState.getValue();
        ConstraintsKt.Constraints$default(0, i, 0, 0, 13);
        ResolvedFlexBoxConfig m204resolveFlexBoxConfig3p2s80s = m204resolveFlexBoxConfig3p2s80s(colorDialogViewKt$$ExternalSyntheticLambda4, intrinsicMeasureScope);
        if (list.isEmpty()) {
            return 0;
        }
        int m388$default$roundToPx0680j_4 = Modifier.CC.m388$default$roundToPx0680j_4(m204resolveFlexBoxConfig3p2s80s, m204resolveFlexBoxConfig3p2s80s.columnGap);
        int m388$default$roundToPx0680j_42 = Modifier.CC.m388$default$roundToPx0680j_4(m204resolveFlexBoxConfig3p2s80s, m204resolveFlexBoxConfig3p2s80s.rowGap);
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < size; i6++) {
            Measurable measurable = (Measurable) list.get(i6);
            int maxIntrinsicWidth = measurable.maxIntrinsicWidth(Integer.MAX_VALUE);
            int maxIntrinsicHeight = measurable.maxIntrinsicHeight(maxIntrinsicWidth);
            int i7 = m204resolveFlexBoxConfig3p2s80s.wrap;
            if (!(i7 == 1 || i7 == 2) || i5 == 0 || i5 + maxIntrinsicWidth <= i) {
                i2 = maxIntrinsicWidth + m388$default$roundToPx0680j_4 + i5;
                i4 = Math.max(i4, maxIntrinsicHeight);
            } else {
                i2 = maxIntrinsicWidth + m388$default$roundToPx0680j_4;
                i3 = i4 + m388$default$roundToPx0680j_42 + i3;
                i4 = maxIntrinsicHeight;
            }
            i5 = i2;
        }
        return i3 + i4;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        ColorDialogViewKt$$ExternalSyntheticLambda4 colorDialogViewKt$$ExternalSyntheticLambda4 = (ColorDialogViewKt$$ExternalSyntheticLambda4) this.flexBoxConfigState.getValue();
        ConstraintsKt.Constraints$default(0, 0, 0, i, 7);
        ResolvedFlexBoxConfig m204resolveFlexBoxConfig3p2s80s = m204resolveFlexBoxConfig3p2s80s(colorDialogViewKt$$ExternalSyntheticLambda4, intrinsicMeasureScope);
        if (list.isEmpty()) {
            return 0;
        }
        int m388$default$roundToPx0680j_4 = Modifier.CC.m388$default$roundToPx0680j_4(m204resolveFlexBoxConfig3p2s80s, m204resolveFlexBoxConfig3p2s80s.columnGap);
        int i2 = m204resolveFlexBoxConfig3p2s80s.wrap;
        if (i2 == 1 || i2 == 2) {
            int size = list.size();
            int i3 = 0;
            while (r2 < size) {
                i3 = Math.max(i3, ((Measurable) list.get(r2)).maxIntrinsicWidth(i));
                r2++;
            }
            return i3;
        }
        int size2 = list.size();
        int i4 = 0;
        for (int i5 = 0; i5 < size2; i5++) {
            i4 += ((Measurable) list.get(i5)).maxIntrinsicWidth(i);
        }
        int size3 = list.size() - 1;
        return ((size3 >= 0 ? size3 : 0) * m388$default$roundToPx0680j_4) + i4;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo108measure3p2s80s(final MeasureScope measureScope, List list, long j) {
        int i;
        Object obj;
        IntProgression indices;
        int i2;
        int i3;
        ArrayList arrayList;
        int i4;
        boolean isEmpty = list.isEmpty();
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        if (isEmpty) {
            return measureScope.layout(Constraints.m736getMinWidthimpl(j), Constraints.m735getMinHeightimpl(j), emptyMap, new BorderKt$$ExternalSyntheticLambda1(29));
        }
        final ResolvedFlexBoxConfig m204resolveFlexBoxConfig3p2s80s = m204resolveFlexBoxConfig3p2s80s((ColorDialogViewKt$$ExternalSyntheticLambda4) this.flexBoxConfigState.getValue(), measureScope);
        long m216constructorimpl = OffsetKt.m216constructorimpl(j, LayoutOrientation.Horizontal);
        ArrayList arrayList2 = new ArrayList(list.size());
        int i5 = m204resolveFlexBoxConfig3p2s80s.wrap;
        int i6 = 1;
        int size = list.size();
        for (int i7 = 0; i7 < size; i7++) {
            Measurable measurable = (Measurable) list.get(i7);
            measurable.getParentData();
            ResolvedFlexItemInfo resolvedFlexItemInfo = new ResolvedFlexItemInfo();
            resolvedFlexItemInfo._density = OffsetKt.DefaultDensity;
            resolvedFlexItemInfo._minMainAxisSize = -1;
            resolvedFlexItemInfo._maxContentSize = -1;
            resolvedFlexItemInfo.measurable = measurable;
            int minMainAxisSize$foundation_layout = resolvedFlexItemInfo.getMinMainAxisSize$foundation_layout(true);
            if (resolvedFlexItemInfo._maxContentSize == -1) {
                Measurable measurable2 = resolvedFlexItemInfo.measurable;
                resolvedFlexItemInfo._maxContentSize = measurable2 != null ? measurable2.maxIntrinsicWidth(Integer.MAX_VALUE) : 0;
            }
            int i8 = resolvedFlexItemInfo._maxContentSize;
            resolvedFlexItemInfo.flexBaseSize = i8;
            if (i8 >= minMainAxisSize$foundation_layout) {
                minMainAxisSize$foundation_layout = i8;
            }
            resolvedFlexItemInfo.hypotheticalMainSize = minMainAxisSize$foundation_layout;
            resolvedFlexItemInfo.targetMainSize = minMainAxisSize$foundation_layout;
            arrayList2.add(resolvedFlexItemInfo);
        }
        final int m388$default$roundToPx0680j_4 = Modifier.CC.m388$default$roundToPx0680j_4(m204resolveFlexBoxConfig3p2s80s, m204resolveFlexBoxConfig3p2s80s.columnGap);
        int m388$default$roundToPx0680j_42 = Modifier.CC.m388$default$roundToPx0680j_4(m204resolveFlexBoxConfig3p2s80s, m204resolveFlexBoxConfig3p2s80s.rowGap);
        final ArrayList arrayList3 = new ArrayList(8);
        FlexLine flexLine = new FlexLine();
        int m733getMaxHeightimpl = Constraints.m733getMaxHeightimpl(m216constructorimpl);
        int size2 = arrayList2.size();
        FlexLine flexLine2 = flexLine;
        int i9 = m733getMaxHeightimpl;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i11 < size2) {
            ResolvedFlexItemInfo resolvedFlexItemInfo2 = (ResolvedFlexItemInfo) arrayList2.get(i11);
            int i15 = m388$default$roundToPx0680j_42;
            int i16 = m204resolveFlexBoxConfig3p2s80s.wrap;
            if (!(i16 == i6 || i16 == 2) || i11 <= i10 || i12 + resolvedFlexItemInfo2.hypotheticalMainSize <= Constraints.m734getMaxWidthimpl(m216constructorimpl)) {
                i4 = size2;
                i12 = resolvedFlexItemInfo2.hypotheticalMainSize + m388$default$roundToPx0680j_4 + i12;
                i14 = i14;
            } else {
                flexLine2.startIndex = i10;
                flexLine2.endIndex = i11;
                i4 = size2;
                m203processFlexLine7gjidqw(flexLine2, arrayList2, m204resolveFlexBoxConfig3p2s80s, i12 - m388$default$roundToPx0680j_4, m216constructorimpl);
                int i17 = flexLine2.crossAxisSize;
                i13 += i17;
                int i18 = i14;
                flexLine2.crossStart = i18;
                int i19 = i17 + i15;
                i14 = i19 + i18;
                int i20 = i9 - i19;
                if (i20 < 0) {
                    i20 = 0;
                }
                arrayList3.add(flexLine2);
                FlexLine flexLine3 = new FlexLine();
                i9 = i20;
                i12 = resolvedFlexItemInfo2.hypotheticalMainSize + m388$default$roundToPx0680j_4;
                flexLine2 = flexLine3;
                i10 = i11;
            }
            i11++;
            size2 = i4;
            i6 = 1;
            m388$default$roundToPx0680j_42 = i15;
        }
        int i21 = m388$default$roundToPx0680j_42;
        int i22 = i14;
        if (i10 < arrayList2.size()) {
            flexLine2.startIndex = i10;
            flexLine2.endIndex = arrayList2.size();
            m203processFlexLine7gjidqw(flexLine2, arrayList2, m204resolveFlexBoxConfig3p2s80s, i12 - m388$default$roundToPx0680j_4, m216constructorimpl);
            i13 += flexLine2.crossAxisSize;
            flexLine2.crossStart = i22;
            arrayList3.add(flexLine2);
        }
        if (arrayList3.size() == 1) {
            ((FlexLine) arrayList3.get(0)).crossAxisSize = Math.max(((FlexLine) arrayList3.get(0)).crossAxisSize, Constraints.m735getMinHeightimpl(m216constructorimpl));
        }
        int m733getMaxHeightimpl2 = Constraints.m733getMaxHeightimpl(m216constructorimpl);
        int size3 = arrayList3.size();
        int i23 = m733getMaxHeightimpl2;
        int i24 = i13;
        int i25 = 0;
        while (i25 < size3) {
            FlexLine flexLine4 = (FlexLine) arrayList3.get(i25);
            int i26 = flexLine4.startIndex;
            int i27 = flexLine4.endIndex;
            if (i26 >= 0) {
                int i28 = i25;
                if (i26 <= arrayList2.size()) {
                    if (i27 < 0 || i27 > arrayList2.size()) {
                        StreamSharing$$ExternalSyntheticLambda0.m(arrayList2.size(), CameraDevices$CC.m30m(i27, "toIndex (", ") is out of bounds [0, "));
                        return null;
                    }
                    int i29 = 0;
                    while (i26 < i27) {
                        ResolvedFlexItemInfo resolvedFlexItemInfo3 = (ResolvedFlexItemInfo) arrayList2.get(i26);
                        if (resolvedFlexItemInfo3.placeable != null) {
                            i29 = Math.max(i29, resolvedFlexItemInfo3.crossAxisSize);
                            i2 = size3;
                            i3 = i26;
                            arrayList = arrayList2;
                        } else {
                            int i30 = resolvedFlexItemInfo3.targetMainSize;
                            i2 = size3;
                            i3 = i26;
                            arrayList = arrayList2;
                            long m987fitPrioritizingWidthZbe2FdA = MathKt.m987fitPrioritizingWidthZbe2FdA(i30, i30, 0, i23);
                            Measurable measurable3 = resolvedFlexItemInfo3.measurable;
                            Placeable mo571measureBRTryo0 = measurable3 != null ? measurable3.mo571measureBRTryo0(m987fitPrioritizingWidthZbe2FdA) : null;
                            resolvedFlexItemInfo3.placeable = mo571measureBRTryo0;
                            int i31 = mo571measureBRTryo0 != null ? mo571measureBRTryo0.height : 0;
                            resolvedFlexItemInfo3.crossAxisSize = i31;
                            i29 = Math.max(i29, i31);
                            if (arrayList3.size() == 1) {
                                i29 = Math.max(i29, Constraints.m735getMinHeightimpl(m216constructorimpl));
                            }
                        }
                        i26 = i3 + 1;
                        size3 = i2;
                        arrayList2 = arrayList;
                    }
                    int i32 = size3;
                    ArrayList arrayList4 = arrayList2;
                    flexLine4.crossAxisSize = i29;
                    i24 += i29;
                    int m388$default$roundToPx0680j_43 = (i23 - i29) - Modifier.CC.m388$default$roundToPx0680j_4(m204resolveFlexBoxConfig3p2s80s, m204resolveFlexBoxConfig3p2s80s.rowGap);
                    i23 = m388$default$roundToPx0680j_43 < 0 ? 0 : m388$default$roundToPx0680j_43;
                    i25 = i28 + 1;
                    size3 = i32;
                    arrayList2 = arrayList4;
                }
            }
            StreamSharing$$ExternalSyntheticLambda0.m(arrayList2.size(), CameraDevices$CC.m30m(i26, "fromIndex (", ") is out of bounds [0, "));
            return null;
        }
        final ArrayList arrayList5 = arrayList2;
        int max = Math.max(i24, Constraints.m735getMinHeightimpl(m216constructorimpl));
        if (!arrayList3.isEmpty() && arrayList3.size() != 1) {
            int size4 = (max - i24) - ((arrayList3.size() - 1) * i21);
            int i33 = m204resolveFlexBoxConfig3p2s80s.wrap;
            if (i33 != 2) {
                size4 = 0;
            }
            if (i33 == 2) {
                IntRange indices2 = IntOffsetKt.getIndices(arrayList3);
                indices = new IntProgression(indices2.last, 0, -indices2.step);
            } else {
                indices = IntOffsetKt.getIndices(arrayList3);
            }
            int i34 = indices.first;
            int i35 = indices.last;
            int i36 = indices.step;
            if ((i36 > 0 && i34 <= i35) || (i36 < 0 && i35 <= i34)) {
                while (true) {
                    FlexLine flexLine5 = (FlexLine) arrayList3.get(i34);
                    flexLine5.crossStart = size4;
                    size4 += flexLine5.crossAxisSize + i21;
                    if (i34 == i35) {
                        break;
                    }
                    i34 += i36;
                }
            }
        }
        boolean z = m204resolveFlexBoxConfig3p2s80s.wrap == 2;
        if (arrayList3.isEmpty()) {
            i = 0;
        } else {
            int size5 = z ? 0 : arrayList3.size() - 1;
            i = ((FlexLine) arrayList3.get(size5)).crossAxisSize + ((FlexLine) arrayList3.get(size5)).crossStart;
        }
        int max2 = Math.max(i, Constraints.m735getMinHeightimpl(m216constructorimpl));
        if (arrayList3.isEmpty()) {
            obj = null;
        } else {
            Object obj2 = arrayList3.get(0);
            int i37 = ((FlexLine) obj2).mainAxisSize;
            int size6 = arrayList3.size() - 1;
            if (1 <= size6) {
                int i38 = i37;
                int i39 = 1;
                while (true) {
                    Object obj3 = arrayList3.get(i39);
                    int i40 = ((FlexLine) obj3).mainAxisSize;
                    if (i38 < i40) {
                        obj2 = obj3;
                        i38 = i40;
                    }
                    if (i39 == size6) {
                        break;
                    }
                    i39++;
                }
            }
            obj = obj2;
        }
        FlexLine flexLine6 = (FlexLine) obj;
        int max3 = Math.max(flexLine6 != null ? flexLine6.mainAxisSize : Constraints.m736getMinWidthimpl(m216constructorimpl), Constraints.m736getMinWidthimpl(m216constructorimpl));
        int m736getMinWidthimpl = Constraints.m736getMinWidthimpl(m216constructorimpl);
        int m734getMaxWidthimpl = Constraints.m734getMaxWidthimpl(m216constructorimpl);
        if (max3 < m736getMinWidthimpl) {
            max3 = m736getMinWidthimpl;
        }
        if (max3 <= m734getMaxWidthimpl) {
            m734getMaxWidthimpl = max3;
        }
        int m735getMinHeightimpl = Constraints.m735getMinHeightimpl(m216constructorimpl);
        int m733getMaxHeightimpl3 = Constraints.m733getMaxHeightimpl(m216constructorimpl);
        if (max2 < m735getMinHeightimpl) {
            max2 = m735getMinHeightimpl;
        }
        final int i41 = max2 > m733getMaxHeightimpl3 ? m733getMaxHeightimpl3 : max2;
        final boolean z2 = true;
        final int i42 = m734getMaxWidthimpl;
        return measureScope.layout(i42, i41, emptyMap, new Function1(this, arrayList3, arrayList5, measureScope, m204resolveFlexBoxConfig3p2s80s, i42, i41, m388$default$roundToPx0680j_4, z2) { // from class: androidx.compose.foundation.layout.FlexBoxMeasurePolicy$$ExternalSyntheticLambda1
            public final /* synthetic */ ArrayList f$1;
            public final /* synthetic */ ArrayList f$2;
            public final /* synthetic */ MeasureScope f$3;
            public final /* synthetic */ int f$5;
            public final /* synthetic */ int f$6;
            public final /* synthetic */ int f$7;
            public final /* synthetic */ boolean f$8;

            {
                this.f$5 = i42;
                this.f$6 = i41;
                this.f$7 = m388$default$roundToPx0680j_4;
                this.f$8 = z2;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj4) {
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj4;
                LayoutDirection layoutDirection = this.f$3.getLayoutDirection();
                ArrayList arrayList6 = this.f$1;
                int size7 = arrayList6.size();
                for (int i43 = 0; i43 < size7; i43++) {
                    FlexLine flexLine7 = (FlexLine) arrayList6.get(i43);
                    boolean z3 = this.f$8;
                    int i44 = z3 ? this.f$5 : this.f$6;
                    boolean z4 = layoutDirection == LayoutDirection.Rtl;
                    int i45 = flexLine7.endIndex;
                    int i46 = flexLine7.startIndex;
                    int i47 = i45 - i46;
                    ArrayList arrayList7 = this.f$2;
                    if (i47 != 0) {
                        int i48 = i44 - flexLine7.mainAxisSize;
                        if (!z4) {
                            i48 = 0;
                        }
                        IntProgression intProgression = z4 ? new IntProgression(i45 - 1, i46, -1) : RangesKt.until(i46, i45);
                        int i49 = intProgression.first;
                        int i50 = intProgression.last;
                        int i51 = intProgression.step;
                        if ((i51 > 0 && i49 <= i50) || (i51 < 0 && i50 <= i49)) {
                            while (true) {
                                ResolvedFlexItemInfo resolvedFlexItemInfo4 = (ResolvedFlexItemInfo) arrayList7.get(i49);
                                resolvedFlexItemInfo4.mainPosition = i48;
                                i48 += resolvedFlexItemInfo4.targetMainSize + this.f$7;
                                resolvedFlexItemInfo4.crossPosition = flexLine7.crossStart;
                                if (i49 == i50) {
                                    break;
                                }
                                i49 += i51;
                            }
                        }
                    }
                    int i52 = flexLine7.startIndex;
                    int i53 = flexLine7.endIndex;
                    if (i52 < 0 || i52 > arrayList7.size()) {
                        StreamSharing$$ExternalSyntheticLambda0.m(arrayList7.size(), CameraDevices$CC.m30m(i52, "fromIndex (", ") is out of bounds [0, "));
                        return null;
                    }
                    if (i53 < 0 || i53 > arrayList7.size()) {
                        StreamSharing$$ExternalSyntheticLambda0.m(arrayList7.size(), CameraDevices$CC.m30m(i53, "toIndex (", ") is out of bounds [0, "));
                        return null;
                    }
                    while (i52 < i53) {
                        ResolvedFlexItemInfo resolvedFlexItemInfo5 = (ResolvedFlexItemInfo) arrayList7.get(i52);
                        int i54 = z3 ? resolvedFlexItemInfo5.mainPosition : resolvedFlexItemInfo5.crossPosition;
                        int i55 = z3 ? resolvedFlexItemInfo5.crossPosition : resolvedFlexItemInfo5.mainPosition;
                        Placeable placeable = resolvedFlexItemInfo5.placeable;
                        if (placeable != null) {
                            Placeable.PlacementScope.placeRelative$default(placementScope, placeable, i54, i55);
                        }
                        i52++;
                    }
                }
                return Unit.INSTANCE;
            }
        });
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        int i2;
        ColorDialogViewKt$$ExternalSyntheticLambda4 colorDialogViewKt$$ExternalSyntheticLambda4 = (ColorDialogViewKt$$ExternalSyntheticLambda4) this.flexBoxConfigState.getValue();
        ConstraintsKt.Constraints$default(0, i, 0, 0, 13);
        ResolvedFlexBoxConfig m204resolveFlexBoxConfig3p2s80s = m204resolveFlexBoxConfig3p2s80s(colorDialogViewKt$$ExternalSyntheticLambda4, intrinsicMeasureScope);
        if (list.isEmpty()) {
            return 0;
        }
        int m388$default$roundToPx0680j_4 = Modifier.CC.m388$default$roundToPx0680j_4(m204resolveFlexBoxConfig3p2s80s, m204resolveFlexBoxConfig3p2s80s.columnGap);
        int m388$default$roundToPx0680j_42 = Modifier.CC.m388$default$roundToPx0680j_4(m204resolveFlexBoxConfig3p2s80s, m204resolveFlexBoxConfig3p2s80s.rowGap);
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < size; i6++) {
            Measurable measurable = (Measurable) list.get(i6);
            int minIntrinsicWidth = measurable.minIntrinsicWidth(Integer.MAX_VALUE);
            int minIntrinsicHeight = measurable.minIntrinsicHeight(minIntrinsicWidth);
            int i7 = m204resolveFlexBoxConfig3p2s80s.wrap;
            if (!(i7 == 1 || i7 == 2) || i5 == 0 || i5 + minIntrinsicWidth <= i) {
                i2 = minIntrinsicWidth + m388$default$roundToPx0680j_4 + i5;
                i4 = Math.max(i4, minIntrinsicHeight);
            } else {
                i2 = minIntrinsicWidth + m388$default$roundToPx0680j_4;
                i3 = i4 + m388$default$roundToPx0680j_42 + i3;
                i4 = minIntrinsicHeight;
            }
            i5 = i2;
        }
        return i3 + i4;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        ColorDialogViewKt$$ExternalSyntheticLambda4 colorDialogViewKt$$ExternalSyntheticLambda4 = (ColorDialogViewKt$$ExternalSyntheticLambda4) this.flexBoxConfigState.getValue();
        ConstraintsKt.Constraints$default(0, 0, 0, i, 7);
        ResolvedFlexBoxConfig m204resolveFlexBoxConfig3p2s80s = m204resolveFlexBoxConfig3p2s80s(colorDialogViewKt$$ExternalSyntheticLambda4, intrinsicMeasureScope);
        if (list.isEmpty()) {
            return 0;
        }
        int m388$default$roundToPx0680j_4 = Modifier.CC.m388$default$roundToPx0680j_4(m204resolveFlexBoxConfig3p2s80s, m204resolveFlexBoxConfig3p2s80s.columnGap);
        int i2 = m204resolveFlexBoxConfig3p2s80s.wrap;
        if (i2 == 1 || i2 == 2) {
            int size = list.size();
            int i3 = 0;
            while (r2 < size) {
                i3 = Math.max(i3, ((Measurable) list.get(r2)).minIntrinsicWidth(i));
                r2++;
            }
            return i3;
        }
        int size2 = list.size();
        int i4 = 0;
        for (int i5 = 0; i5 < size2; i5++) {
            i4 += ((Measurable) list.get(i5)).minIntrinsicWidth(i);
        }
        int size3 = list.size() - 1;
        return ((size3 >= 0 ? size3 : 0) * m388$default$roundToPx0680j_4) + i4;
    }

    /* renamed from: resolveFlexBoxConfig-3p2s80s, reason: not valid java name */
    public final ResolvedFlexBoxConfig m204resolveFlexBoxConfig3p2s80s(ColorDialogViewKt$$ExternalSyntheticLambda4 colorDialogViewKt$$ExternalSyntheticLambda4, IntrinsicMeasureScope intrinsicMeasureScope) {
        ResolvedFlexBoxConfig resolvedFlexBoxConfig = this.resolvedFlexBoxConfig;
        resolvedFlexBoxConfig._density = intrinsicMeasureScope;
        resolvedFlexBoxConfig.wrap = 0;
        resolvedFlexBoxConfig.rowGap = 0.0f;
        resolvedFlexBoxConfig.columnGap = 0.0f;
        colorDialogViewKt$$ExternalSyntheticLambda4.getClass();
        resolvedFlexBoxConfig.wrap = 1;
        resolvedFlexBoxConfig.rowGap = 8.0f;
        resolvedFlexBoxConfig.columnGap = 8.0f;
        return resolvedFlexBoxConfig;
    }
}
