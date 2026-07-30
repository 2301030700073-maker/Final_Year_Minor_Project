package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material3.internal.TextFieldImplKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.util.MathHelpersKt;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: OutlinedTextField.kt */
/* loaded from: classes.dex */
final class OutlinedTextFieldMeasurePolicy implements MeasurePolicy {
    private final float animationProgress;
    private final Function1 onLabelMeasured;
    private final PaddingValues paddingValues;
    private final boolean singleLine;

    private final int intrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i, Function2 function2) {
        Object obj;
        int i2;
        int i3;
        Object obj2;
        int i4;
        Object obj3;
        Object obj4;
        int i5;
        Object obj5;
        int i6;
        Object obj6;
        Object obj7;
        int m718calculateHeightmKXJcVc;
        int size = list.size();
        int i7 = 0;
        while (true) {
            if (i7 >= size) {
                obj = null;
                break;
            }
            obj = list.get(i7);
            if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj), "Leading")) {
                break;
            }
            i7++;
        }
        IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) obj;
        if (intrinsicMeasurable != null) {
            i2 = OutlinedTextFieldKt.substractConstraintSafely(i, intrinsicMeasurable.maxIntrinsicWidth(Integer.MAX_VALUE));
            i3 = ((Number) function2.invoke(intrinsicMeasurable, Integer.valueOf(i))).intValue();
        } else {
            i2 = i;
            i3 = 0;
        }
        int size2 = list.size();
        int i8 = 0;
        while (true) {
            if (i8 >= size2) {
                obj2 = null;
                break;
            }
            obj2 = list.get(i8);
            if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj2), "Trailing")) {
                break;
            }
            i8++;
        }
        IntrinsicMeasurable intrinsicMeasurable2 = (IntrinsicMeasurable) obj2;
        if (intrinsicMeasurable2 != null) {
            i2 = OutlinedTextFieldKt.substractConstraintSafely(i2, intrinsicMeasurable2.maxIntrinsicWidth(Integer.MAX_VALUE));
            i4 = ((Number) function2.invoke(intrinsicMeasurable2, Integer.valueOf(i))).intValue();
        } else {
            i4 = 0;
        }
        int size3 = list.size();
        int i9 = 0;
        while (true) {
            if (i9 >= size3) {
                obj3 = null;
                break;
            }
            obj3 = list.get(i9);
            if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj3), "Label")) {
                break;
            }
            i9++;
        }
        Object obj8 = (IntrinsicMeasurable) obj3;
        int intValue = obj8 != null ? ((Number) function2.invoke(obj8, Integer.valueOf(MathHelpersKt.lerp(i2, i, this.animationProgress)))).intValue() : 0;
        int size4 = list.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size4) {
                obj4 = null;
                break;
            }
            obj4 = list.get(i10);
            if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj4), "Prefix")) {
                break;
            }
            i10++;
        }
        IntrinsicMeasurable intrinsicMeasurable3 = (IntrinsicMeasurable) obj4;
        if (intrinsicMeasurable3 != null) {
            i5 = ((Number) function2.invoke(intrinsicMeasurable3, Integer.valueOf(i2))).intValue();
            i2 = OutlinedTextFieldKt.substractConstraintSafely(i2, intrinsicMeasurable3.maxIntrinsicWidth(Integer.MAX_VALUE));
        } else {
            i5 = 0;
        }
        int size5 = list.size();
        int i11 = 0;
        while (true) {
            if (i11 >= size5) {
                obj5 = null;
                break;
            }
            obj5 = list.get(i11);
            if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj5), "Suffix")) {
                break;
            }
            i11++;
        }
        IntrinsicMeasurable intrinsicMeasurable4 = (IntrinsicMeasurable) obj5;
        if (intrinsicMeasurable4 != null) {
            int intValue2 = ((Number) function2.invoke(intrinsicMeasurable4, Integer.valueOf(i2))).intValue();
            i2 = OutlinedTextFieldKt.substractConstraintSafely(i2, intrinsicMeasurable4.maxIntrinsicWidth(Integer.MAX_VALUE));
            i6 = intValue2;
        } else {
            i6 = 0;
        }
        int size6 = list.size();
        for (int i12 = 0; i12 < size6; i12++) {
            Object obj9 = list.get(i12);
            if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj9), "TextField")) {
                int intValue3 = ((Number) function2.invoke(obj9, Integer.valueOf(i2))).intValue();
                int size7 = list.size();
                int i13 = 0;
                while (true) {
                    if (i13 >= size7) {
                        obj6 = null;
                        break;
                    }
                    obj6 = list.get(i13);
                    if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj6), "Hint")) {
                        break;
                    }
                    i13++;
                }
                Object obj10 = (IntrinsicMeasurable) obj6;
                int intValue4 = obj10 != null ? ((Number) function2.invoke(obj10, Integer.valueOf(i2))).intValue() : 0;
                int size8 = list.size();
                int i14 = 0;
                while (true) {
                    if (i14 >= size8) {
                        obj7 = null;
                        break;
                    }
                    Object obj11 = list.get(i14);
                    if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj11), "Supporting")) {
                        obj7 = obj11;
                        break;
                    }
                    i14++;
                }
                Object obj12 = (IntrinsicMeasurable) obj7;
                m718calculateHeightmKXJcVc = OutlinedTextFieldKt.m718calculateHeightmKXJcVc(i3, i4, i5, i6, intValue3, intValue, intValue4, obj12 != null ? ((Number) function2.invoke(obj12, Integer.valueOf(i))).intValue() : 0, this.animationProgress, TextFieldImplKt.getZeroConstraints(), intrinsicMeasureScope.getDensity(), this.paddingValues);
                return m718calculateHeightmKXJcVc;
            }
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }

    private final int intrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i, Function2 function2) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        int m719calculateWidthDHJA7U0;
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            Object obj7 = list.get(i2);
            if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj7), "TextField")) {
                int intValue = ((Number) function2.invoke(obj7, Integer.valueOf(i))).intValue();
                int size2 = list.size();
                int i3 = 0;
                while (true) {
                    obj = null;
                    if (i3 >= size2) {
                        obj2 = null;
                        break;
                    }
                    obj2 = list.get(i3);
                    if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj2), "Label")) {
                        break;
                    }
                    i3++;
                }
                IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) obj2;
                int intValue2 = intrinsicMeasurable != null ? ((Number) function2.invoke(intrinsicMeasurable, Integer.valueOf(i))).intValue() : 0;
                int size3 = list.size();
                int i4 = 0;
                while (true) {
                    if (i4 >= size3) {
                        obj3 = null;
                        break;
                    }
                    obj3 = list.get(i4);
                    if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj3), "Trailing")) {
                        break;
                    }
                    i4++;
                }
                IntrinsicMeasurable intrinsicMeasurable2 = (IntrinsicMeasurable) obj3;
                int intValue3 = intrinsicMeasurable2 != null ? ((Number) function2.invoke(intrinsicMeasurable2, Integer.valueOf(i))).intValue() : 0;
                int size4 = list.size();
                int i5 = 0;
                while (true) {
                    if (i5 >= size4) {
                        obj4 = null;
                        break;
                    }
                    obj4 = list.get(i5);
                    if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj4), "Leading")) {
                        break;
                    }
                    i5++;
                }
                IntrinsicMeasurable intrinsicMeasurable3 = (IntrinsicMeasurable) obj4;
                int intValue4 = intrinsicMeasurable3 != null ? ((Number) function2.invoke(intrinsicMeasurable3, Integer.valueOf(i))).intValue() : 0;
                int size5 = list.size();
                int i6 = 0;
                while (true) {
                    if (i6 >= size5) {
                        obj5 = null;
                        break;
                    }
                    obj5 = list.get(i6);
                    if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj5), "Prefix")) {
                        break;
                    }
                    i6++;
                }
                IntrinsicMeasurable intrinsicMeasurable4 = (IntrinsicMeasurable) obj5;
                int intValue5 = intrinsicMeasurable4 != null ? ((Number) function2.invoke(intrinsicMeasurable4, Integer.valueOf(i))).intValue() : 0;
                int size6 = list.size();
                int i7 = 0;
                while (true) {
                    if (i7 >= size6) {
                        obj6 = null;
                        break;
                    }
                    obj6 = list.get(i7);
                    if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj6), "Suffix")) {
                        break;
                    }
                    i7++;
                }
                IntrinsicMeasurable intrinsicMeasurable5 = (IntrinsicMeasurable) obj6;
                int intValue6 = intrinsicMeasurable5 != null ? ((Number) function2.invoke(intrinsicMeasurable5, Integer.valueOf(i))).intValue() : 0;
                int size7 = list.size();
                int i8 = 0;
                while (true) {
                    if (i8 >= size7) {
                        break;
                    }
                    Object obj8 = list.get(i8);
                    if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj8), "Hint")) {
                        obj = obj8;
                        break;
                    }
                    i8++;
                }
                IntrinsicMeasurable intrinsicMeasurable6 = (IntrinsicMeasurable) obj;
                m719calculateWidthDHJA7U0 = OutlinedTextFieldKt.m719calculateWidthDHJA7U0(intValue4, intValue3, intValue5, intValue6, intValue, intValue2, intrinsicMeasurable6 != null ? ((Number) function2.invoke(intrinsicMeasurable6, Integer.valueOf(i))).intValue() : 0, this.animationProgress, TextFieldImplKt.getZeroConstraints(), intrinsicMeasureScope.getDensity(), this.paddingValues);
                return m719calculateWidthDHJA7U0;
            }
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }

    public OutlinedTextFieldMeasurePolicy(Function1 function1, boolean z, float f, PaddingValues paddingValues) {
        this.onLabelMeasured = function1;
        this.singleLine = z;
        this.animationProgress = f;
        this.paddingValues = paddingValues;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo21measure3p2s80s(final MeasureScope measureScope, List list, long j) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        Object obj7;
        final int m719calculateWidthDHJA7U0;
        final int m718calculateHeightmKXJcVc;
        List list2 = list;
        int mo207roundToPx0680j_4 = measureScope.mo207roundToPx0680j_4(this.paddingValues.mo256calculateBottomPaddingD9Ej5fM());
        long m2389copyZbe2FdA$default = Constraints.m2389copyZbe2FdA$default(j, 0, 0, 0, 0, 10, null);
        int size = list.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                obj = null;
                break;
            }
            obj = list2.get(i);
            if (Intrinsics.areEqual(LayoutIdKt.getLayoutId((Measurable) obj), "Leading")) {
                break;
            }
            i++;
        }
        Measurable measurable = (Measurable) obj;
        Placeable mo1751measureBRTryo0 = measurable != null ? measurable.mo1751measureBRTryo0(m2389copyZbe2FdA$default) : null;
        int widthOrZero = TextFieldImplKt.widthOrZero(mo1751measureBRTryo0);
        int max = Math.max(0, TextFieldImplKt.heightOrZero(mo1751measureBRTryo0));
        int size2 = list.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size2) {
                obj2 = null;
                break;
            }
            obj2 = list2.get(i2);
            if (Intrinsics.areEqual(LayoutIdKt.getLayoutId((Measurable) obj2), "Trailing")) {
                break;
            }
            i2++;
        }
        Measurable measurable2 = (Measurable) obj2;
        Placeable mo1751measureBRTryo02 = measurable2 != null ? measurable2.mo1751measureBRTryo0(ConstraintsKt.m2413offsetNN6EwU$default(m2389copyZbe2FdA$default, -widthOrZero, 0, 2, null)) : null;
        int widthOrZero2 = widthOrZero + TextFieldImplKt.widthOrZero(mo1751measureBRTryo02);
        int max2 = Math.max(max, TextFieldImplKt.heightOrZero(mo1751measureBRTryo02));
        int size3 = list.size();
        int i3 = 0;
        while (true) {
            if (i3 >= size3) {
                obj3 = null;
                break;
            }
            obj3 = list2.get(i3);
            if (Intrinsics.areEqual(LayoutIdKt.getLayoutId((Measurable) obj3), "Prefix")) {
                break;
            }
            i3++;
        }
        Measurable measurable3 = (Measurable) obj3;
        final Placeable mo1751measureBRTryo03 = measurable3 != null ? measurable3.mo1751measureBRTryo0(ConstraintsKt.m2413offsetNN6EwU$default(m2389copyZbe2FdA$default, -widthOrZero2, 0, 2, null)) : null;
        int widthOrZero3 = widthOrZero2 + TextFieldImplKt.widthOrZero(mo1751measureBRTryo03);
        int max3 = Math.max(max2, TextFieldImplKt.heightOrZero(mo1751measureBRTryo03));
        int size4 = list.size();
        int i4 = 0;
        while (true) {
            if (i4 >= size4) {
                obj4 = null;
                break;
            }
            obj4 = list2.get(i4);
            if (Intrinsics.areEqual(LayoutIdKt.getLayoutId((Measurable) obj4), "Suffix")) {
                break;
            }
            i4++;
        }
        Measurable measurable4 = (Measurable) obj4;
        Placeable mo1751measureBRTryo04 = measurable4 != null ? measurable4.mo1751measureBRTryo0(ConstraintsKt.m2413offsetNN6EwU$default(m2389copyZbe2FdA$default, -widthOrZero3, 0, 2, null)) : null;
        int widthOrZero4 = widthOrZero3 + TextFieldImplKt.widthOrZero(mo1751measureBRTryo04);
        int max4 = Math.max(max3, TextFieldImplKt.heightOrZero(mo1751measureBRTryo04));
        int mo207roundToPx0680j_42 = measureScope.mo207roundToPx0680j_4(this.paddingValues.mo257calculateLeftPaddingu2uoSUM(measureScope.getLayoutDirection())) + measureScope.mo207roundToPx0680j_4(this.paddingValues.mo258calculateRightPaddingu2uoSUM(measureScope.getLayoutDirection()));
        int i5 = -widthOrZero4;
        int i6 = -mo207roundToPx0680j_4;
        long m2412offsetNN6EwU = ConstraintsKt.m2412offsetNN6EwU(m2389copyZbe2FdA$default, MathHelpersKt.lerp(i5 - mo207roundToPx0680j_42, -mo207roundToPx0680j_42, this.animationProgress), i6);
        int size5 = list.size();
        int i7 = 0;
        while (true) {
            if (i7 >= size5) {
                obj5 = null;
                break;
            }
            Object obj8 = list2.get(i7);
            int i8 = size5;
            if (Intrinsics.areEqual(LayoutIdKt.getLayoutId((Measurable) obj8), "Label")) {
                obj5 = obj8;
                break;
            }
            i7++;
            size5 = i8;
        }
        Measurable measurable5 = (Measurable) obj5;
        Placeable mo1751measureBRTryo05 = measurable5 != null ? measurable5.mo1751measureBRTryo0(m2412offsetNN6EwU) : null;
        this.onLabelMeasured.invoke(Size.m1198boximpl(mo1751measureBRTryo05 != null ? SizeKt.Size(mo1751measureBRTryo05.getWidth(), mo1751measureBRTryo05.getHeight()) : Size.Companion.m1210getZeroNHjbRc()));
        int size6 = list.size();
        int i9 = 0;
        while (true) {
            if (i9 >= size6) {
                obj6 = null;
                break;
            }
            obj6 = list2.get(i9);
            int i10 = size6;
            if (Intrinsics.areEqual(LayoutIdKt.getLayoutId((Measurable) obj6), "Supporting")) {
                break;
            }
            i9++;
            size6 = i10;
        }
        Measurable measurable6 = (Measurable) obj6;
        int minIntrinsicHeight = measurable6 != null ? measurable6.minIntrinsicHeight(Constraints.m2399getMinWidthimpl(j)) : 0;
        int max5 = Math.max(TextFieldImplKt.heightOrZero(mo1751measureBRTryo05) / 2, measureScope.mo207roundToPx0680j_4(this.paddingValues.mo259calculateTopPaddingD9Ej5fM()));
        long m2389copyZbe2FdA$default2 = Constraints.m2389copyZbe2FdA$default(ConstraintsKt.m2412offsetNN6EwU(j, i5, (i6 - max5) - minIntrinsicHeight), 0, 0, 0, 0, 11, null);
        int size7 = list.size();
        int i11 = 0;
        while (i11 < size7) {
            int i12 = size7;
            Measurable measurable7 = (Measurable) list2.get(i11);
            int i13 = i11;
            if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(measurable7), "TextField")) {
                final Placeable mo1751measureBRTryo06 = measurable7.mo1751measureBRTryo0(m2389copyZbe2FdA$default2);
                long m2389copyZbe2FdA$default3 = Constraints.m2389copyZbe2FdA$default(m2389copyZbe2FdA$default2, 0, 0, 0, 0, 14, null);
                int size8 = list.size();
                int i14 = 0;
                while (true) {
                    if (i14 >= size8) {
                        obj7 = null;
                        break;
                    }
                    obj7 = list2.get(i14);
                    int i15 = size8;
                    if (Intrinsics.areEqual(LayoutIdKt.getLayoutId((Measurable) obj7), "Hint")) {
                        break;
                    }
                    i14++;
                    list2 = list;
                    size8 = i15;
                }
                Measurable measurable8 = (Measurable) obj7;
                Placeable mo1751measureBRTryo07 = measurable8 != null ? measurable8.mo1751measureBRTryo0(m2389copyZbe2FdA$default3) : null;
                int max6 = Math.max(max4, Math.max(TextFieldImplKt.heightOrZero(mo1751measureBRTryo06), TextFieldImplKt.heightOrZero(mo1751measureBRTryo07)) + max5 + mo207roundToPx0680j_4);
                m719calculateWidthDHJA7U0 = OutlinedTextFieldKt.m719calculateWidthDHJA7U0(TextFieldImplKt.widthOrZero(mo1751measureBRTryo0), TextFieldImplKt.widthOrZero(mo1751measureBRTryo02), TextFieldImplKt.widthOrZero(mo1751measureBRTryo03), TextFieldImplKt.widthOrZero(mo1751measureBRTryo04), mo1751measureBRTryo06.getWidth(), TextFieldImplKt.widthOrZero(mo1751measureBRTryo05), TextFieldImplKt.widthOrZero(mo1751measureBRTryo07), this.animationProgress, j, measureScope.getDensity(), this.paddingValues);
                Placeable mo1751measureBRTryo08 = measurable6 != null ? measurable6.mo1751measureBRTryo0(Constraints.m2389copyZbe2FdA$default(ConstraintsKt.m2413offsetNN6EwU$default(m2389copyZbe2FdA$default, 0, -max6, 1, null), 0, m719calculateWidthDHJA7U0, 0, 0, 9, null)) : null;
                int heightOrZero = TextFieldImplKt.heightOrZero(mo1751measureBRTryo08);
                m718calculateHeightmKXJcVc = OutlinedTextFieldKt.m718calculateHeightmKXJcVc(TextFieldImplKt.heightOrZero(mo1751measureBRTryo0), TextFieldImplKt.heightOrZero(mo1751measureBRTryo02), TextFieldImplKt.heightOrZero(mo1751measureBRTryo03), TextFieldImplKt.heightOrZero(mo1751measureBRTryo04), mo1751measureBRTryo06.getHeight(), TextFieldImplKt.heightOrZero(mo1751measureBRTryo05), TextFieldImplKt.heightOrZero(mo1751measureBRTryo07), TextFieldImplKt.heightOrZero(mo1751measureBRTryo08), this.animationProgress, j, measureScope.getDensity(), this.paddingValues);
                int i16 = m718calculateHeightmKXJcVc - heightOrZero;
                int size9 = list.size();
                for (int i17 = 0; i17 < size9; i17++) {
                    Measurable measurable9 = (Measurable) list.get(i17);
                    if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(measurable9), "Container")) {
                        final Placeable mo1751measureBRTryo09 = measurable9.mo1751measureBRTryo0(ConstraintsKt.Constraints(m719calculateWidthDHJA7U0 != Integer.MAX_VALUE ? m719calculateWidthDHJA7U0 : 0, m719calculateWidthDHJA7U0, i16 != Integer.MAX_VALUE ? i16 : 0, i16));
                        final Placeable placeable = mo1751measureBRTryo0;
                        final Placeable placeable2 = mo1751measureBRTryo02;
                        final Placeable placeable3 = mo1751measureBRTryo04;
                        final Placeable placeable4 = mo1751measureBRTryo05;
                        final Placeable placeable5 = mo1751measureBRTryo07;
                        final Placeable placeable6 = mo1751measureBRTryo08;
                        return MeasureScope.CC.layout$default(measureScope, m719calculateWidthDHJA7U0, m718calculateHeightmKXJcVc, null, new Function1() { // from class: androidx.compose.material3.OutlinedTextFieldMeasurePolicy$measure$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj9) {
                                invoke((Placeable.PlacementScope) obj9);
                                return Unit.INSTANCE;
                            }

                            public final void invoke(Placeable.PlacementScope placementScope) {
                                float f;
                                boolean z;
                                PaddingValues paddingValues;
                                int i18 = m718calculateHeightmKXJcVc;
                                int i19 = m719calculateWidthDHJA7U0;
                                Placeable placeable7 = placeable;
                                Placeable placeable8 = placeable2;
                                Placeable placeable9 = mo1751measureBRTryo03;
                                Placeable placeable10 = placeable3;
                                Placeable placeable11 = mo1751measureBRTryo06;
                                Placeable placeable12 = placeable4;
                                Placeable placeable13 = placeable5;
                                Placeable placeable14 = mo1751measureBRTryo09;
                                Placeable placeable15 = placeable6;
                                f = this.animationProgress;
                                z = this.singleLine;
                                float density = measureScope.getDensity();
                                LayoutDirection layoutDirection = measureScope.getLayoutDirection();
                                paddingValues = this.paddingValues;
                                OutlinedTextFieldKt.place(placementScope, i18, i19, placeable7, placeable8, placeable9, placeable10, placeable11, placeable12, placeable13, placeable14, placeable15, f, z, density, layoutDirection, paddingValues);
                            }
                        }, 4, null);
                    }
                }
                throw new NoSuchElementException("Collection contains no element matching the predicate.");
            }
            i11 = i13 + 1;
            size7 = i12;
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return intrinsicHeight(intrinsicMeasureScope, list, i, new Function2() { // from class: androidx.compose.material3.OutlinedTextFieldMeasurePolicy$maxIntrinsicHeight$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                return invoke((IntrinsicMeasurable) obj, ((Number) obj2).intValue());
            }

            public final Integer invoke(IntrinsicMeasurable intrinsicMeasurable, int i2) {
                return Integer.valueOf(intrinsicMeasurable.maxIntrinsicHeight(i2));
            }
        });
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return intrinsicHeight(intrinsicMeasureScope, list, i, new Function2() { // from class: androidx.compose.material3.OutlinedTextFieldMeasurePolicy$minIntrinsicHeight$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                return invoke((IntrinsicMeasurable) obj, ((Number) obj2).intValue());
            }

            public final Integer invoke(IntrinsicMeasurable intrinsicMeasurable, int i2) {
                return Integer.valueOf(intrinsicMeasurable.minIntrinsicHeight(i2));
            }
        });
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return intrinsicWidth(intrinsicMeasureScope, list, i, new Function2() { // from class: androidx.compose.material3.OutlinedTextFieldMeasurePolicy$maxIntrinsicWidth$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                return invoke((IntrinsicMeasurable) obj, ((Number) obj2).intValue());
            }

            public final Integer invoke(IntrinsicMeasurable intrinsicMeasurable, int i2) {
                return Integer.valueOf(intrinsicMeasurable.maxIntrinsicWidth(i2));
            }
        });
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return intrinsicWidth(intrinsicMeasureScope, list, i, new Function2() { // from class: androidx.compose.material3.OutlinedTextFieldMeasurePolicy$minIntrinsicWidth$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                return invoke((IntrinsicMeasurable) obj, ((Number) obj2).intValue());
            }

            public final Integer invoke(IntrinsicMeasurable intrinsicMeasurable, int i2) {
                return Integer.valueOf(intrinsicMeasurable.minIntrinsicWidth(i2));
            }
        });
    }
}
