package androidx.compose.material3;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material3.internal.Icons$Filled;
import androidx.compose.material3.internal.TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.geometry.Size;
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
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.util.ListUtilsKt;
import androidx.room.util.DBUtil;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.math.MathKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OutlinedTextFieldMeasurePolicy implements MeasurePolicy {
    public final float horizontalIconPadding;
    public final TextFieldLabelPosition$Attached labelPosition;
    public final TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0 labelProgress;
    public final Function1 onLabelMeasured;
    public final PaddingValues paddingValues;
    public final boolean singleLine;

    public OutlinedTextFieldMeasurePolicy(Function1 function1, boolean z, TextFieldLabelPosition$Attached textFieldLabelPosition$Attached, TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0 textFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0, PaddingValues paddingValues, float f) {
        this.onLabelMeasured = function1;
        this.singleLine = z;
        this.labelPosition = textFieldLabelPosition$Attached;
        this.labelProgress = textFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0;
        this.paddingValues = paddingValues;
        this.horizontalIconPadding = f;
    }

    public static final int place$calculateVerticalPosition(int i, OutlinedTextFieldMeasurePolicy outlinedTextFieldMeasurePolicy, int i2, int i3, Placeable placeable, Placeable placeable2) {
        if (outlinedTextFieldMeasurePolicy.singleLine) {
            i3 = Math.round(((i2 - placeable2.height) / 2.0f) * 1.0f);
        }
        return Math.max(i + i3, (placeable != null ? placeable.height : 0) / 2);
    }

    /* renamed from: calculateHeight-mKXJcVc, reason: not valid java name */
    public final int m351calculateHeightmKXJcVc(IntrinsicMeasureScope intrinsicMeasureScope, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, long j, float f) {
        int[] iArr = {i7, i3, i4, DBUtil.lerp(i6, f, 0)};
        for (int i9 = 0; i9 < 4; i9++) {
            i5 = Math.max(i5, iArr[i9]);
        }
        PaddingValues paddingValues = this.paddingValues;
        float mo177toPx0680j_4 = intrinsicMeasureScope.mo177toPx0680j_4(paddingValues.mo211calculateTopPaddingD9Ej5fM());
        return ConstraintsKt.m740constrainHeightK40F9xA(Math.max(i, Math.max(i2, MathKt.roundToInt(DBUtil.lerp(mo177toPx0680j_4, Math.max(mo177toPx0680j_4, i6 / 2.0f), f) + i5 + intrinsicMeasureScope.mo177toPx0680j_4(paddingValues.mo208calculateBottomPaddingD9Ej5fM())))) + i8, j);
    }

    /* renamed from: calculateWidth-IzADHW4, reason: not valid java name */
    public final int m352calculateWidthIzADHW4(IntrinsicMeasureScope intrinsicMeasureScope, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, float f) {
        int i8 = i3 + i4;
        int max = Math.max(i5 + i8, Math.max(i7 + i8, DBUtil.lerp(i6, f, 0))) + i + i2;
        PaddingValues paddingValues = this.paddingValues;
        LayoutDirection layoutDirection = LayoutDirection.Ltr;
        return ConstraintsKt.m741constrainWidthK40F9xA(Math.max(max, MathKt.roundToInt((i6 + intrinsicMeasureScope.mo177toPx0680j_4(paddingValues.mo210calculateRightPaddingu2uoSUM(layoutDirection) + paddingValues.mo209calculateLeftPaddingu2uoSUM(layoutDirection))) * f)), j);
    }

    public final int intrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i, Function2 function2) {
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
        OutlinedTextFieldMeasurePolicy outlinedTextFieldMeasurePolicy = this;
        float invoke = outlinedTextFieldMeasurePolicy.labelProgress.invoke();
        int size = list.size();
        int i7 = 0;
        while (true) {
            if (i7 >= size) {
                obj = null;
                break;
            }
            obj = list.get(i7);
            if (Intrinsics.areEqual(Icons$Filled.getLayoutId((Measurable) obj), "Leading")) {
                break;
            }
            i7++;
        }
        Measurable measurable = (Measurable) obj;
        if (measurable != null) {
            i2 = Icons$Filled.subtractConstraintSafely(i, measurable.maxIntrinsicWidth(Integer.MAX_VALUE));
            i3 = ((Number) function2.invoke(measurable, Integer.valueOf(i))).intValue();
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
            if (Intrinsics.areEqual(Icons$Filled.getLayoutId((Measurable) obj2), "Trailing")) {
                break;
            }
            i8++;
        }
        Measurable measurable2 = (Measurable) obj2;
        if (measurable2 != null) {
            i2 = Icons$Filled.subtractConstraintSafely(i2, measurable2.maxIntrinsicWidth(Integer.MAX_VALUE));
            i4 = ((Number) function2.invoke(measurable2, Integer.valueOf(i))).intValue();
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
            if (Intrinsics.areEqual(Icons$Filled.getLayoutId((Measurable) obj3), "Label")) {
                break;
            }
            i9++;
        }
        Object obj8 = (Measurable) obj3;
        int intValue = obj8 != null ? ((Number) function2.invoke(obj8, Integer.valueOf(DBUtil.lerp(i2, invoke, i)))).intValue() : 0;
        int size4 = list.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size4) {
                obj4 = null;
                break;
            }
            obj4 = list.get(i10);
            if (Intrinsics.areEqual(Icons$Filled.getLayoutId((Measurable) obj4), "Prefix")) {
                break;
            }
            i10++;
        }
        Measurable measurable3 = (Measurable) obj4;
        if (measurable3 != null) {
            i5 = ((Number) function2.invoke(measurable3, Integer.valueOf(i2))).intValue();
            i2 = Icons$Filled.subtractConstraintSafely(i2, measurable3.maxIntrinsicWidth(Integer.MAX_VALUE));
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
            if (Intrinsics.areEqual(Icons$Filled.getLayoutId((Measurable) obj5), "Suffix")) {
                break;
            }
            i11++;
        }
        Measurable measurable4 = (Measurable) obj5;
        if (measurable4 != null) {
            i6 = ((Number) function2.invoke(measurable4, Integer.valueOf(i2))).intValue();
            i2 = Icons$Filled.subtractConstraintSafely(i2, measurable4.maxIntrinsicWidth(Integer.MAX_VALUE));
        } else {
            i6 = 0;
        }
        int size6 = list.size();
        int i12 = 0;
        while (i12 < size6) {
            Object obj9 = list.get(i12);
            if (Intrinsics.areEqual(Icons$Filled.getLayoutId((Measurable) obj9), "TextField")) {
                int intValue2 = ((Number) function2.invoke(obj9, Integer.valueOf(i2))).intValue();
                int size7 = list.size();
                int i13 = 0;
                while (true) {
                    if (i13 >= size7) {
                        obj6 = null;
                        break;
                    }
                    obj6 = list.get(i13);
                    if (Intrinsics.areEqual(Icons$Filled.getLayoutId((Measurable) obj6), "Hint")) {
                        break;
                    }
                    i13++;
                }
                Object obj10 = (Measurable) obj6;
                int intValue3 = obj10 != null ? ((Number) function2.invoke(obj10, Integer.valueOf(i2))).intValue() : 0;
                int size8 = list.size();
                int i14 = 0;
                while (true) {
                    if (i14 >= size8) {
                        obj7 = null;
                        break;
                    }
                    obj7 = list.get(i14);
                    if (Intrinsics.areEqual(Icons$Filled.getLayoutId((Measurable) obj7), "Supporting")) {
                        break;
                    }
                    i14++;
                }
                Object obj11 = (Measurable) obj7;
                return outlinedTextFieldMeasurePolicy.m351calculateHeightmKXJcVc(intrinsicMeasureScope, i3, i4, i5, i6, intValue2, intValue, intValue3, obj11 != null ? ((Number) function2.invoke(obj11, Integer.valueOf(i))).intValue() : 0, ConstraintsKt.Constraints$default(0, 0, 0, 0, 15), invoke);
            }
            i12++;
            i6 = i6;
            outlinedTextFieldMeasurePolicy = this;
            i5 = i5;
        }
        ListUtilsKt.throwNoSuchElementException("Collection contains no element matching the predicate.");
        _UtilJvmKt$$ExternalSyntheticLambda0.m();
        return 0;
    }

    public final int intrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i, Function2 function2) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            Object obj7 = list.get(i2);
            if (Intrinsics.areEqual(Icons$Filled.getLayoutId((Measurable) obj7), "TextField")) {
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
                    if (Intrinsics.areEqual(Icons$Filled.getLayoutId((Measurable) obj2), "Label")) {
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
                    if (Intrinsics.areEqual(Icons$Filled.getLayoutId((Measurable) obj3), "Trailing")) {
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
                    if (Intrinsics.areEqual(Icons$Filled.getLayoutId((Measurable) obj4), "Leading")) {
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
                    if (Intrinsics.areEqual(Icons$Filled.getLayoutId((Measurable) obj5), "Prefix")) {
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
                    if (Intrinsics.areEqual(Icons$Filled.getLayoutId((Measurable) obj6), "Suffix")) {
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
                    if (Intrinsics.areEqual(Icons$Filled.getLayoutId((Measurable) obj8), "Hint")) {
                        obj = obj8;
                        break;
                    }
                    i8++;
                }
                Measurable measurable6 = (Measurable) obj;
                return m352calculateWidthIzADHW4(intrinsicMeasureScope, intValue4, intValue3, intValue5, intValue6, intValue, intValue2, measurable6 != null ? ((Number) function2.invoke(measurable6, Integer.valueOf(i))).intValue() : 0, ConstraintsKt.Constraints$default(0, 0, 0, 0, 15), this.labelProgress.invoke());
            }
        }
        ListUtilsKt.throwNoSuchElementException("Collection contains no element matching the predicate.");
        _UtilJvmKt$$ExternalSyntheticLambda0.m();
        return 0;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return intrinsicHeight(intrinsicMeasureScope, list, i, new SaversKt$$ExternalSyntheticLambda0(9));
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return intrinsicWidth(intrinsicMeasureScope, list, i, new SaversKt$$ExternalSyntheticLambda0(8));
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo108measure3p2s80s(final MeasureScope measureScope, List list, long j) {
        Object obj;
        Object obj2;
        Placeable placeable;
        int i;
        Placeable placeable2;
        Object obj3;
        Placeable placeable3;
        int i2;
        Placeable placeable4;
        Object obj4;
        Placeable placeable5;
        int i3;
        Placeable placeable6;
        Object obj5;
        long j2;
        Object obj6;
        Object obj7;
        Placeable placeable7;
        int i4;
        Ref$ObjectRef ref$ObjectRef;
        int i5;
        Ref$ObjectRef ref$ObjectRef2;
        Placeable placeable8;
        int i6;
        long j3;
        int i7;
        Placeable placeable9;
        Placeable placeable10;
        int i8;
        Placeable placeable11;
        Measurable measurable;
        OutlinedTextFieldMeasurePolicy outlinedTextFieldMeasurePolicy;
        MeasureScope measureScope2;
        Placeable placeable12;
        int i9;
        Placeable placeable13;
        Placeable placeable14;
        int i10;
        int i11;
        int i12;
        Ref$ObjectRef ref$ObjectRef3;
        int i13;
        OutlinedTextFieldMeasurePolicy outlinedTextFieldMeasurePolicy2;
        Placeable placeable15;
        Placeable placeable16;
        int i14;
        Placeable placeable17;
        int i15;
        MeasureScope measureScope3;
        float f;
        List list2 = list;
        float invoke = this.labelProgress.invoke();
        PaddingValues paddingValues = this.paddingValues;
        int mo171roundToPx0680j_4 = measureScope.mo171roundToPx0680j_4(paddingValues.mo208calculateBottomPaddingD9Ej5fM());
        long m727copyZbe2FdA$default = Constraints.m727copyZbe2FdA$default(j, 0, 0, 0, 0, 10);
        int size = list2.size();
        int i16 = 0;
        while (true) {
            if (i16 >= size) {
                obj = null;
                break;
            }
            obj = list2.get(i16);
            if (Intrinsics.areEqual(RulerKt.getLayoutId((Measurable) obj), "Leading")) {
                break;
            }
            i16++;
        }
        Measurable measurable2 = (Measurable) obj;
        Placeable mo571measureBRTryo0 = measurable2 != null ? measurable2.mo571measureBRTryo0(m727copyZbe2FdA$default) : null;
        int i17 = mo571measureBRTryo0 != null ? mo571measureBRTryo0.width : 0;
        int max = Math.max(0, mo571measureBRTryo0 != null ? mo571measureBRTryo0.height : 0);
        int size2 = list2.size();
        int i18 = 0;
        while (true) {
            if (i18 >= size2) {
                obj2 = null;
                break;
            }
            obj2 = list2.get(i18);
            if (Intrinsics.areEqual(RulerKt.getLayoutId((Measurable) obj2), "Trailing")) {
                break;
            }
            i18++;
        }
        Measurable measurable3 = (Measurable) obj2;
        if (measurable3 != null) {
            placeable = mo571measureBRTryo0;
            i = i17;
            placeable2 = measurable3.mo571measureBRTryo0(ConstraintsKt.m743offsetNN6EwU$default(-i17, 0, 2, m727copyZbe2FdA$default));
        } else {
            placeable = mo571measureBRTryo0;
            i = i17;
            placeable2 = null;
        }
        int i19 = i + (placeable2 != null ? placeable2.width : 0);
        int max2 = Math.max(max, placeable2 != null ? placeable2.height : 0);
        int size3 = list2.size();
        int i20 = 0;
        while (true) {
            if (i20 >= size3) {
                obj3 = null;
                break;
            }
            obj3 = list2.get(i20);
            int i21 = size3;
            if (Intrinsics.areEqual(RulerKt.getLayoutId((Measurable) obj3), "Prefix")) {
                break;
            }
            i20++;
            size3 = i21;
        }
        Measurable measurable4 = (Measurable) obj3;
        if (measurable4 != null) {
            placeable3 = placeable2;
            i2 = i19;
            placeable4 = measurable4.mo571measureBRTryo0(ConstraintsKt.m743offsetNN6EwU$default(-i19, 0, 2, m727copyZbe2FdA$default));
        } else {
            placeable3 = placeable2;
            i2 = i19;
            placeable4 = null;
        }
        int i22 = i2 + (placeable4 != null ? placeable4.width : 0);
        int max3 = Math.max(max2, placeable4 != null ? placeable4.height : 0);
        int size4 = list2.size();
        int i23 = 0;
        while (true) {
            if (i23 >= size4) {
                obj4 = null;
                break;
            }
            obj4 = list2.get(i23);
            int i24 = size4;
            if (Intrinsics.areEqual(RulerKt.getLayoutId((Measurable) obj4), "Suffix")) {
                break;
            }
            i23++;
            size4 = i24;
        }
        Measurable measurable5 = (Measurable) obj4;
        if (measurable5 != null) {
            placeable5 = placeable4;
            i3 = i22;
            placeable6 = measurable5.mo571measureBRTryo0(ConstraintsKt.m743offsetNN6EwU$default(-i22, 0, 2, m727copyZbe2FdA$default));
        } else {
            placeable5 = placeable4;
            i3 = i22;
            placeable6 = null;
        }
        int i25 = i3 + (placeable6 != null ? placeable6.width : 0);
        int max4 = Math.max(max3, placeable6 != null ? placeable6.height : 0);
        int size5 = list2.size();
        int i26 = 0;
        while (true) {
            if (i26 >= size5) {
                obj5 = null;
                break;
            }
            obj5 = list2.get(i26);
            int i27 = size5;
            if (Intrinsics.areEqual(RulerKt.getLayoutId((Measurable) obj5), "Label")) {
                break;
            }
            i26++;
            size5 = i27;
        }
        Measurable measurable6 = (Measurable) obj5;
        Ref$ObjectRef ref$ObjectRef4 = new Ref$ObjectRef();
        int mo171roundToPx0680j_42 = measureScope.mo171roundToPx0680j_4(paddingValues.mo210calculateRightPaddingu2uoSUM(measureScope.getLayoutDirection())) + measureScope.mo171roundToPx0680j_4(paddingValues.mo209calculateLeftPaddingu2uoSUM(measureScope.getLayoutDirection()));
        int i28 = -DBUtil.lerp(i25 + mo171roundToPx0680j_42, invoke, mo171roundToPx0680j_42);
        int i29 = -mo171roundToPx0680j_4;
        Placeable mo571measureBRTryo02 = measurable6 != null ? measurable6.mo571measureBRTryo0(ConstraintsKt.m742offsetNN6EwU(i28, i29, m727copyZbe2FdA$default)) : null;
        ref$ObjectRef4.element = mo571measureBRTryo02;
        if (mo571measureBRTryo02 != null) {
            float f2 = mo571measureBRTryo02.width;
            j2 = (Float.floatToRawIntBits(mo571measureBRTryo02.height) & 4294967295L) | (Float.floatToRawIntBits(f2) << 32);
        } else {
            j2 = 0;
        }
        this.onLabelMeasured.invoke(new Size(j2));
        int size6 = list2.size();
        int i30 = 0;
        while (true) {
            if (i30 >= size6) {
                obj6 = null;
                break;
            }
            obj6 = list2.get(i30);
            if (Intrinsics.areEqual(RulerKt.getLayoutId((Measurable) obj6), "Supporting")) {
                break;
            }
            i30++;
        }
        Measurable measurable7 = (Measurable) obj6;
        int minIntrinsicHeight = measurable7 != null ? measurable7.minIntrinsicHeight(Constraints.m736getMinWidthimpl(j)) : 0;
        Placeable placeable18 = (Placeable) ref$ObjectRef4.element;
        int max5 = Math.max((placeable18 != null ? placeable18.height : 0) / 2, measureScope.mo171roundToPx0680j_4(paddingValues.mo211calculateTopPaddingD9Ej5fM()));
        long j4 = j;
        long m742offsetNN6EwU = ConstraintsKt.m742offsetNN6EwU(-i25, (i29 - max5) - minIntrinsicHeight, j4);
        Measurable measurable8 = measurable7;
        long m727copyZbe2FdA$default2 = Constraints.m727copyZbe2FdA$default(m742offsetNN6EwU, 0, 0, 0, 0, 11);
        int size7 = list2.size();
        int i31 = 0;
        while (i31 < size7) {
            Measurable measurable9 = measurable8;
            Measurable measurable10 = (Measurable) list2.get(i31);
            int i32 = max5;
            int i33 = size7;
            if (Intrinsics.areEqual(RulerKt.getLayoutId(measurable10), "TextField")) {
                Placeable mo571measureBRTryo03 = measurable10.mo571measureBRTryo0(m727copyZbe2FdA$default2);
                long m727copyZbe2FdA$default3 = Constraints.m727copyZbe2FdA$default(m727copyZbe2FdA$default2, 0, 0, 0, 0, 14);
                int size8 = list2.size();
                int i34 = 0;
                while (true) {
                    if (i34 >= size8) {
                        obj7 = null;
                        break;
                    }
                    Object obj8 = list2.get(i34);
                    int i35 = size8;
                    if (Intrinsics.areEqual(RulerKt.getLayoutId((Measurable) obj8), "Hint")) {
                        obj7 = obj8;
                        break;
                    }
                    i34++;
                    size8 = i35;
                }
                Measurable measurable11 = (Measurable) obj7;
                Placeable mo571measureBRTryo04 = measurable11 != null ? measurable11.mo571measureBRTryo0(m727copyZbe2FdA$default3) : null;
                int max6 = Math.max(max4, Math.max(mo571measureBRTryo03.height, mo571measureBRTryo04 != null ? mo571measureBRTryo04.height : 0) + i32 + mo171roundToPx0680j_4);
                int i36 = placeable != null ? placeable.width : 0;
                Placeable placeable19 = placeable3;
                int i37 = placeable3 != null ? placeable19.width : 0;
                Placeable placeable20 = placeable5;
                int i38 = placeable5 != null ? placeable20.width : 0;
                if (placeable6 != null) {
                    i4 = placeable6.width;
                    placeable7 = placeable19;
                } else {
                    placeable7 = placeable19;
                    i4 = 0;
                }
                int i39 = mo571measureBRTryo03.width;
                Placeable placeable21 = placeable7;
                Placeable placeable22 = (Placeable) ref$ObjectRef4.element;
                if (placeable22 != null) {
                    i5 = placeable22.width;
                    ref$ObjectRef = ref$ObjectRef4;
                } else {
                    ref$ObjectRef = ref$ObjectRef4;
                    i5 = 0;
                }
                if (mo571measureBRTryo04 != null) {
                    placeable8 = mo571measureBRTryo03;
                    i6 = i36;
                    ref$ObjectRef2 = ref$ObjectRef;
                    j3 = j4;
                    i7 = mo571measureBRTryo04.width;
                    placeable9 = mo571measureBRTryo04;
                    placeable10 = placeable6;
                    i8 = i38;
                    placeable11 = placeable20;
                    measurable = measurable9;
                    outlinedTextFieldMeasurePolicy = this;
                    placeable12 = placeable;
                    i9 = max6;
                    placeable13 = placeable21;
                    measureScope2 = measureScope;
                } else {
                    ref$ObjectRef2 = ref$ObjectRef;
                    placeable8 = mo571measureBRTryo03;
                    i6 = i36;
                    j3 = j4;
                    i7 = 0;
                    placeable9 = mo571measureBRTryo04;
                    placeable10 = placeable6;
                    i8 = i38;
                    placeable11 = placeable20;
                    measurable = measurable9;
                    outlinedTextFieldMeasurePolicy = this;
                    measureScope2 = measureScope;
                    placeable12 = placeable;
                    i9 = max6;
                    placeable13 = placeable21;
                }
                final int m352calculateWidthIzADHW4 = outlinedTextFieldMeasurePolicy.m352calculateWidthIzADHW4(measureScope2, i6, i37, i8, i4, i39, i5, i7, j3, invoke);
                Placeable mo571measureBRTryo05 = measurable != null ? measurable.mo571measureBRTryo0(Constraints.m727copyZbe2FdA$default(ConstraintsKt.m743offsetNN6EwU$default(0, -i9, 1, m727copyZbe2FdA$default), 0, m352calculateWidthIzADHW4, 0, 0, 9)) : null;
                int i40 = mo571measureBRTryo05 != null ? mo571measureBRTryo05.height : 0;
                Placeable placeable23 = placeable12;
                int i41 = placeable12 != null ? placeable23.height : 0;
                final Placeable placeable24 = placeable13;
                int i42 = placeable13 != null ? placeable24.height : 0;
                Placeable placeable25 = placeable11;
                int i43 = placeable25 != null ? placeable25.height : 0;
                Placeable placeable26 = placeable10;
                int i44 = placeable26 != null ? placeable26.height : 0;
                Placeable placeable27 = placeable8;
                int i45 = placeable27.height;
                Ref$ObjectRef ref$ObjectRef5 = ref$ObjectRef2;
                Placeable placeable28 = (Placeable) ref$ObjectRef5.element;
                int i46 = placeable28 != null ? placeable28.height : 0;
                int i47 = i40;
                final Placeable placeable29 = placeable9;
                if (placeable29 != null) {
                    placeable14 = placeable26;
                    i10 = i44;
                    i11 = i45;
                    i12 = placeable29.height;
                } else {
                    placeable14 = placeable26;
                    i10 = i44;
                    i11 = i45;
                    i12 = 0;
                }
                if (mo571measureBRTryo05 != null) {
                    ref$ObjectRef3 = ref$ObjectRef5;
                    i13 = mo571measureBRTryo05.height;
                    placeable15 = placeable25;
                    placeable16 = placeable27;
                    i14 = i46;
                    placeable17 = placeable23;
                    i15 = 0;
                    measureScope3 = measureScope;
                    f = invoke;
                    outlinedTextFieldMeasurePolicy2 = this;
                } else {
                    ref$ObjectRef3 = ref$ObjectRef5;
                    i13 = 0;
                    outlinedTextFieldMeasurePolicy2 = this;
                    placeable15 = placeable25;
                    placeable16 = placeable27;
                    i14 = i46;
                    placeable17 = placeable23;
                    i15 = 0;
                    measureScope3 = measureScope;
                    f = invoke;
                }
                final int m351calculateHeightmKXJcVc = outlinedTextFieldMeasurePolicy2.m351calculateHeightmKXJcVc(measureScope3, i41, i42, i43, i10, i11, i14, i12, i13, j, f);
                final float f3 = f;
                int i48 = m351calculateHeightmKXJcVc - i47;
                int size9 = list.size();
                int i49 = i15;
                while (i49 < size9) {
                    Measurable measurable12 = (Measurable) list.get(i49);
                    if (Intrinsics.areEqual(RulerKt.getLayoutId(measurable12), "Container")) {
                        final Placeable mo571measureBRTryo06 = measurable12.mo571measureBRTryo0(ConstraintsKt.Constraints(m352calculateWidthIzADHW4 != Integer.MAX_VALUE ? m352calculateWidthIzADHW4 : i15, m352calculateWidthIzADHW4, i48 != Integer.MAX_VALUE ? i48 : i15, i48));
                        final Placeable placeable30 = placeable17;
                        final Placeable placeable31 = placeable15;
                        final Placeable placeable32 = placeable14;
                        final Ref$ObjectRef ref$ObjectRef6 = ref$ObjectRef3;
                        final Placeable placeable33 = placeable16;
                        final Placeable placeable34 = mo571measureBRTryo05;
                        return measureScope.layout(m352calculateWidthIzADHW4, m351calculateHeightmKXJcVc, EmptyMap.INSTANCE, new Function1() { // from class: androidx.compose.material3.OutlinedTextFieldMeasurePolicy$$ExternalSyntheticLambda0
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj9) {
                                int i50;
                                OutlinedTextFieldMeasurePolicy outlinedTextFieldMeasurePolicy3;
                                int i51;
                                int i52;
                                OutlinedTextFieldMeasurePolicy outlinedTextFieldMeasurePolicy4;
                                int i53;
                                float f4;
                                float f5;
                                float f6;
                                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj9;
                                Placeable placeable35 = (Placeable) ref$ObjectRef6.element;
                                MeasureScope measureScope4 = measureScope;
                                float density = measureScope4.getDensity();
                                LayoutDirection layoutDirection = measureScope4.getLayoutDirection();
                                OutlinedTextFieldMeasurePolicy outlinedTextFieldMeasurePolicy5 = OutlinedTextFieldMeasurePolicy.this;
                                float mo177toPx0680j_4 = measureScope4.mo177toPx0680j_4(outlinedTextFieldMeasurePolicy5.horizontalIconPadding);
                                TextFieldLabelPosition$Attached textFieldLabelPosition$Attached = outlinedTextFieldMeasurePolicy5.labelPosition;
                                PaddingValues paddingValues2 = outlinedTextFieldMeasurePolicy5.paddingValues;
                                placementScope.place(mo571measureBRTryo06, 0, 0, 0.0f);
                                Placeable placeable36 = placeable34;
                                int i54 = m351calculateHeightmKXJcVc - (placeable36 != null ? placeable36.height : 0);
                                int roundToInt = MathKt.roundToInt(paddingValues2.mo211calculateTopPaddingD9Ej5fM() * density);
                                Placeable placeable37 = placeable30;
                                if (placeable37 != null) {
                                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable37, 0, Math.round(((i54 - placeable37.height) / 2.0f) * 1.0f));
                                }
                                int i55 = m352calculateWidthIzADHW4;
                                Placeable placeable38 = placeable24;
                                if (placeable35 != null) {
                                    int round = outlinedTextFieldMeasurePolicy5.singleLine ? Math.round(((i54 - placeable35.height) / 2.0f) * 1.0f) : roundToInt;
                                    int i56 = -(placeable35.height / 2);
                                    i50 = i55;
                                    float f7 = f3;
                                    int lerp = DBUtil.lerp(round, f7, i56);
                                    float calculateStartPadding = OffsetKt.calculateStartPadding(paddingValues2, layoutDirection) * density;
                                    float calculateEndPadding = OffsetKt.calculateEndPadding(paddingValues2, layoutDirection) * density;
                                    if (placeable37 == null) {
                                        f5 = calculateStartPadding;
                                        f4 = 0.0f;
                                    } else {
                                        f4 = 0.0f;
                                        float f8 = placeable37.width;
                                        float f9 = calculateStartPadding - mo177toPx0680j_4;
                                        if (f9 < 0.0f) {
                                            f9 = 0.0f;
                                        }
                                        f5 = f8 + f9;
                                    }
                                    if (placeable38 == null) {
                                        outlinedTextFieldMeasurePolicy3 = outlinedTextFieldMeasurePolicy5;
                                        f6 = calculateEndPadding;
                                    } else {
                                        outlinedTextFieldMeasurePolicy3 = outlinedTextFieldMeasurePolicy5;
                                        float f10 = placeable38.width;
                                        float f11 = calculateEndPadding - mo177toPx0680j_4;
                                        if (f11 < f4) {
                                            f11 = f4;
                                        }
                                        f6 = f10 + f11;
                                    }
                                    LayoutDirection layoutDirection2 = LayoutDirection.Ltr;
                                    placementScope.place(placeable35, MathKt.roundToInt(DBUtil.lerp(textFieldLabelPosition$Attached.expandedAlignment.align(placeable35.width, i50 - MathKt.roundToInt(f5 + f6), layoutDirection) + (layoutDirection == layoutDirection2 ? f5 : f6), ((BiasAlignment.Horizontal) Icons$Filled.getMinimizedAlignment(textFieldLabelPosition$Attached)).align(placeable35.width, i50 - MathKt.roundToInt(calculateStartPadding + calculateEndPadding), layoutDirection) + (layoutDirection == layoutDirection2 ? calculateStartPadding : calculateEndPadding), f7)), lerp, f4);
                                } else {
                                    i50 = i55;
                                    outlinedTextFieldMeasurePolicy3 = outlinedTextFieldMeasurePolicy5;
                                }
                                Placeable placeable39 = placeable31;
                                if (placeable39 != null) {
                                    i51 = roundToInt;
                                    i52 = i54;
                                    outlinedTextFieldMeasurePolicy4 = outlinedTextFieldMeasurePolicy3;
                                    i53 = 0;
                                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable39, placeable37 != null ? placeable37.width : 0, OutlinedTextFieldMeasurePolicy.place$calculateVerticalPosition(0, outlinedTextFieldMeasurePolicy4, i52, i51, placeable35, placeable39));
                                } else {
                                    i51 = roundToInt;
                                    i52 = i54;
                                    outlinedTextFieldMeasurePolicy4 = outlinedTextFieldMeasurePolicy3;
                                    i53 = 0;
                                }
                                int i57 = (placeable37 != null ? placeable37.width : 0) + (placeable39 != null ? placeable39.width : 0);
                                Placeable placeable40 = placeable33;
                                Placeable.PlacementScope.placeRelative$default(placementScope, placeable40, i57, OutlinedTextFieldMeasurePolicy.place$calculateVerticalPosition(i53, outlinedTextFieldMeasurePolicy4, i52, i51, placeable35, placeable40));
                                Placeable placeable41 = placeable29;
                                if (placeable41 != null) {
                                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable41, i57, OutlinedTextFieldMeasurePolicy.place$calculateVerticalPosition(i53, outlinedTextFieldMeasurePolicy4, i52, i51, placeable35, placeable41));
                                }
                                Placeable placeable42 = placeable32;
                                if (placeable42 != null) {
                                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable42, (i50 - (placeable38 != null ? placeable38.width : 0)) - placeable42.width, OutlinedTextFieldMeasurePolicy.place$calculateVerticalPosition(i53, outlinedTextFieldMeasurePolicy4, i52, i51, placeable35, placeable42));
                                }
                                if (placeable38 != null) {
                                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable38, i50 - placeable38.width, Math.round(((i52 - placeable38.height) / 2.0f) * 1.0f));
                                }
                                if (placeable36 != null) {
                                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable36, 0, i52);
                                }
                                return Unit.INSTANCE;
                            }
                        });
                    }
                    i49++;
                    m351calculateHeightmKXJcVc = m351calculateHeightmKXJcVc;
                }
                ListUtilsKt.throwNoSuchElementException("Collection contains no element matching the predicate.");
                _UtilJvmKt$$ExternalSyntheticLambda0.m();
                return null;
            }
            i31++;
            j4 = j;
            measurable8 = measurable9;
            size7 = i33;
            placeable5 = placeable5;
            list2 = list2;
            max5 = i32;
        }
        ListUtilsKt.throwNoSuchElementException("Collection contains no element matching the predicate.");
        _UtilJvmKt$$ExternalSyntheticLambda0.m();
        return null;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return intrinsicHeight(intrinsicMeasureScope, list, i, new SaversKt$$ExternalSyntheticLambda0(7));
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return intrinsicWidth(intrinsicMeasureScope, list, i, new SaversKt$$ExternalSyntheticLambda0(10));
    }
}
