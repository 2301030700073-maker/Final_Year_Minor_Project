package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.RowColumnMeasurePolicy;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;

/* compiled from: RowColumnMeasurePolicy.kt */
/* loaded from: classes.dex */
public abstract class RowColumnMeasurePolicyKt {
    public static final MeasureResult measure(RowColumnMeasurePolicy rowColumnMeasurePolicy, int i, int i2, int i3, int i4, int i5, MeasureScope measureScope, List list, Placeable[] placeableArr, int i6, int i7, int[] iArr, int i8) {
        int[] iArr2;
        long j;
        long j2;
        String str;
        String str2;
        int i9;
        Integer num;
        int i10;
        int coerceIn;
        int i11;
        String str3;
        int i12;
        float f;
        String str4;
        float f2;
        long j3;
        long j4;
        String str5;
        String str6;
        String str7;
        String str8;
        int i13;
        int i14;
        String str9;
        float f3;
        int i15;
        int i16;
        float f4;
        String str10;
        long j5;
        int i17;
        String str11;
        String str12;
        int i18;
        int i19;
        float f5;
        float f6;
        char c;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        long j6;
        int[] iArr3;
        int i27;
        int i28;
        float f7;
        int[] iArr4;
        int i29;
        List list2 = list;
        int i30 = i7;
        int i31 = i30 - i6;
        int i32 = 0;
        int i33 = i6;
        int i34 = 0;
        int i35 = 0;
        int i36 = 0;
        int i37 = 0;
        int[] iArr5 = new int[i31];
        long j7 = i5;
        float f8 = 0.0f;
        int i38 = 0;
        while (true) {
            if (i33 >= i30) {
                break;
            }
            int i39 = i38;
            Measurable measurable = (Measurable) list2.get(i33);
            RowColumnParentData rowColumnParentData = RowColumnImplKt.getRowColumnParentData(measurable);
            float weight = RowColumnImplKt.getWeight(rowColumnParentData);
            i37 = (i37 != 0 || RowColumnImplKt.isRelative(rowColumnParentData)) ? 1 : i32;
            if (weight > 0.0f) {
                i36++;
                i26 = i33;
                j6 = j7;
                iArr4 = iArr5;
                i28 = i31;
                f7 = f8 + weight;
                i29 = i32;
            } else {
                if (i4 != Integer.MAX_VALUE && rowColumnParentData != null) {
                    rowColumnParentData.getFlowLayoutData();
                }
                int i40 = i3 - i35;
                Placeable placeable = placeableArr[i33];
                if (placeable == null) {
                    i23 = i40;
                    i24 = i35;
                    i25 = i36;
                    i26 = i33;
                    iArr3 = iArr5;
                    j6 = j7;
                    i27 = i39;
                    i28 = i31;
                    f7 = f8;
                    placeable = measurable.mo1751measureBRTryo0(RowColumnMeasurePolicy.CC.m276createConstraintsxF2OJ5Q$default(rowColumnMeasurePolicy, 0, 0, i3 != Integer.MAX_VALUE ? RangesKt.coerceAtLeast(i40, i32) : Integer.MAX_VALUE, i4, false, 16, null));
                } else {
                    i23 = i40;
                    i24 = i35;
                    i25 = i36;
                    i26 = i33;
                    j6 = j7;
                    iArr3 = iArr5;
                    i27 = i39;
                    i28 = i31;
                    f7 = f8;
                }
                Placeable placeable2 = placeable;
                int mainAxisSize = rowColumnMeasurePolicy.mainAxisSize(placeable2);
                int crossAxisSize = rowColumnMeasurePolicy.crossAxisSize(placeable2);
                iArr4 = iArr3;
                iArr4[i26 - i6] = mainAxisSize;
                i29 = 0;
                int min = Math.min(i5, RangesKt.coerceAtLeast(i23 - mainAxisSize, 0));
                i35 = mainAxisSize + min + i24;
                int max = Math.max(i27, crossAxisSize);
                placeableArr[i26] = placeable2;
                i39 = max;
                i34 = min;
                i36 = i25;
            }
            i33 = i26 + 1;
            iArr5 = iArr4;
            i32 = i29;
            f8 = f7;
            i31 = i28;
            i38 = i39;
            j7 = j6;
        }
        int i41 = i38;
        long j8 = j7;
        int[] iArr6 = iArr5;
        int i42 = i31;
        float f9 = f8;
        int i43 = i32;
        int i44 = i35;
        int i45 = i36;
        if (i45 == 0) {
            i11 = i44 - i34;
            iArr2 = iArr6;
            coerceIn = i43;
            i9 = i;
            i10 = i41;
            num = null;
        } else {
            int i46 = i3 != Integer.MAX_VALUE ? i3 : i;
            iArr2 = iArr6;
            long j9 = (i45 - 1) * j8;
            long coerceAtLeast = RangesKt.coerceAtLeast((i46 - i44) - j9, 0L);
            float f10 = coerceAtLeast / f9;
            int i47 = i6;
            long j10 = coerceAtLeast;
            while (true) {
                j = coerceAtLeast;
                j2 = j9;
                str = "arrangementSpacingPx ";
                str2 = "targetSpace ";
                if (i47 >= i30) {
                    break;
                }
                float weight2 = RowColumnImplKt.getWeight(RowColumnImplKt.getRowColumnParentData((Measurable) list2.get(i47)));
                float f11 = f10 * weight2;
                try {
                    j10 -= Math.round(f11);
                    i47++;
                    list2 = list;
                    i30 = i7;
                    coerceAtLeast = j;
                    j9 = j2;
                } catch (IllegalArgumentException e) {
                    throw new IllegalArgumentException("This log indicates a hard-to-reproduce Compose issue, modified with additional debugging details. Please help us by adding your experiences to the bug link provided. Thank you for helping us improve Compose. https://issuetracker.google.com/issues/297974033 mainAxisMax " + i3 + "mainAxisMin " + i + "targetSpace " + i46 + "arrangementSpacingPx " + j8 + "weightChildrenCount " + i45 + "fixedSpace " + i44 + "arrangementSpacingTotal " + j2 + "remainingToTarget " + j + "totalWeight " + f9 + "weightUnitSpace " + f10 + "itemWeight " + weight2 + "weightedSize " + f11).initCause(e);
                }
            }
            i9 = i;
            float f12 = f9;
            String str13 = "weightedSize ";
            String str14 = "weightUnitSpace ";
            String str15 = "totalWeight ";
            long j11 = j;
            String str16 = "remainingToTarget ";
            long j12 = j2;
            String str17 = "arrangementSpacingTotal ";
            long j13 = j8;
            int i48 = i41;
            int i49 = 0;
            int i50 = i6;
            int i51 = i7;
            while (i50 < i51) {
                if (placeableArr[i50] == null) {
                    Measurable measurable2 = (Measurable) list.get(i50);
                    RowColumnParentData rowColumnParentData2 = RowColumnImplKt.getRowColumnParentData(measurable2);
                    float weight3 = RowColumnImplKt.getWeight(rowColumnParentData2);
                    String str18 = str;
                    int i52 = i46;
                    if (i4 != Integer.MAX_VALUE && rowColumnParentData2 != null) {
                        rowColumnParentData2.getFlowLayoutData();
                    }
                    if (weight3 <= 0.0f) {
                        throw new IllegalStateException("All weights <= 0 should have placeables");
                    }
                    int sign = MathKt.getSign(j10);
                    String str19 = str2;
                    j10 -= sign;
                    float f13 = f10 * weight3;
                    int max2 = Math.max(0, Math.round(f13) + sign);
                    try {
                        try {
                            if (RowColumnImplKt.getFill(rowColumnParentData2)) {
                                c = 65535;
                                if (max2 != Integer.MAX_VALUE) {
                                    i20 = max2;
                                    j5 = j12;
                                    str11 = str18;
                                    i18 = sign;
                                    i19 = max2;
                                    str12 = str19;
                                    int i53 = i20;
                                    f3 = f13;
                                    i17 = i52;
                                    i15 = i45;
                                    i16 = i44;
                                    f4 = weight3;
                                    f5 = f10;
                                    str10 = str13;
                                    f6 = f12;
                                    j3 = j13;
                                    Placeable mo1751measureBRTryo0 = measurable2.mo1751measureBRTryo0(rowColumnMeasurePolicy.mo254createConstraintsxF2OJ5Q(i53, 0, i19, i4, true));
                                    int mainAxisSize2 = rowColumnMeasurePolicy.mainAxisSize(mo1751measureBRTryo0);
                                    int crossAxisSize2 = rowColumnMeasurePolicy.crossAxisSize(mo1751measureBRTryo0);
                                    iArr2[i50 - i6] = mainAxisSize2;
                                    i49 += mainAxisSize2;
                                    int max3 = Math.max(i48, crossAxisSize2);
                                    placeableArr[i50] = mo1751measureBRTryo0;
                                    i48 = max3;
                                    str4 = str10;
                                    f2 = f6;
                                    f = f5;
                                    j4 = j11;
                                    str5 = str14;
                                    str6 = str15;
                                    str7 = str16;
                                    str8 = str17;
                                    j12 = j5;
                                    str3 = str11;
                                    str9 = str12;
                                    i13 = i17;
                                    i14 = i15;
                                    i12 = i16;
                                }
                            } else {
                                c = 65535;
                            }
                            Placeable mo1751measureBRTryo02 = measurable2.mo1751measureBRTryo0(rowColumnMeasurePolicy.mo254createConstraintsxF2OJ5Q(i53, 0, i19, i4, true));
                            int mainAxisSize22 = rowColumnMeasurePolicy.mainAxisSize(mo1751measureBRTryo02);
                            int crossAxisSize22 = rowColumnMeasurePolicy.crossAxisSize(mo1751measureBRTryo02);
                            iArr2[i50 - i6] = mainAxisSize22;
                            i49 += mainAxisSize22;
                            int max32 = Math.max(i48, crossAxisSize22);
                            placeableArr[i50] = mo1751measureBRTryo02;
                            i48 = max32;
                            str4 = str10;
                            f2 = f6;
                            f = f5;
                            j4 = j11;
                            str5 = str14;
                            str6 = str15;
                            str7 = str16;
                            str8 = str17;
                            j12 = j5;
                            str3 = str11;
                            str9 = str12;
                            i13 = i17;
                            i14 = i15;
                            i12 = i16;
                        } catch (IllegalArgumentException e2) {
                            e = e2;
                            throw new IllegalArgumentException("This log indicates a hard-to-reproduce Compose issue, modified with additional debugging details. Please help us by adding your experiences to the bug link provided. Thank you for helping us improve Compose. https://issuetracker.google.com/issues/300280216 mainAxisMax " + i3 + "mainAxisMin " + i9 + str12 + i17 + str11 + j3 + "weightChildrenCount " + i15 + "fixedSpace " + i16 + str17 + j5 + str16 + j11 + str15 + f6 + str14 + f5 + "weight " + f4 + str10 + f3 + "crossAxisDesiredSize " + ((Object) null) + "remainderUnit " + i18 + "childMainAxisSize " + i19).initCause(e);
                        }
                        i20 = 0;
                        j5 = j12;
                        str11 = str18;
                        i18 = sign;
                        i19 = max2;
                        str12 = str19;
                        int i532 = i20;
                        f3 = f13;
                        i17 = i52;
                        i15 = i45;
                        i16 = i44;
                        f4 = weight3;
                        f5 = f10;
                        str10 = str13;
                        f6 = f12;
                        j3 = j13;
                    } catch (IllegalArgumentException e3) {
                        e = e3;
                        f3 = f13;
                        i15 = i45;
                        i16 = i44;
                        f4 = weight3;
                        str10 = str13;
                        j5 = j12;
                        i17 = i52;
                        str11 = str18;
                        str12 = str19;
                        i18 = sign;
                        i19 = max2;
                        f5 = f10;
                        f6 = f12;
                        j3 = j13;
                    }
                } else {
                    str3 = str;
                    i12 = i44;
                    f = f10;
                    str4 = str13;
                    f2 = f12;
                    j3 = j13;
                    j4 = j11;
                    str5 = str14;
                    str6 = str15;
                    str7 = str16;
                    str8 = str17;
                    i13 = i46;
                    i14 = i45;
                    str9 = str2;
                }
                i50++;
                str2 = str9;
                i46 = i13;
                str = str3;
                i45 = i14;
                i44 = i12;
                j11 = j4;
                f10 = f;
                str14 = str5;
                str15 = str6;
                str16 = str7;
                str17 = str8;
                i51 = i7;
                j13 = j3;
                f12 = f2;
                str13 = str4;
            }
            int i54 = i44;
            num = null;
            i10 = i48;
            coerceIn = RangesKt.coerceIn((int) (i49 + j12), 0, i3 - i54);
            i11 = i54;
        }
        if (i37 != 0) {
            int i55 = 0;
            int i56 = 0;
            for (int i57 = i6; i57 < i7; i57++) {
                Placeable placeable3 = placeableArr[i57];
                Intrinsics.checkNotNull(placeable3);
                CrossAxisAlignment crossAxisAlignment = RowColumnImplKt.getCrossAxisAlignment(RowColumnImplKt.getRowColumnParentData(placeable3));
                Integer calculateAlignmentLinePosition$foundation_layout_release = crossAxisAlignment != null ? crossAxisAlignment.calculateAlignmentLinePosition$foundation_layout_release(placeable3) : num;
                if (calculateAlignmentLinePosition$foundation_layout_release != null) {
                    int intValue = calculateAlignmentLinePosition$foundation_layout_release.intValue();
                    int crossAxisSize3 = rowColumnMeasurePolicy.crossAxisSize(placeable3);
                    i55 = Math.max(i55, intValue != Integer.MIN_VALUE ? calculateAlignmentLinePosition$foundation_layout_release.intValue() : 0);
                    if (intValue == Integer.MIN_VALUE) {
                        intValue = crossAxisSize3;
                    }
                    i56 = Math.max(i56, crossAxisSize3 - intValue);
                }
            }
            i21 = i56;
            i22 = i55;
        } else {
            i21 = 0;
            i22 = 0;
        }
        int max4 = Math.max(RangesKt.coerceAtLeast(i11 + coerceIn, 0), i9);
        int max5 = Math.max(i10, Math.max(i2, i21 + i22));
        int[] iArr7 = new int[i42];
        for (int i58 = 0; i58 < i42; i58++) {
            iArr7[i58] = 0;
        }
        rowColumnMeasurePolicy.populateMainAxisPositions(max4, iArr2, iArr7, measureScope);
        return rowColumnMeasurePolicy.placeHelper(placeableArr, measureScope, i22, iArr7, max4, max5, iArr, i8, i6, i7);
    }
}
