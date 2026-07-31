package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material3.internal.LayoutUtilKt;
import androidx.compose.material3.internal.TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0;
import androidx.compose.material3.tokens.MotionTokens;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda0;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.util.ListUtilsKt;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.List;
import kotlin.UnsignedKt;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextFieldMeasurePolicy implements MeasurePolicy {
    public final TextFieldLabelPosition$Attached labelPosition;
    public final TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0 labelProgress;
    public final float minimizedLabelHalfHeight;
    public final PaddingValues paddingValues;
    public final boolean singleLine;

    public TextFieldMeasurePolicy(boolean z, TextFieldLabelPosition$Attached textFieldLabelPosition$Attached, TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0 textFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0, PaddingValues paddingValues, float f) {
        this.singleLine = z;
        this.labelPosition = textFieldLabelPosition$Attached;
        this.labelProgress = textFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0;
        this.paddingValues = paddingValues;
        this.minimizedLabelHalfHeight = f;
    }

    public static int intrinsicWidth(List list, int i, Function2 function2) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            Object obj7 = list.get(i2);
            if (Intrinsics.areEqual(LayoutUtilKt.getLayoutId((Measurable) obj7), "TextField")) {
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
                    if (Intrinsics.areEqual(LayoutUtilKt.getLayoutId((Measurable) obj2), "Label")) {
                        break;
                    }
                    i3++;
                }
                Measurable measurable = (Measurable) obj2;
                int intValue2 = measurable != null ? ((Number) function2.invoke(measurable, Integer.valueOf(i))).intValue() : 0;
                int size3 = list.size();
                int i4 = 0;
                while (true) {
                    if (i4 >= size3) {
                        obj3 = null;
                        break;
                    }
                    obj3 = list.get(i4);
                    if (Intrinsics.areEqual(LayoutUtilKt.getLayoutId((Measurable) obj3), "Trailing")) {
                        break;
                    }
                    i4++;
                }
                Measurable measurable2 = (Measurable) obj3;
                int intValue3 = measurable2 != null ? ((Number) function2.invoke(measurable2, Integer.valueOf(i))).intValue() : 0;
                int size4 = list.size();
                int i5 = 0;
                while (true) {
                    if (i5 >= size4) {
                        obj4 = null;
                        break;
                    }
                    obj4 = list.get(i5);
                    if (Intrinsics.areEqual(LayoutUtilKt.getLayoutId((Measurable) obj4), "Prefix")) {
                        break;
                    }
                    i5++;
                }
                Measurable measurable3 = (Measurable) obj4;
                int intValue4 = measurable3 != null ? ((Number) function2.invoke(measurable3, Integer.valueOf(i))).intValue() : 0;
                int size5 = list.size();
                int i6 = 0;
                while (true) {
                    if (i6 >= size5) {
                        obj5 = null;
                        break;
                    }
                    obj5 = list.get(i6);
                    if (Intrinsics.areEqual(LayoutUtilKt.getLayoutId((Measurable) obj5), "Suffix")) {
                        break;
                    }
                    i6++;
                }
                Measurable measurable4 = (Measurable) obj5;
                int intValue5 = measurable4 != null ? ((Number) function2.invoke(measurable4, Integer.valueOf(i))).intValue() : 0;
                int size6 = list.size();
                int i7 = 0;
                while (true) {
                    if (i7 >= size6) {
                        obj6 = null;
                        break;
                    }
                    obj6 = list.get(i7);
                    if (Intrinsics.areEqual(LayoutUtilKt.getLayoutId((Measurable) obj6), "Leading")) {
                        break;
                    }
                    i7++;
                }
                Measurable measurable5 = (Measurable) obj6;
                int intValue6 = measurable5 != null ? ((Number) function2.invoke(measurable5, Integer.valueOf(i))).intValue() : 0;
                int size7 = list.size();
                int i8 = 0;
                while (true) {
                    if (i8 >= size7) {
                        break;
                    }
                    Object obj8 = list.get(i8);
                    if (Intrinsics.areEqual(LayoutUtilKt.getLayoutId((Measurable) obj8), "Hint")) {
                        obj = obj8;
                        break;
                    }
                    i8++;
                }
                Measurable measurable6 = (Measurable) obj;
                int i9 = intValue4 + intValue5;
                return ConstraintsKt.m689constrainWidthK40F9xA(ConstraintsKt.Constraints$default(0, 0, 0, 0, 15), Math.max(intValue + i9, Math.max((measurable6 != null ? ((Number) function2.invoke(measurable6, Integer.valueOf(i))).intValue() : 0) + i9, intValue2)) + intValue6 + intValue3);
            }
        }
        ListUtilsKt.throwNoSuchElementException("Collection contains no element matching the predicate.");
        Gson$$ExternalSyntheticBUOutline0.m$1();
        return 0;
    }

    public static final int placeWithoutLabel$calculateVerticalPosition(TextFieldMeasurePolicy textFieldMeasurePolicy, int i, int i2, Placeable placeable) {
        return textFieldMeasurePolicy.singleLine ? Math.round(((i - placeable.height) / 2.0f) * 1.0f) : i2;
    }

    /* renamed from: calculateHeight-mKXJcVc$1, reason: not valid java name */
    public final int m307calculateHeightmKXJcVc$1(Density density, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, long j, float f) {
        PaddingValues paddingValues = this.paddingValues;
        int mo81roundToPx0680j_4 = density.mo81roundToPx0680j_4(paddingValues.mo120calculateBottomPaddingD9Ej5fM() + paddingValues.mo123calculateTopPaddingD9Ej5fM());
        int[] iArr = {i7, i5, i6, UnsignedKt.lerp(i2, f, 0)};
        for (int i9 = 0; i9 < 4; i9++) {
            i = Math.max(i, iArr[i9]);
        }
        return ConstraintsKt.m688constrainHeightK40F9xA(j, Math.max(i3, Math.max(i4, mo81roundToPx0680j_4 + (i2 > 0 ? Math.max(density.mo81roundToPx0680j_4(this.minimizedLabelHalfHeight * 2.0f), UnsignedKt.lerp(0, MotionTokens.EasingEmphasizedAccelerateCubicBezier.transform(f), i2)) : 0) + i)) + i8);
    }

    public final int intrinsicHeight$1(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i, Function2 function2) {
        Object obj;
        int i2;
        int i3;
        int i4;
        Object obj2;
        int i5;
        Object obj3;
        Object obj4;
        int i6;
        Object obj5;
        int i7;
        Object obj6;
        Object obj7;
        int size = list.size();
        int i8 = 0;
        while (true) {
            if (i8 >= size) {
                obj = null;
                break;
            }
            obj = list.get(i8);
            if (Intrinsics.areEqual(LayoutUtilKt.getLayoutId((Measurable) obj), "Leading")) {
                break;
            }
            i8++;
        }
        Measurable measurable = (Measurable) obj;
        if (measurable != null) {
            i2 = i;
            i4 = LayoutUtilKt.subtractConstraintSafely(i2, measurable.maxIntrinsicWidth(Integer.MAX_VALUE));
            i3 = ((Number) function2.invoke(measurable, Integer.valueOf(i2))).intValue();
        } else {
            i2 = i;
            i3 = 0;
            i4 = i2;
        }
        int size2 = list.size();
        int i9 = 0;
        while (true) {
            if (i9 >= size2) {
                obj2 = null;
                break;
            }
            obj2 = list.get(i9);
            if (Intrinsics.areEqual(LayoutUtilKt.getLayoutId((Measurable) obj2), "Trailing")) {
                break;
            }
            i9++;
        }
        Measurable measurable2 = (Measurable) obj2;
        if (measurable2 != null) {
            i4 = LayoutUtilKt.subtractConstraintSafely(i4, measurable2.maxIntrinsicWidth(Integer.MAX_VALUE));
            i5 = ((Number) function2.invoke(measurable2, Integer.valueOf(i2))).intValue();
        } else {
            i5 = 0;
        }
        int size3 = list.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size3) {
                obj3 = null;
                break;
            }
            obj3 = list.get(i10);
            if (Intrinsics.areEqual(LayoutUtilKt.getLayoutId((Measurable) obj3), "Label")) {
                break;
            }
            i10++;
        }
        Object obj8 = (Measurable) obj3;
        int intValue = obj8 != null ? ((Number) function2.invoke(obj8, Integer.valueOf(i4))).intValue() : 0;
        int size4 = list.size();
        int i11 = 0;
        while (true) {
            if (i11 >= size4) {
                obj4 = null;
                break;
            }
            obj4 = list.get(i11);
            if (Intrinsics.areEqual(LayoutUtilKt.getLayoutId((Measurable) obj4), "Prefix")) {
                break;
            }
            i11++;
        }
        Measurable measurable3 = (Measurable) obj4;
        if (measurable3 != null) {
            int intValue2 = ((Number) function2.invoke(measurable3, Integer.valueOf(i4))).intValue();
            i4 = LayoutUtilKt.subtractConstraintSafely(i4, measurable3.maxIntrinsicWidth(Integer.MAX_VALUE));
            i6 = intValue2;
        } else {
            i6 = 0;
        }
        int size5 = list.size();
        int i12 = 0;
        while (true) {
            if (i12 >= size5) {
                obj5 = null;
                break;
            }
            obj5 = list.get(i12);
            if (Intrinsics.areEqual(LayoutUtilKt.getLayoutId((Measurable) obj5), "Suffix")) {
                break;
            }
            i12++;
        }
        Measurable measurable4 = (Measurable) obj5;
        if (measurable4 != null) {
            int intValue3 = ((Number) function2.invoke(measurable4, Integer.valueOf(i4))).intValue();
            i4 = LayoutUtilKt.subtractConstraintSafely(i4, measurable4.maxIntrinsicWidth(Integer.MAX_VALUE));
            i7 = intValue3;
        } else {
            i7 = 0;
        }
        int size6 = list.size();
        for (int i13 = 0; i13 < size6; i13++) {
            Object obj9 = list.get(i13);
            if (Intrinsics.areEqual(LayoutUtilKt.getLayoutId((Measurable) obj9), "TextField")) {
                int intValue4 = ((Number) function2.invoke(obj9, Integer.valueOf(i4))).intValue();
                int size7 = list.size();
                int i14 = 0;
                while (true) {
                    if (i14 >= size7) {
                        obj6 = null;
                        break;
                    }
                    obj6 = list.get(i14);
                    if (Intrinsics.areEqual(LayoutUtilKt.getLayoutId((Measurable) obj6), "Hint")) {
                        break;
                    }
                    i14++;
                }
                Object obj10 = (Measurable) obj6;
                int intValue5 = obj10 != null ? ((Number) function2.invoke(obj10, Integer.valueOf(i4))).intValue() : 0;
                int size8 = list.size();
                int i15 = 0;
                while (true) {
                    if (i15 >= size8) {
                        obj7 = null;
                        break;
                    }
                    obj7 = list.get(i15);
                    if (Intrinsics.areEqual(LayoutUtilKt.getLayoutId((Measurable) obj7), "Supporting")) {
                        break;
                    }
                    i15++;
                }
                Object obj11 = (Measurable) obj7;
                return m307calculateHeightmKXJcVc$1(intrinsicMeasureScope, intValue4, intValue, i3, i5, i6, i7, intValue5, obj11 != null ? ((Number) function2.invoke(obj11, Integer.valueOf(i2))).intValue() : 0, ConstraintsKt.Constraints$default(0, 0, 0, 0, 15), this.labelProgress.invoke());
            }
        }
        ListUtilsKt.throwNoSuchElementException("Collection contains no element matching the predicate.");
        Gson$$ExternalSyntheticBUOutline0.m$1();
        return 0;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return intrinsicHeight$1(intrinsicMeasureScope, list, i, new SaversKt$$ExternalSyntheticLambda0(17));
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return intrinsicWidth(list, i, new SaversKt$$ExternalSyntheticLambda0(15));
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo15measure3p2s80s(final MeasureScope measureScope, List list, long j) {
        Object obj;
        Object obj2;
        Object obj3;
        int i;
        Placeable placeable;
        Object obj4;
        int i2;
        Placeable placeable2;
        Object obj5;
        int i3;
        Object obj6;
        Object obj7;
        Placeable placeable3;
        int i4;
        int i5;
        int i6;
        int i7;
        Placeable placeable4;
        int i8;
        Placeable placeable5;
        int i9;
        Placeable placeable6;
        int i10;
        float f;
        Placeable placeable7;
        Ref$ObjectRef ref$ObjectRef;
        int i11;
        Placeable placeable8;
        Placeable placeable9;
        int i12;
        int i13;
        TextFieldMeasurePolicy textFieldMeasurePolicy;
        int i14;
        float invoke = this.labelProgress.invoke();
        PaddingValues paddingValues = this.paddingValues;
        final int mo81roundToPx0680j_4 = measureScope.mo81roundToPx0680j_4(paddingValues.mo123calculateTopPaddingD9Ej5fM());
        int mo81roundToPx0680j_42 = measureScope.mo81roundToPx0680j_4(paddingValues.mo120calculateBottomPaddingD9Ej5fM());
        long m674copyZbe2FdA$default = Constraints.m674copyZbe2FdA$default(j, 0, 0, 0, 0, 10);
        int size = list.size();
        int i15 = 0;
        while (true) {
            if (i15 >= size) {
                obj = null;
                break;
            }
            obj = list.get(i15);
            if (Intrinsics.areEqual(RulerKt.getLayoutId((Measurable) obj), "Leading")) {
                break;
            }
            i15++;
        }
        Measurable measurable = (Measurable) obj;
        Placeable mo512measureBRTryo0 = measurable != null ? measurable.mo512measureBRTryo0(m674copyZbe2FdA$default) : null;
        int i16 = mo512measureBRTryo0 != null ? mo512measureBRTryo0.width : 0;
        int max = Math.max(0, mo512measureBRTryo0 != null ? mo512measureBRTryo0.height : 0);
        int size2 = list.size();
        int i17 = 0;
        while (true) {
            if (i17 >= size2) {
                obj2 = null;
                break;
            }
            obj2 = list.get(i17);
            if (Intrinsics.areEqual(RulerKt.getLayoutId((Measurable) obj2), "Trailing")) {
                break;
            }
            i17++;
        }
        Measurable measurable2 = (Measurable) obj2;
        Placeable mo512measureBRTryo02 = measurable2 != null ? measurable2.mo512measureBRTryo0(ConstraintsKt.m691offsetNN6EwU$default(-i16, 0, 2, m674copyZbe2FdA$default)) : null;
        int i18 = i16 + (mo512measureBRTryo02 != null ? mo512measureBRTryo02.width : 0);
        int max2 = Math.max(max, mo512measureBRTryo02 != null ? mo512measureBRTryo02.height : 0);
        int size3 = list.size();
        int i19 = 0;
        while (true) {
            if (i19 >= size3) {
                obj3 = null;
                break;
            }
            obj3 = list.get(i19);
            if (Intrinsics.areEqual(RulerKt.getLayoutId((Measurable) obj3), "Prefix")) {
                break;
            }
            i19++;
        }
        Measurable measurable3 = (Measurable) obj3;
        if (measurable3 != null) {
            i = i18;
            placeable = measurable3.mo512measureBRTryo0(ConstraintsKt.m691offsetNN6EwU$default(-i18, 0, 2, m674copyZbe2FdA$default));
        } else {
            i = i18;
            placeable = null;
        }
        int i20 = (placeable != null ? placeable.width : 0) + i;
        int max3 = Math.max(max2, placeable != null ? placeable.height : 0);
        int size4 = list.size();
        int i21 = 0;
        while (true) {
            if (i21 >= size4) {
                obj4 = null;
                break;
            }
            obj4 = list.get(i21);
            if (Intrinsics.areEqual(RulerKt.getLayoutId((Measurable) obj4), "Suffix")) {
                break;
            }
            i21++;
        }
        Measurable measurable4 = (Measurable) obj4;
        if (measurable4 != null) {
            i2 = i20;
            placeable2 = measurable4.mo512measureBRTryo0(ConstraintsKt.m691offsetNN6EwU$default(-i20, 0, 2, m674copyZbe2FdA$default));
        } else {
            i2 = i20;
            placeable2 = null;
        }
        int i22 = i2 + (placeable2 != null ? placeable2.width : 0);
        int max4 = Math.max(max3, placeable2 != null ? placeable2.height : 0);
        int size5 = list.size();
        int i23 = 0;
        while (true) {
            if (i23 >= size5) {
                obj5 = null;
                break;
            }
            obj5 = list.get(i23);
            int i24 = size5;
            if (Intrinsics.areEqual(RulerKt.getLayoutId((Measurable) obj5), "Label")) {
                break;
            }
            i23++;
            size5 = i24;
        }
        Measurable measurable5 = (Measurable) obj5;
        Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
        int i25 = -i22;
        ref$ObjectRef2.element = measurable5 != null ? measurable5.mo512measureBRTryo0(ConstraintsKt.m690offsetNN6EwU(i25, -mo81roundToPx0680j_42, m674copyZbe2FdA$default)) : null;
        int size6 = list.size();
        int i26 = 0;
        while (true) {
            if (i26 >= size6) {
                i3 = mo81roundToPx0680j_42;
                obj6 = null;
                break;
            }
            obj6 = list.get(i26);
            i3 = mo81roundToPx0680j_42;
            if (Intrinsics.areEqual(RulerKt.getLayoutId((Measurable) obj6), "Supporting")) {
                break;
            }
            i26++;
            mo81roundToPx0680j_42 = i3;
        }
        Measurable measurable6 = (Measurable) obj6;
        int minIntrinsicHeight = measurable6 != null ? measurable6.minIntrinsicHeight(Constraints.m683getMinWidthimpl(j)) : 0;
        Placeable placeable10 = (Placeable) ref$ObjectRef2.element;
        int i27 = mo81roundToPx0680j_4 + (placeable10 != null ? placeable10.height : 0);
        long m690offsetNN6EwU = ConstraintsKt.m690offsetNN6EwU(i25, ((-i27) - i3) - minIntrinsicHeight, Constraints.m674copyZbe2FdA$default(j, 0, 0, 0, 0, 11));
        int size7 = list.size();
        int i28 = 0;
        while (i28 < size7) {
            int i29 = i27;
            Measurable measurable7 = (Measurable) list.get(i28);
            int i30 = size7;
            float f2 = invoke;
            if (Intrinsics.areEqual(RulerKt.getLayoutId(measurable7), "TextField")) {
                final Placeable mo512measureBRTryo03 = measurable7.mo512measureBRTryo0(m690offsetNN6EwU);
                long m674copyZbe2FdA$default2 = Constraints.m674copyZbe2FdA$default(m690offsetNN6EwU, 0, 0, 0, 0, 14);
                int size8 = list.size();
                int i31 = 0;
                while (true) {
                    if (i31 >= size8) {
                        obj7 = null;
                        break;
                    }
                    obj7 = list.get(i31);
                    int i32 = size8;
                    int i33 = i31;
                    if (Intrinsics.areEqual(RulerKt.getLayoutId((Measurable) obj7), "Hint")) {
                        break;
                    }
                    i31 = i33 + 1;
                    size8 = i32;
                }
                Measurable measurable8 = (Measurable) obj7;
                Placeable mo512measureBRTryo04 = measurable8 != null ? measurable8.mo512measureBRTryo0(m674copyZbe2FdA$default2) : null;
                int max5 = Math.max(max4, Math.max(mo512measureBRTryo03.height, mo512measureBRTryo04 != null ? mo512measureBRTryo04.height : 0) + i29 + i3);
                int i34 = mo512measureBRTryo0 != null ? mo512measureBRTryo0.width : 0;
                int i35 = mo512measureBRTryo02 != null ? mo512measureBRTryo02.width : 0;
                int i36 = placeable != null ? placeable.width : 0;
                int i37 = placeable2 != null ? placeable2.width : 0;
                int i38 = i35;
                int i39 = mo512measureBRTryo03.width;
                Placeable placeable11 = (Placeable) ref$ObjectRef2.element;
                int i40 = i36 + i37;
                int m689constrainWidthK40F9xA = ConstraintsKt.m689constrainWidthK40F9xA(j, Math.max(i39 + i40, Math.max((mo512measureBRTryo04 != null ? mo512measureBRTryo04.width : 0) + i40, placeable11 != null ? placeable11.width : 0)) + i34 + i38);
                Placeable mo512measureBRTryo05 = measurable6 != null ? measurable6.mo512measureBRTryo0(Constraints.m674copyZbe2FdA$default(ConstraintsKt.m691offsetNN6EwU$default(0, -max5, 1, m674copyZbe2FdA$default), 0, m689constrainWidthK40F9xA, 0, 0, 9)) : null;
                int i41 = mo512measureBRTryo05 != null ? mo512measureBRTryo05.height : 0;
                int i42 = mo512measureBRTryo03.height;
                Placeable placeable12 = (Placeable) ref$ObjectRef2.element;
                int i43 = placeable12 != null ? placeable12.height : 0;
                int i44 = mo512measureBRTryo0 != null ? mo512measureBRTryo0.height : 0;
                if (mo512measureBRTryo02 != null) {
                    placeable3 = mo512measureBRTryo0;
                    i4 = i43;
                    i5 = mo512measureBRTryo02.height;
                } else {
                    placeable3 = mo512measureBRTryo0;
                    i4 = i43;
                    i5 = 0;
                }
                if (placeable != null) {
                    i6 = i44;
                    i7 = placeable.height;
                } else {
                    i6 = i44;
                    i7 = 0;
                }
                final Placeable placeable13 = mo512measureBRTryo02;
                if (placeable2 != null) {
                    Placeable placeable14 = placeable;
                    i8 = placeable2.height;
                    placeable4 = placeable14;
                } else {
                    placeable4 = placeable;
                    i8 = 0;
                }
                final Placeable placeable15 = placeable4;
                if (mo512measureBRTryo04 != null) {
                    Placeable placeable16 = placeable3;
                    i9 = mo512measureBRTryo04.height;
                    placeable5 = placeable16;
                } else {
                    placeable5 = placeable3;
                    i9 = 0;
                }
                if (mo512measureBRTryo05 != null) {
                    placeable7 = placeable5;
                    placeable6 = placeable2;
                    i10 = i6;
                    f = f2;
                    ref$ObjectRef = ref$ObjectRef2;
                    i11 = mo512measureBRTryo05.height;
                    placeable8 = mo512measureBRTryo04;
                    placeable9 = mo512measureBRTryo05;
                    i12 = m689constrainWidthK40F9xA;
                    i13 = 0;
                    i14 = i42;
                    textFieldMeasurePolicy = this;
                } else {
                    placeable6 = placeable2;
                    i10 = i6;
                    f = f2;
                    placeable7 = placeable5;
                    ref$ObjectRef = ref$ObjectRef2;
                    i11 = 0;
                    placeable8 = mo512measureBRTryo04;
                    placeable9 = mo512measureBRTryo05;
                    i12 = m689constrainWidthK40F9xA;
                    i13 = 0;
                    textFieldMeasurePolicy = this;
                    i14 = i42;
                }
                final int m307calculateHeightmKXJcVc$1 = textFieldMeasurePolicy.m307calculateHeightmKXJcVc$1(measureScope, i14, i4, i10, i5, i7, i8, i9, i11, j, f);
                final int i45 = m307calculateHeightmKXJcVc$1 - i41;
                int size9 = list.size();
                int i46 = i13;
                while (i46 < size9) {
                    Measurable measurable9 = (Measurable) list.get(i46);
                    if (Intrinsics.areEqual(RulerKt.getLayoutId(measurable9), "Container")) {
                        final Placeable mo512measureBRTryo06 = measurable9.mo512measureBRTryo0(ConstraintsKt.Constraints(i12 != Integer.MAX_VALUE ? i12 : i13, i12, i45 != Integer.MAX_VALUE ? i45 : i13, i45));
                        final int i47 = i12;
                        final float f3 = f;
                        final Placeable placeable17 = placeable6;
                        final Placeable placeable18 = placeable7;
                        final Ref$ObjectRef ref$ObjectRef3 = ref$ObjectRef;
                        final Placeable placeable19 = placeable8;
                        final Placeable placeable20 = placeable9;
                        return measureScope.layout(i47, m307calculateHeightmKXJcVc$1, EmptyMap.INSTANCE, new Function1() { // from class: androidx.compose.material3.TextFieldMeasurePolicy$$ExternalSyntheticLambda2
                            /* JADX WARN: Removed duplicated region for block: B:18:0x00a3  */
                            /* JADX WARN: Removed duplicated region for block: B:21:0x00ad  */
                            /* JADX WARN: Removed duplicated region for block: B:24:0x00bc  */
                            /* JADX WARN: Removed duplicated region for block: B:27:0x00d2  */
                            /* JADX WARN: Removed duplicated region for block: B:30:0x00dc  */
                            /* JADX WARN: Removed duplicated region for block: B:33:0x00ea  */
                            /* JADX WARN: Removed duplicated region for block: B:36:0x0101  */
                            /* JADX WARN: Removed duplicated region for block: B:41:0x010c  */
                            /* JADX WARN: Removed duplicated region for block: B:43:0x0112  */
                            /* JADX WARN: Removed duplicated region for block: B:46:0x011c  */
                            /* JADX WARN: Removed duplicated region for block: B:48:0x0121  */
                            /* JADX WARN: Removed duplicated region for block: B:53:0x0131  */
                            /* JADX WARN: Removed duplicated region for block: B:55:0x0147  */
                            /* JADX WARN: Removed duplicated region for block: B:59:0x0115  */
                            /* JADX WARN: Removed duplicated region for block: B:60:0x010f  */
                            /* JADX WARN: Removed duplicated region for block: B:61:0x00ed  */
                            /* JADX WARN: Removed duplicated region for block: B:62:0x00df  */
                            /* JADX WARN: Removed duplicated region for block: B:63:0x00d5  */
                            /* JADX WARN: Removed duplicated region for block: B:64:0x00be  */
                            /* JADX WARN: Removed duplicated region for block: B:65:0x00b0  */
                            /* JADX WARN: Removed duplicated region for block: B:66:0x00a6  */
                            @Override // kotlin.jvm.functions.Function1
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                                To view partially-correct add '--show-bad-code' argument
                            */
                            public final java.lang.Object invoke(java.lang.Object r22) {
                                /*
                                    Method dump skipped, instructions count: 483
                                    To view this dump add '--comments-level debug' option
                                */
                                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.TextFieldMeasurePolicy$$ExternalSyntheticLambda2.invoke(java.lang.Object):java.lang.Object");
                            }
                        });
                    }
                    i46++;
                    i45 = i45;
                }
                ListUtilsKt.throwNoSuchElementException("Collection contains no element matching the predicate.");
                Gson$$ExternalSyntheticBUOutline0.m$1();
                return null;
            }
            invoke = f2;
            i28++;
            size7 = i30;
            i27 = i29;
            mo512measureBRTryo0 = mo512measureBRTryo0;
        }
        ListUtilsKt.throwNoSuchElementException("Collection contains no element matching the predicate.");
        Gson$$ExternalSyntheticBUOutline0.m$1();
        return null;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return intrinsicHeight$1(intrinsicMeasureScope, list, i, new SaversKt$$ExternalSyntheticLambda0(16));
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return intrinsicWidth(list, i, new SaversKt$$ExternalSyntheticLambda0(14));
    }
}
