package androidx.compose.foundation.layout;

import androidx.camera.core.impl.Config;
import androidx.compose.foundation.ScrollState$$ExternalSyntheticLambda4;
import androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda4;
import androidx.compose.material3.ExposedDropdownMenuKt$$ExternalSyntheticLambda4;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.GapComposer$$ExternalSyntheticLambda3;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MultiContentMeasurePolicyImpl;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupLayout$Content$4;
import androidx.core.graphics.Insets;
import com.fsck.k9.ui.settings.AboutFragmentKt$$ExternalSyntheticLambda5;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class OffsetKt {
    public static final int End = 6;
    public static final int Horizontal = 15;
    public static final int Left = 10;
    public static final int Right = 5;
    public static final int Start = 9;

    /* renamed from: Left, reason: collision with other field name */
    public static final Arrangement$End$1 f5Left = new Arrangement$End$1(1);

    /* renamed from: Right, reason: collision with other field name */
    public static final Arrangement$End$1 f6Right = new Arrangement$End$1(2);

    /* renamed from: Start, reason: collision with other field name */
    public static final Arrangement$End$1 f7Start = new Arrangement$End$1(6);

    /* renamed from: End, reason: collision with other field name */
    public static final Arrangement$End$1 f4End = new Arrangement$End$1(0);
    public static final FlowRowOverflow Top = new FlowRowOverflow(2);
    public static final Arrangement$End$1 Center = new Arrangement$End$1(3);
    public static final Arrangement$End$1 SpaceEvenly = new Arrangement$End$1(5);
    public static final Arrangement$End$1 SpaceBetween = new Arrangement$End$1(4);
    public static final FlexBoxKt$DefaultDensity$1 DefaultDensity = new FlexBoxKt$DefaultDensity$1();
    public static final FixedIntInsets EmptyWindowInsets = new FixedIntInsets(0);
    public static final ScrollState$$ExternalSyntheticLambda4 safeDrawingLambda = new ScrollState$$ExternalSyntheticLambda4(7);
    public static final ScrollState$$ExternalSyntheticLambda4 safeContentLambda = new ScrollState$$ExternalSyntheticLambda4(8);
    public static final ScrollState$$ExternalSyntheticLambda4 imeLambda = new ScrollState$$ExternalSyntheticLambda4(9);

    public static final void BoxWithConstraints(Modifier modifier, Alignment alignment, boolean z, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i, int i2) {
        int i3;
        Alignment alignment2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(380139498);
        int i4 = 2;
        if ((i & 6) == 0) {
            i3 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i5 = i3 | 48;
        int i6 = i2 & 4;
        if (i6 != 0) {
            i5 = i3 | 432;
        } else if ((i & 384) == 0) {
            i5 |= gapComposer.changed(z) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i5 |= gapComposer.changedInstance(composableLambdaImpl) ? 2048 : 1024;
        }
        if (gapComposer.shouldExecute(i5 & 1, (i5 & 1171) != 1170)) {
            BiasAlignment biasAlignment = Alignment.Companion.TopStart;
            if (i6 != 0) {
                z = false;
            }
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, z);
            boolean changed = gapComposer.changed(maybeCachedBoxMeasurePolicy) | ((i5 & 7168) == 2048);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new GapComposer$$ExternalSyntheticLambda3(i4, maybeCachedBoxMeasurePolicy, composableLambdaImpl);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            RulerKt.SubcomposeLayout(modifier, (Function2) rememberedValue, gapComposer, i5 & 14, 0);
            alignment2 = biasAlignment;
        } else {
            gapComposer.skipToGroupEnd();
            alignment2 = alignment;
        }
        Alignment alignment3 = alignment2;
        boolean z2 = z;
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ExposedDropdownMenuKt$$ExternalSyntheticLambda4(modifier, alignment3, z2, composableLambdaImpl, i, i2);
        }
    }

    public static final void FlowRow(Modifier modifier, Arrangement$Horizontal arrangement$Horizontal, Arrangement$Vertical arrangement$Vertical, int i, FlowRowOverflow flowRowOverflow, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        int i3;
        FlowRowOverflow flowRowOverflow2;
        boolean z;
        Object obj;
        BiasAlignment.Vertical vertical = Alignment.Companion.Top;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1956591841);
        if ((i2 & 6) == 0) {
            i3 = (gapComposer.changed(modifier) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposer.changed(arrangement$Horizontal) ? 32 : 16;
        }
        if ((i2 & 384) == 0) {
            i3 |= gapComposer.changed(arrangement$Vertical) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposer.changed(vertical) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposer.changed(Integer.MAX_VALUE) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposer.changed(i) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            flowRowOverflow2 = flowRowOverflow;
            i3 |= gapComposer.changed(flowRowOverflow2) ? 1048576 : 524288;
        } else {
            flowRowOverflow2 = flowRowOverflow;
        }
        if ((i2 & 12582912) == 0) {
            i3 |= gapComposer.changedInstance(composableLambdaImpl) ? 8388608 : 4194304;
        }
        int i4 = i3;
        if (gapComposer.shouldExecute(i4 & 1, (i4 & 4793491) != 4793490)) {
            int i5 = i4 & 3670016;
            boolean z2 = i5 == 1048576;
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            Object obj2 = rememberedValue;
            if (z2 || rememberedValue == neverEqualPolicy) {
                flowRowOverflow2.getClass();
                FlowLayoutOverflowState flowLayoutOverflowState = new FlowLayoutOverflowState();
                gapComposer.updateRememberedValue(flowLayoutOverflowState);
                obj2 = flowLayoutOverflowState;
            }
            FlowLayoutOverflowState flowLayoutOverflowState2 = (FlowLayoutOverflowState) obj2;
            int i6 = i4 >> 3;
            boolean changed = ((((57344 & i6) ^ 24576) > 16384 && gapComposer.changed(i)) || (i6 & 24576) == 16384) | ((((i6 & 14) ^ 6) > 4 && gapComposer.changed(arrangement$Horizontal)) || (i6 & 6) == 4) | ((((i6 & 112) ^ 48) > 32 && gapComposer.changed(arrangement$Vertical)) || (i6 & 48) == 32) | ((((i6 & 896) ^ 384) > 256 && gapComposer.changed(vertical)) || (i6 & 384) == 256) | ((((i6 & 7168) ^ 3072) > 2048 && gapComposer.changed(Integer.MAX_VALUE)) || (i6 & 3072) == 2048) | gapComposer.changed(flowLayoutOverflowState2);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changed || rememberedValue2 == neverEqualPolicy) {
                FlowMeasurePolicy flowMeasurePolicy = new FlowMeasurePolicy(arrangement$Horizontal, arrangement$Vertical, arrangement$Horizontal.mo200getSpacingD9Ej5fM(), new CrossAxisAlignment$VerticalCrossAxisAlignment(vertical), arrangement$Vertical.mo200getSpacingD9Ej5fM(), i, flowLayoutOverflowState2);
                gapComposer.updateRememberedValue(flowMeasurePolicy);
                rememberedValue2 = flowMeasurePolicy;
            }
            FlowMeasurePolicy flowMeasurePolicy2 = (FlowMeasurePolicy) rememberedValue2;
            boolean z3 = (i5 == 1048576) | ((i4 & 29360128) == 8388608) | ((i4 & 458752) == 131072);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (z3 || rememberedValue3 == neverEqualPolicy) {
                ArrayList arrayList = new ArrayList();
                z = true;
                arrayList.add(new ComposableLambdaImpl(-1192950673, new AlertDialogKt$$ExternalSyntheticLambda4(composableLambdaImpl, true ? 1 : 0), true));
                flowRowOverflow.getClass();
                gapComposer.updateRememberedValue(arrayList);
                obj = arrayList;
            } else {
                z = true;
                obj = rememberedValue3;
            }
            ComposableLambdaImpl composableLambdaImpl2 = new ComposableLambdaImpl(1271844412, new PopupLayout$Content$4(3, (List) obj), z);
            boolean changed2 = gapComposer.changed(flowMeasurePolicy2);
            Object rememberedValue4 = gapComposer.rememberedValue();
            Object obj3 = rememberedValue4;
            if (changed2 || rememberedValue4 == neverEqualPolicy) {
                MultiContentMeasurePolicyImpl multiContentMeasurePolicyImpl = new MultiContentMeasurePolicyImpl(flowMeasurePolicy2);
                gapComposer.updateRememberedValue(multiContentMeasurePolicyImpl);
                obj3 = multiContentMeasurePolicyImpl;
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) obj3;
            long j = gapComposer.compositeKeyHashCode;
            int i7 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, modifier);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, measurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer, Integer.valueOf(i7), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            Config.CC.m(0, composableLambdaImpl2, gapComposer, true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutFragmentKt$$ExternalSyntheticLambda5(modifier, arrangement$Horizontal, arrangement$Vertical, i, flowRowOverflow, composableLambdaImpl, i2);
        }
    }

    /* renamed from: PaddingValues-YgX7TsA$default, reason: not valid java name */
    public static PaddingValuesImpl m213PaddingValuesYgX7TsA$default(int i, float f) {
        if ((i & 1) != 0) {
            f = 0.0f;
        }
        float f2 = (i & 2) == 0 ? 8.0f : 0.0f;
        return new PaddingValuesImpl(f, f2, f, f2);
    }

    /* renamed from: PaddingValues-a9UjIt4, reason: not valid java name */
    public static final PaddingValuesImpl m214PaddingValuesa9UjIt4(float f, float f2, float f3, float f4) {
        return new PaddingValuesImpl(f, f2, f3, f4);
    }

    /* renamed from: PaddingValues-a9UjIt4$default, reason: not valid java name */
    public static PaddingValuesImpl m215PaddingValuesa9UjIt4$default(float f, float f2, float f3, int i) {
        if ((i & 1) != 0) {
            f = 0.0f;
        }
        if ((i & 2) != 0) {
            f2 = 0.0f;
        }
        return new PaddingValuesImpl(f, f2, 0.0f, f3);
    }

    public static final void Spacer(Composer composer, Modifier modifier) {
        SpacerMeasurePolicy spacerMeasurePolicy = SpacerMeasurePolicy.INSTANCE;
        GapComposer gapComposer = (GapComposer) composer;
        long j = gapComposer.compositeKeyHashCode;
        int i = (int) (j ^ (j >>> 32));
        Modifier materializeModifier = AbsoluteAlignment.materializeModifier(composer, modifier);
        PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
        ComposeUiNode.Companion.getClass();
        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startReusableNode();
        if (gapComposer2.inserting) {
            gapComposer2.createNode(layoutNode$Companion$Constructor$1);
        } else {
            gapComposer2.useNode();
        }
        Updater.m380setimpl(composer, spacerMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
        Updater.m380setimpl(composer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
        Updater.m379reconcileimpl(composer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
        Updater.m380setimpl(composer, materializeModifier, ComposeUiNode.Companion.SetModifier);
        Updater.m380setimpl(composer, Integer.valueOf(i), ComposeUiNode.Companion.SetCompositeKeyHash);
        gapComposer2.end(true);
    }

    public static final Modifier absoluteOffset(Modifier modifier, Function1 function1) {
        return modifier.then(new OffsetPxElement(function1));
    }

    public static final float calculateEndPadding(PaddingValues paddingValues, LayoutDirection layoutDirection) {
        return layoutDirection == LayoutDirection.Ltr ? paddingValues.mo210calculateRightPaddingu2uoSUM(layoutDirection) : paddingValues.mo209calculateLeftPaddingu2uoSUM(layoutDirection);
    }

    public static final float calculateStartPadding(PaddingValues paddingValues, LayoutDirection layoutDirection) {
        return layoutDirection == LayoutDirection.Ltr ? paddingValues.mo209calculateLeftPaddingu2uoSUM(layoutDirection) : paddingValues.mo210calculateRightPaddingu2uoSUM(layoutDirection);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m216constructorimpl(long j, LayoutOrientation layoutOrientation) {
        LayoutOrientation layoutOrientation2 = LayoutOrientation.Horizontal;
        return ConstraintsKt.Constraints(layoutOrientation == layoutOrientation2 ? Constraints.m736getMinWidthimpl(j) : Constraints.m735getMinHeightimpl(j), layoutOrientation == layoutOrientation2 ? Constraints.m734getMaxWidthimpl(j) : Constraints.m733getMaxHeightimpl(j), layoutOrientation == layoutOrientation2 ? Constraints.m735getMinHeightimpl(j) : Constraints.m736getMinWidthimpl(j), layoutOrientation == layoutOrientation2 ? Constraints.m733getMaxHeightimpl(j) : Constraints.m734getMaxWidthimpl(j));
    }

    public static final Modifier consumeWindowInsets(Modifier modifier, FixedIntInsets fixedIntInsets) {
        return modifier.then(new UnionInsetsConsumingModifierElement(fixedIntInsets));
    }

    public static final RowColumnParentData getRowColumnParentData(Measurable measurable) {
        Object parentData = measurable.getParentData();
        if (parentData instanceof RowColumnParentData) {
            return (RowColumnParentData) parentData;
        }
        return null;
    }

    public static final float getWeight(RowColumnParentData rowColumnParentData) {
        if (rowColumnParentData != null) {
            return rowColumnParentData.weight;
        }
        return 0.0f;
    }

    public static final Modifier height(Modifier modifier) {
        return modifier.then(new IntrinsicHeightElement());
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.compose.ui.layout.MeasureResult measure(androidx.compose.foundation.layout.RowColumnMeasurePolicy r25, int r26, int r27, int r28, int r29, int r30, androidx.compose.ui.layout.MeasureScope r31, java.util.List r32, androidx.compose.ui.layout.Placeable[] r33, int r34, int r35, int[] r36, int r37) {
        /*
            Method dump skipped, instructions count: 510
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.layout.OffsetKt.measure(androidx.compose.foundation.layout.RowColumnMeasurePolicy, int, int, int, int, int, androidx.compose.ui.layout.MeasureScope, java.util.List, androidx.compose.ui.layout.Placeable[], int, int, int[], int):androidx.compose.ui.layout.MeasureResult");
    }

    public static final Modifier onConsumedWindowInsetsChanged(Modifier modifier, Function1 function1) {
        return modifier.then(new ConsumedInsetsModifierElement(function1));
    }

    public static final Modifier padding(Modifier modifier, PaddingValues paddingValues) {
        return modifier.then(new PaddingValuesElement(paddingValues));
    }

    /* renamed from: padding-3ABfNKs, reason: not valid java name */
    public static final Modifier m218padding3ABfNKs(Modifier modifier, float f) {
        return modifier.then(new PaddingElement(f, f, f, f));
    }

    /* renamed from: padding-VpY3zN4, reason: not valid java name */
    public static final Modifier m219paddingVpY3zN4(Modifier modifier, float f, float f2) {
        return modifier.then(new PaddingElement(f, f2, f, f2));
    }

    /* renamed from: padding-VpY3zN4$default, reason: not valid java name */
    public static Modifier m220paddingVpY3zN4$default(Modifier modifier, float f, float f2, int i) {
        if ((i & 1) != 0) {
            f = 0.0f;
        }
        if ((i & 2) != 0) {
            f2 = 0.0f;
        }
        return m219paddingVpY3zN4(modifier, f, f2);
    }

    /* renamed from: padding-qDBjuR0, reason: not valid java name */
    public static final Modifier m221paddingqDBjuR0(Modifier modifier, float f, float f2, float f3, float f4) {
        return modifier.then(new PaddingElement(f, f2, f3, f4));
    }

    /* renamed from: padding-qDBjuR0$default, reason: not valid java name */
    public static Modifier m222paddingqDBjuR0$default(Modifier modifier, float f, float f2, float f3, float f4, int i) {
        if ((i & 1) != 0) {
            f = 0.0f;
        }
        if ((i & 2) != 0) {
            f2 = 0.0f;
        }
        if ((i & 4) != 0) {
            f3 = 0.0f;
        }
        if ((i & 8) != 0) {
            f4 = 0.0f;
        }
        return m221paddingqDBjuR0(modifier, f, f2, f3, f4);
    }

    public static void placeCenter$foundation_layout(int i, int[] iArr, int[] iArr2, boolean z) {
        int i2 = 0;
        int i3 = 0;
        for (int i4 : iArr) {
            i3 += i4;
        }
        float f = (i - i3) / 2.0f;
        if (!z) {
            int length = iArr.length;
            int i5 = 0;
            while (i2 < length) {
                int i6 = iArr[i2];
                iArr2[i5] = Math.round(f);
                f += i6;
                i2++;
                i5++;
            }
            return;
        }
        int length2 = iArr.length;
        while (true) {
            length2--;
            if (-1 >= length2) {
                return;
            }
            int i7 = iArr[length2];
            iArr2[length2] = Math.round(f);
            f += i7;
        }
    }

    public static void placeSpaceBetween$foundation_layout(int i, int[] iArr, int[] iArr2, boolean z) {
        if (iArr.length == 0) {
            return;
        }
        int i2 = 0;
        int i3 = 0;
        for (int i4 : iArr) {
            i3 += i4;
        }
        float max = (i - i3) / Math.max(iArr.length - 1, 1);
        float f = (z && iArr.length == 1) ? max : 0.0f;
        if (z) {
            for (int length = iArr.length - 1; -1 < length; length--) {
                int i5 = iArr[length];
                iArr2[length] = Math.round(f);
                f += i5 + max;
            }
            return;
        }
        int length2 = iArr.length;
        int i6 = 0;
        while (i2 < length2) {
            int i7 = iArr[i2];
            iArr2[i6] = Math.round(f);
            f += i7 + max;
            i2++;
            i6++;
        }
    }

    public static void placeSpaceEvenly$foundation_layout(int i, int[] iArr, int[] iArr2, boolean z) {
        int i2 = 0;
        int i3 = 0;
        for (int i4 : iArr) {
            i3 += i4;
        }
        float length = (i - i3) / (iArr.length + 1);
        if (z) {
            float f = length;
            for (int length2 = iArr.length - 1; -1 < length2; length2--) {
                int i5 = iArr[length2];
                iArr2[length2] = Math.round(f);
                f += i5 + length;
            }
            return;
        }
        int length3 = iArr.length;
        float f2 = length;
        int i6 = 0;
        while (i2 < length3) {
            int i7 = iArr[i2];
            iArr2[i6] = Math.round(f2);
            f2 += i7 + length;
            i2++;
            i6++;
        }
    }

    /* renamed from: toBoxConstraints-OenEA2s, reason: not valid java name */
    public static final long m223toBoxConstraintsOenEA2s(long j) {
        return ConstraintsKt.Constraints(Constraints.m736getMinWidthimpl(j), Constraints.m734getMaxWidthimpl(j), Constraints.m735getMinHeightimpl(j), Constraints.m733getMaxHeightimpl(j));
    }

    public static final InsetsValues toInsetsValues(Insets insets) {
        return new InsetsValues(insets.left, insets.top, insets.right, insets.bottom);
    }

    public static final void valueToString_impl$lambda$0$appendPlus(StringBuilder sb, String str) {
        if (sb.length() > 0) {
            sb.append('+');
        }
        sb.append(str);
    }

    public static final Modifier width(Modifier modifier, IntrinsicSize intrinsicSize) {
        return modifier.then(new IntrinsicWidthElement(intrinsicSize));
    }

    public static final Modifier windowInsetsPadding(Modifier modifier, WindowInsets windowInsets) {
        return modifier.then(new InsetsPaddingModifierElement(windowInsets));
    }

    public abstract int align$foundation_layout(int i, int i2, LayoutDirection layoutDirection, Placeable placeable, int i3);

    public Integer calculateAlignmentLinePosition$foundation_layout(Placeable placeable) {
        return null;
    }

    public static final Modifier consumeWindowInsets(Modifier modifier, PaddingValues paddingValues) {
        return modifier.then(new PaddingValuesConsumingModifierElement(paddingValues));
    }

    public static final Modifier windowInsetsPadding(Modifier modifier, Function1 function1) {
        return modifier.then(new SystemInsetsPaddingModifierElement(function1));
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x005c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void FlowRow(androidx.compose.ui.Modifier r17, final androidx.compose.foundation.layout.Arrangement$Horizontal r18, final androidx.compose.foundation.layout.Arrangement$Vertical r19, androidx.compose.ui.BiasAlignment.Vertical r20, int r21, int r22, final androidx.compose.runtime.internal.ComposableLambdaImpl r23, androidx.compose.runtime.Composer r24, final int r25, final int r26) {
        /*
            r6 = r24
            androidx.compose.runtime.GapComposer r6 = (androidx.compose.runtime.GapComposer) r6
            r0 = -1303174015(0xffffffffb2532481, float:-1.22901165E-8)
            r6.startRestartGroup(r0)
            r0 = r26 & 1
            if (r0 == 0) goto L16
            r1 = r25 | 6
            r2 = r1
            r1 = r17
        L13:
            r10 = r19
            goto L24
        L16:
            r1 = r17
            boolean r2 = r6.changed(r1)
            if (r2 == 0) goto L20
            r2 = 4
            goto L21
        L20:
            r2 = 2
        L21:
            r2 = r25 | r2
            goto L13
        L24:
            boolean r3 = r6.changed(r10)
            if (r3 == 0) goto L2d
            r3 = 256(0x100, float:3.59E-43)
            goto L2f
        L2d:
            r3 = 128(0x80, float:1.8E-43)
        L2f:
            r2 = r2 | r3
            r3 = r2 | 27648(0x6c00, float:3.8743E-41)
            r4 = r26 & 32
            if (r4 == 0) goto L3d
            r3 = 224256(0x36c00, float:3.1425E-40)
            r3 = r3 | r2
        L3a:
            r2 = r22
            goto L51
        L3d:
            r2 = 196608(0x30000, float:2.75506E-40)
            r2 = r25 & r2
            if (r2 != 0) goto L3a
            r2 = r22
            boolean r5 = r6.changed(r2)
            if (r5 == 0) goto L4e
            r5 = 131072(0x20000, float:1.83671E-40)
            goto L50
        L4e:
            r5 = 65536(0x10000, float:9.1835E-41)
        L50:
            r3 = r3 | r5
        L51:
            r5 = 599187(0x92493, float:8.3964E-40)
            r5 = r5 & r3
            r7 = 599186(0x92492, float:8.39638E-40)
            if (r5 == r7) goto L5c
            r5 = 1
            goto L5d
        L5c:
            r5 = 0
        L5d:
            r7 = r3 & 1
            boolean r5 = r6.shouldExecute(r7, r5)
            if (r5 == 0) goto L96
            if (r0 == 0) goto L6a
            androidx.compose.ui.Modifier$Companion r0 = androidx.compose.ui.Modifier.Companion.$$INSTANCE
            goto L6b
        L6a:
            r0 = r1
        L6b:
            androidx.compose.ui.BiasAlignment$Vertical r8 = androidx.compose.ui.Alignment.Companion.Top
            r9 = 2147483647(0x7fffffff, float:NaN)
            if (r4 == 0) goto L73
            r2 = r9
        L73:
            r1 = r3 & 14
            r4 = 1572912(0x180030, float:2.204119E-39)
            r1 = r1 | r4
            r4 = r3 & 896(0x380, float:1.256E-42)
            r1 = r1 | r4
            r1 = r1 | 27648(0x6c00, float:3.8743E-41)
            r4 = 458752(0x70000, float:6.42848E-40)
            r3 = r3 & r4
            r1 = r1 | r3
            r3 = 12582912(0xc00000, float:1.7632415E-38)
            r7 = r1 | r3
            androidx.compose.foundation.layout.FlowRowOverflow r4 = androidx.compose.foundation.layout.FlowRowOverflow.Clip
            r1 = r18
            r5 = r23
            r3 = r2
            r2 = r10
            FlowRow(r0, r1, r2, r3, r4, r5, r6, r7)
            r13 = r3
            r11 = r8
            r12 = r9
            r8 = r0
            goto L9f
        L96:
            r6.skipToGroupEnd()
            r11 = r20
            r12 = r21
            r8 = r1
            r13 = r2
        L9f:
            androidx.compose.runtime.RecomposeScopeImpl r0 = r6.endRestartGroup()
            if (r0 == 0) goto Lb6
            androidx.compose.foundation.layout.FlowLayoutKt$$ExternalSyntheticLambda1 r7 = new androidx.compose.foundation.layout.FlowLayoutKt$$ExternalSyntheticLambda1
            r9 = r18
            r10 = r19
            r14 = r23
            r15 = r25
            r16 = r26
            r7.<init>()
            r0.block = r7
        Lb6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.layout.OffsetKt.FlowRow(androidx.compose.ui.Modifier, androidx.compose.foundation.layout.Arrangement$Horizontal, androidx.compose.foundation.layout.Arrangement$Vertical, androidx.compose.ui.BiasAlignment$Vertical, int, int, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.Composer, int, int):void");
    }
}
