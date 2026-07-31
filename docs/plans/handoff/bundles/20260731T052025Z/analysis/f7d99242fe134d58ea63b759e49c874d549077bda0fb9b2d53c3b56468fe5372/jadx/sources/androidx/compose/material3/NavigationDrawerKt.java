package androidx.compose.material3;

import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.tokens.ListTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class NavigationDrawerKt {
    static {
        if ((6 & 4) != 0) {
            CubicBezierEasing cubicBezierEasing = EasingKt.FastOutSlowInEasing;
        }
    }

    public static final void NavigationDrawerItem(ComposableLambdaImpl composableLambdaImpl, final boolean z, Function0 function0, Modifier modifier, final Function2 function2, Function2 function22, Shape shape, DefaultDrawerItemsColor defaultDrawerItemsColor, Composer composer, int i) {
        ComposableLambdaImpl composableLambdaImpl2;
        int i2;
        final Function2 function23;
        Shape shape2;
        DefaultDrawerItemsColor defaultDrawerItemsColor2;
        Shape value;
        int i3;
        DefaultDrawerItemsColor defaultDrawerItemsColor3;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-583709666);
        if ((i & 6) == 0) {
            composableLambdaImpl2 = composableLambdaImpl;
            i2 = (gapComposer.changedInstance(composableLambdaImpl2) ? 4 : 2) | i;
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(z) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changed(modifier) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changedInstance(function2) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            function23 = function22;
            i2 |= gapComposer.changedInstance(function23) ? 131072 : 65536;
        } else {
            function23 = function22;
        }
        if ((1572864 & i) == 0) {
            i2 |= 524288;
        }
        if ((12582912 & i) == 0) {
            i2 |= 4194304;
        }
        int i4 = i2 | 100663296;
        if (gapComposer.shouldExecute(i4 & 1, (38347923 & i4) != 38347922)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                value = ShapesKt.getValue(ListTokens.ActiveIndicatorShape, gapComposer);
                PaddingValuesImpl paddingValuesImpl = NavigationDrawerItemDefaults.ItemPadding;
                long value2 = ColorSchemeKt.getValue(ListTokens.ActiveIndicatorColor, gapComposer);
                long j = Color.Transparent;
                long value3 = ColorSchemeKt.getValue(ListTokens.ActiveIconColor, gapComposer);
                long value4 = ColorSchemeKt.getValue(ListTokens.InactiveIconColor, gapComposer);
                long value5 = ColorSchemeKt.getValue(ListTokens.ActiveLabelTextColor, gapComposer);
                long value6 = ColorSchemeKt.getValue(ListTokens.InactiveLabelTextColor, gapComposer);
                i3 = i4 & (-33030145);
                defaultDrawerItemsColor3 = new DefaultDrawerItemsColor(value3, value4, value5, value6, value2, j, value5, value6);
            } else {
                gapComposer.skipToGroupEnd();
                value = shape;
                i3 = i4 & (-33030145);
                defaultDrawerItemsColor3 = defaultDrawerItemsColor;
            }
            gapComposer.endDefaults();
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new TextKt$$ExternalSyntheticLambda1(10);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Modifier then = SizeKt.m228heightInVpY3zN4$default(SemanticsModifierKt.semantics(modifier, false, (Function1) rememberedValue), ListTokens.ActiveIndicatorHeight, 2).then(SizeKt.FillWholeMaxWidth);
            int i5 = i3 >> 3;
            defaultDrawerItemsColor3.getClass();
            gapComposer.startReplaceGroup(-433512770);
            MutableState rememberUpdatedState = Updater.rememberUpdatedState(new Color(z ? defaultDrawerItemsColor3.selectedContainerColor : defaultDrawerItemsColor3.unselectedContainerColor), gapComposer);
            gapComposer.end(false);
            long j2 = ((Color) rememberUpdatedState.getValue()).value;
            final ComposableLambdaImpl composableLambdaImpl3 = composableLambdaImpl2;
            final DefaultDrawerItemsColor defaultDrawerItemsColor4 = defaultDrawerItemsColor3;
            Shape shape3 = value;
            SurfaceKt.m358Surfaced85dljk(z, function0, then, false, shape3, j2, 0L, null, null, Expect_jvmKt.rememberComposableLambda(-1173018444, new Function2() { // from class: androidx.compose.material3.NavigationDrawerKt$NavigationDrawerItem$2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1;
                    Composer composer2 = (Composer) obj;
                    int intValue = ((Number) obj2).intValue();
                    GapComposer gapComposer2 = (GapComposer) composer2;
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                        Modifier m222paddingqDBjuR0$default = OffsetKt.m222paddingqDBjuR0$default(companion, 16.0f, 0.0f, 24.0f, 0.0f, 10);
                        RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f7Start, Alignment.Companion.CenterVertically, gapComposer2, 48);
                        int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer2);
                        PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                        Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, m222paddingqDBjuR0$default);
                        ComposeUiNode.Companion.getClass();
                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                        gapComposer2.startReusableNode();
                        if (gapComposer2.inserting) {
                            gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                        } else {
                            gapComposer2.useNode();
                        }
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetMeasurePolicy;
                        Updater.m380setimpl(gapComposer2, rowMeasurePolicy, composeUiNode$Companion$SetModifier$12);
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                        Updater.m380setimpl(gapComposer2, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$13);
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetCompositeKeyHash;
                        if (gapComposer2.inserting || !Intrinsics.areEqual(gapComposer2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            Modifier.CC.m(currentCompositeKeyHash, gapComposer2, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$14);
                        }
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$15 = ComposeUiNode.Companion.SetModifier;
                        Updater.m380setimpl(gapComposer2, materializeModifier, composeUiNode$Companion$SetModifier$15);
                        Function2 function24 = Function2.this;
                        DefaultDrawerItemsColor defaultDrawerItemsColor5 = defaultDrawerItemsColor4;
                        boolean z2 = z;
                        if (function24 != null) {
                            gapComposer2.startReplaceGroup(-2013920011);
                            gapComposer2.startReplaceGroup(1141354218);
                            composeUiNode$Companion$SetModifier$1 = composeUiNode$Companion$SetModifier$13;
                            MutableState rememberUpdatedState2 = Updater.rememberUpdatedState(new Color(z2 ? defaultDrawerItemsColor5.selectedIconColor : defaultDrawerItemsColor5.unselectedIconColor), gapComposer2);
                            gapComposer2.end(false);
                            Updater.CompositionLocalProvider(ContentColorKt.LocalContentColor.defaultProvidedValue$runtime(new Color(((Color) rememberUpdatedState2.getValue()).value)), function24, gapComposer2, 8);
                            OffsetKt.Spacer(gapComposer2, SizeKt.m238width3ABfNKs(companion, 12.0f));
                            gapComposer2.end(false);
                        } else {
                            composeUiNode$Companion$SetModifier$1 = composeUiNode$Companion$SetModifier$13;
                            gapComposer2.startReplaceGroup(-2013707630);
                            gapComposer2.end(false);
                        }
                        LayoutWeightElement layoutWeightElement = new LayoutWeightElement(1.0f, true);
                        MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                        int currentCompositeKeyHash2 = Updater.getCurrentCompositeKeyHash(gapComposer2);
                        PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
                        Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, layoutWeightElement);
                        gapComposer2.startReusableNode();
                        if (gapComposer2.inserting) {
                            gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                        } else {
                            gapComposer2.useNode();
                        }
                        Updater.m380setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$12);
                        Updater.m380setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$1);
                        if (gapComposer2.inserting || !Intrinsics.areEqual(gapComposer2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                            Modifier.CC.m(currentCompositeKeyHash2, gapComposer2, currentCompositeKeyHash2, composeUiNode$Companion$SetModifier$14);
                        }
                        Updater.m380setimpl(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$15);
                        gapComposer2.startReplaceGroup(1275109558);
                        MutableState rememberUpdatedState3 = Updater.rememberUpdatedState(new Color(z2 ? defaultDrawerItemsColor5.selectedTextColor : defaultDrawerItemsColor5.unselectedTextColor), gapComposer2);
                        gapComposer2.end(false);
                        long j3 = ((Color) rememberUpdatedState3.getValue()).value;
                        DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = ContentColorKt.LocalContentColor;
                        Updater.CompositionLocalProvider(dynamicProvidableCompositionLocal.defaultProvidedValue$runtime(new Color(j3)), composableLambdaImpl3, gapComposer2, 8);
                        gapComposer2.end(true);
                        Function2 function25 = function23;
                        if (function25 != null) {
                            gapComposer2.startReplaceGroup(-2013454639);
                            OffsetKt.Spacer(gapComposer2, SizeKt.m238width3ABfNKs(companion, 12.0f));
                            gapComposer2.startReplaceGroup(-561675044);
                            MutableState rememberUpdatedState4 = Updater.rememberUpdatedState(new Color(z2 ? defaultDrawerItemsColor5.selectedBadgeColor : defaultDrawerItemsColor5.unselectedBadgeColor), gapComposer2);
                            gapComposer2.end(false);
                            Updater.CompositionLocalProvider(dynamicProvidableCompositionLocal.defaultProvidedValue$runtime(new Color(((Color) rememberUpdatedState4.getValue()).value)), function25, gapComposer2, 8);
                            gapComposer2.end(false);
                        } else {
                            gapComposer2.startReplaceGroup(-2013238414);
                            gapComposer2.end(false);
                        }
                        gapComposer2.end(true);
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, i5 & 126, 968);
            shape2 = shape3;
            defaultDrawerItemsColor2 = defaultDrawerItemsColor4;
        } else {
            gapComposer.skipToGroupEnd();
            shape2 = shape;
            defaultDrawerItemsColor2 = defaultDrawerItemsColor;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CardKt$$ExternalSyntheticLambda2(composableLambdaImpl, z, function0, modifier, function2, function22, shape2, defaultDrawerItemsColor2, i);
        }
    }
}
