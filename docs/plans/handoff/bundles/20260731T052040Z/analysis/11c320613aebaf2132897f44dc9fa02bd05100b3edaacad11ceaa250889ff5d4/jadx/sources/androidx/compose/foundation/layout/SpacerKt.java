package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.internal.InlineClassHelperKt;
import androidx.compose.material3.MaterialThemeKt$$ExternalSyntheticLambda5;
import androidx.compose.material3.ScaffoldKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.MultiContentMeasurePolicyImpl;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.graphics.Insets;
import com.google.android.exoplayer2.RendererCapabilities;
import com.google.android.exoplayer2.util.Log;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.RangesKt;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class SpacerKt {
    public static final int End = 6;
    public static final int Horizontal = 15;
    public static final int Left = 10;
    public static final int Right = 5;
    public static final int Start = 9;

    /* renamed from: Start, reason: collision with other field name */
    public static final FlowRowOverflow f1Start = new FlowRowOverflow(4);

    /* renamed from: End, reason: collision with other field name */
    public static final FlowRowOverflow f0End = new FlowRowOverflow(3);
    public static final FlowRowOverflow Top = new FlowRowOverflow(5);
    public static final FlowRowOverflow Center = new FlowRowOverflow(2);
    public static final FixedIntInsets EmptyWindowInsets = new FixedIntInsets();

    public static final void FlowRow(Modifier modifier, Arrangement$Horizontal arrangement$Horizontal, Arrangement$Vertical arrangement$Vertical, FlowRowOverflow flowRowOverflow, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        FlowRowOverflow flowRowOverflow2;
        BiasAlignment.Vertical vertical = Alignment.Companion.Top;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1956591841);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(arrangement$Horizontal) ? 32 : 16;
        }
        if ((i & RendererCapabilities.MODE_SUPPORT_MASK) == 0) {
            i2 |= gapComposer.changed(arrangement$Vertical) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changed(vertical) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changed(Log.LOG_LEVEL_OFF) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= gapComposer.changed(Log.LOG_LEVEL_OFF) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            flowRowOverflow2 = flowRowOverflow;
            i2 |= gapComposer.changed(flowRowOverflow2) ? 1048576 : 524288;
        } else {
            flowRowOverflow2 = flowRowOverflow;
        }
        if ((i & 12582912) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 8388608 : 4194304;
        }
        int i3 = i2;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 4793491) != 4793490)) {
            int i4 = i3 & 3670016;
            boolean z = i4 == 1048576;
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (z || rememberedValue == neverEqualPolicy) {
                flowRowOverflow2.getClass();
                rememberedValue = new FlowLayoutOverflowState();
                gapComposer.updateRememberedValue(rememberedValue);
            }
            FlowLayoutOverflowState flowLayoutOverflowState = (FlowLayoutOverflowState) rememberedValue;
            int i5 = i3 >> 3;
            boolean changed = ((((i5 & 896) ^ RendererCapabilities.MODE_SUPPORT_MASK) > 256 && gapComposer.changed(vertical)) || (i5 & RendererCapabilities.MODE_SUPPORT_MASK) == 256) | ((((i5 & 14) ^ 6) > 4 && gapComposer.changed(arrangement$Horizontal)) || (i5 & 6) == 4) | ((((i5 & Token.ASSIGN_MOD) ^ 48) > 32 && gapComposer.changed(arrangement$Vertical)) || (i5 & 48) == 32) | ((((i5 & 7168) ^ 3072) > 2048 && gapComposer.changed(Log.LOG_LEVEL_OFF)) || (i5 & 3072) == 2048) | ((((57344 & i5) ^ 24576) > 16384 && gapComposer.changed(Log.LOG_LEVEL_OFF)) || (i5 & 24576) == 16384) | gapComposer.changed(flowLayoutOverflowState);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changed || rememberedValue2 == neverEqualPolicy) {
                FlowMeasurePolicy flowMeasurePolicy = new FlowMeasurePolicy(arrangement$Horizontal, arrangement$Vertical, arrangement$Horizontal.mo79getSpacingD9Ej5fM(), new CrossAxisAlignment$VerticalCrossAxisAlignment(), arrangement$Vertical.mo79getSpacingD9Ej5fM(), flowLayoutOverflowState);
                gapComposer.updateRememberedValue(flowMeasurePolicy);
                rememberedValue2 = flowMeasurePolicy;
            }
            FlowMeasurePolicy flowMeasurePolicy2 = (FlowMeasurePolicy) rememberedValue2;
            boolean z2 = (i4 == 1048576) | ((i3 & 29360128) == 8388608) | ((i3 & 458752) == 131072);
            Object rememberedValue3 = gapComposer.rememberedValue();
            Object obj = rememberedValue3;
            if (z2 || rememberedValue3 == neverEqualPolicy) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(new ComposableLambdaImpl(-1192950673, true, new ScaffoldKt$$ExternalSyntheticLambda0(composableLambdaImpl, 1)));
                flowRowOverflow.getClass();
                gapComposer.updateRememberedValue(arrayList);
                obj = arrayList;
            }
            ComposableLambdaImpl combineAsVirtualLayouts = RulerKt.combineAsVirtualLayouts((List) obj);
            boolean changed2 = gapComposer.changed(flowMeasurePolicy2);
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (changed2 || rememberedValue4 == neverEqualPolicy) {
                rememberedValue4 = new MultiContentMeasurePolicyImpl(flowMeasurePolicy2);
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) rememberedValue4;
            long j = gapComposer.compositeKeyHashCode;
            int i6 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = RangesKt.materializeModifier(gapComposer, modifier);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m170setimpl(gapComposer, measurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m170setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m170setimpl(gapComposer, Integer.valueOf(i6), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m169reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m170setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            combineAsVirtualLayouts.invoke((Object) gapComposer, (Object) 0);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MaterialThemeKt$$ExternalSyntheticLambda5(modifier, arrangement$Horizontal, arrangement$Vertical, flowRowOverflow, composableLambdaImpl, i, 2);
        }
    }

    /* renamed from: PaddingValues-a9UjIt4, reason: not valid java name */
    public static final PaddingValuesImpl m94PaddingValuesa9UjIt4(float f, float f2, float f3, float f4) {
        return new PaddingValuesImpl(f, f2, f3, f4);
    }

    /* renamed from: PaddingValues-a9UjIt4$default, reason: not valid java name */
    public static PaddingValuesImpl m95PaddingValuesa9UjIt4$default(float f) {
        return new PaddingValuesImpl(0.0f, 0.0f, 0.0f, f);
    }

    public static final void Spacer(Composer composer, Modifier modifier) {
        SpacerMeasurePolicy spacerMeasurePolicy = SpacerMeasurePolicy.INSTANCE;
        GapComposer gapComposer = (GapComposer) composer;
        long j = gapComposer.compositeKeyHashCode;
        int i = (int) (j ^ (j >>> 32));
        Modifier materializeModifier = RangesKt.materializeModifier(composer, modifier);
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
        Updater.m170setimpl(composer, spacerMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
        Updater.m170setimpl(composer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
        Updater.m169reconcileimpl(composer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
        Updater.m170setimpl(composer, materializeModifier, ComposeUiNode.Companion.SetModifier);
        Updater.m170setimpl(composer, Integer.valueOf(i), ComposeUiNode.Companion.SetCompositeKeyHash);
        gapComposer2.end(true);
    }

    public static final float calculateEndPadding(PaddingValues paddingValues, LayoutDirection layoutDirection) {
        return layoutDirection == LayoutDirection.Ltr ? paddingValues.mo85calculateRightPaddingu2uoSUM(layoutDirection) : paddingValues.mo84calculateLeftPaddingu2uoSUM(layoutDirection);
    }

    public static final float calculateStartPadding(PaddingValues paddingValues, LayoutDirection layoutDirection) {
        return layoutDirection == LayoutDirection.Ltr ? paddingValues.mo84calculateLeftPaddingu2uoSUM(layoutDirection) : paddingValues.mo85calculateRightPaddingu2uoSUM(layoutDirection);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m96constructorimpl(long j, LayoutOrientation layoutOrientation) {
        LayoutOrientation layoutOrientation2 = LayoutOrientation.Horizontal;
        return ConstraintsKt.Constraints(layoutOrientation == layoutOrientation2 ? Constraints.m436getMinWidthimpl(j) : Constraints.m435getMinHeightimpl(j), layoutOrientation == layoutOrientation2 ? Constraints.m434getMaxWidthimpl(j) : Constraints.m433getMaxHeightimpl(j), layoutOrientation == layoutOrientation2 ? Constraints.m435getMinHeightimpl(j) : Constraints.m436getMinWidthimpl(j), layoutOrientation == layoutOrientation2 ? Constraints.m433getMaxHeightimpl(j) : Constraints.m434getMaxWidthimpl(j));
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

    public static final MeasureResult measure(RowColumnMeasurePolicy rowColumnMeasurePolicy, int i, int i2, int i3, int i4, int i5, MeasureScope measureScope, List list, Placeable[] placeableArr, int i6, int i7, int[] iArr, int i8) {
        int i9;
        float f;
        long j;
        int i10;
        int i11;
        int i12;
        List list2 = list;
        long j2 = i5;
        int i13 = i7 - i6;
        int[] iArr2 = new int[i13];
        int i14 = i6;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        float f2 = 0.0f;
        while (i14 < i7) {
            Measurable measurable = (Measurable) list2.get(i14);
            float weight = getWeight(getRowColumnParentData(measurable));
            if (weight > 0.0f) {
                f2 += weight;
                i16++;
                j = j2;
                i10 = i14;
            } else {
                int i19 = i3 - i17;
                Placeable placeable = placeableArr[i14];
                j = j2;
                if (placeable == null) {
                    if (i3 == Integer.MAX_VALUE) {
                        i10 = i14;
                        i11 = i16;
                        i12 = Log.LOG_LEVEL_OFF;
                    } else {
                        i10 = i14;
                        i11 = i16;
                        i12 = i19 < 0 ? 0 : i19;
                    }
                    placeable = measurable.mo292measureBRTryo0(rowColumnMeasurePolicy.mo80createConstraintsxF2OJ5Q(0, i12, i4, false));
                } else {
                    i10 = i14;
                    i11 = i16;
                }
                Placeable placeable2 = placeable;
                int mainAxisSize = rowColumnMeasurePolicy.mainAxisSize(placeable2);
                int crossAxisSize = rowColumnMeasurePolicy.crossAxisSize(placeable2);
                iArr2[i10 - i6] = mainAxisSize;
                int i20 = i19 - mainAxisSize;
                if (i20 < 0) {
                    i20 = 0;
                }
                i18 = Math.min(i5, i20);
                i17 += mainAxisSize + i18;
                i15 = Math.max(i15, crossAxisSize);
                placeableArr[i10] = placeable2;
                i16 = i11;
            }
            i14 = i10 + 1;
            j2 = j;
        }
        long j3 = j2;
        if (i16 == 0) {
            i17 -= i18;
            i9 = 0;
        } else {
            long j4 = (r22 - 1) * j3;
            long j5 = ((i3 != Integer.MAX_VALUE ? i3 : i) - i17) - j4;
            if (j5 < 0) {
                j5 = 0;
            }
            float f3 = j5 / f2;
            for (int i21 = i6; i21 < i7; i21++) {
                j5 -= Math.round(getWeight(getRowColumnParentData((Measurable) list2.get(i21))) * f3);
            }
            int i22 = i6;
            int i23 = i15;
            int i24 = 0;
            while (i22 < i7) {
                if (placeableArr[i22] == null) {
                    Measurable measurable2 = (Measurable) list2.get(i22);
                    f = f3;
                    RowColumnParentData rowColumnParentData = getRowColumnParentData(measurable2);
                    float weight2 = getWeight(rowColumnParentData);
                    if (weight2 <= 0.0f) {
                        InlineClassHelperKt.throwIllegalStateException("All weights <= 0 should have placeables");
                    }
                    int signum = Long.signum(j5);
                    long j6 = j5 - signum;
                    int max = Math.max(0, Math.round(weight2 * f) + signum);
                    Placeable mo292measureBRTryo0 = measurable2.mo292measureBRTryo0(rowColumnMeasurePolicy.mo80createConstraintsxF2OJ5Q((!(rowColumnParentData != null ? rowColumnParentData.fill : true) || max == Integer.MAX_VALUE) ? 0 : max, max, i4, true));
                    int mainAxisSize2 = rowColumnMeasurePolicy.mainAxisSize(mo292measureBRTryo0);
                    int crossAxisSize2 = rowColumnMeasurePolicy.crossAxisSize(mo292measureBRTryo0);
                    iArr2[i22 - i6] = mainAxisSize2;
                    i24 += mainAxisSize2;
                    int max2 = Math.max(i23, crossAxisSize2);
                    placeableArr[i22] = mo292measureBRTryo0;
                    i23 = max2;
                    j5 = j6;
                } else {
                    f = f3;
                }
                i22++;
                list2 = list;
                f3 = f;
            }
            i9 = (int) (i24 + j4);
            int i25 = i3 - i17;
            if (i9 < 0) {
                i9 = 0;
            }
            if (i9 > i25) {
                i9 = i25;
            }
            i15 = i23;
        }
        int i26 = i9 + i17;
        if (i26 < 0) {
            i26 = 0;
        }
        int max3 = Math.max(i26, i);
        int max4 = Math.max(i15, Math.max(i2, 0));
        int[] iArr3 = new int[i13];
        rowColumnMeasurePolicy.populateMainAxisPositions(max3, measureScope, iArr2, iArr3);
        return rowColumnMeasurePolicy.placeHelper(placeableArr, measureScope, iArr3, max3, max4, iArr, i8, i6, i7);
    }

    public static final Modifier onConsumedWindowInsetsChanged(Modifier modifier, Function1 function1) {
        return modifier.then(new ConsumedInsetsModifierElement(function1));
    }

    public static final Modifier padding(Modifier modifier, PaddingValues paddingValues) {
        return modifier.then(new PaddingValuesElement(paddingValues));
    }

    /* renamed from: padding-3ABfNKs, reason: not valid java name */
    public static final Modifier m98padding3ABfNKs(Modifier modifier, float f) {
        return modifier.then(new PaddingElement(f, f, f, f));
    }

    /* renamed from: padding-qDBjuR0$default, reason: not valid java name */
    public static Modifier m100paddingqDBjuR0$default(Modifier modifier, float f, float f2, float f3, int i) {
        if ((i & 1) != 0) {
            f = 0.0f;
        }
        if ((i & 2) != 0) {
            f2 = 0.0f;
        }
        if ((i & 4) != 0) {
            f3 = 0.0f;
        }
        return modifier.then(new PaddingElement(f, f2, f3, 0.0f));
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

    /* renamed from: toBoxConstraints-OenEA2s, reason: not valid java name */
    public static final long m101toBoxConstraintsOenEA2s(long j) {
        return ConstraintsKt.Constraints(Constraints.m436getMinWidthimpl(j), Constraints.m434getMaxWidthimpl(j), Constraints.m435getMinHeightimpl(j), Constraints.m433getMaxHeightimpl(j));
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

    public static final Modifier windowInsetsPadding(WindowInsets windowInsets) {
        return new InsetsPaddingModifierElement(windowInsets);
    }

    public abstract int align$foundation_layout(int i, int i2, LayoutDirection layoutDirection);

    public static final void FlowRow(Modifier modifier, final Arrangement$Horizontal arrangement$Horizontal, final Arrangement$Vertical arrangement$Vertical, Alignment.Vertical vertical, int i, int i2, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i3) {
        final Modifier modifier2;
        final Alignment.Vertical vertical2;
        final int i4;
        final int i5;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1303174015);
        int i6 = i3 | 6 | (gapComposer.changed(arrangement$Horizontal) ? 32 : 16) | (gapComposer.changed(arrangement$Vertical) ? 256 : 128) | 224256;
        if (gapComposer.shouldExecute(i6 & 1, (599187 & i6) != 599186)) {
            BiasAlignment.Vertical vertical3 = Alignment.Companion.Top;
            int i7 = (i6 & 896) | (i6 & Token.ASSIGN_MOD) | 1572870 | 12807168;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            FlowRow(companion, arrangement$Horizontal, arrangement$Vertical, FlowRowOverflow.Clip, composableLambdaImpl, gapComposer, i7);
            vertical2 = vertical3;
            modifier2 = companion;
            i4 = Integer.MAX_VALUE;
            i5 = Integer.MAX_VALUE;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            vertical2 = vertical;
            i4 = i;
            i5 = i2;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(arrangement$Horizontal, arrangement$Vertical, vertical2, i4, i5, composableLambdaImpl, i3) { // from class: androidx.compose.foundation.layout.FlowLayoutKt$$ExternalSyntheticLambda0
                public final /* synthetic */ Arrangement$Horizontal f$1;
                public final /* synthetic */ Arrangement$Vertical f$2;
                public final /* synthetic */ Alignment.Vertical f$3;
                public final /* synthetic */ int f$4;
                public final /* synthetic */ int f$5;
                public final /* synthetic */ ComposableLambdaImpl f$6;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(1572865);
                    SpacerKt.FlowRow(Modifier.this, this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, this.f$6, (Composer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }
}
