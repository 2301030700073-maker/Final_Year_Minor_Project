package androidx.compose.material3;

import androidx.camera.core.impl.Config;
import androidx.compose.foundation.BorderModifierNodeElement;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.selection.SelectableKt;
import androidx.compose.material3.internal.ChildSemanticsNodeElement;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class SurfaceKt {
    public static final DynamicProvidableCompositionLocal LocalAbsoluteTonalElevation = new DynamicProvidableCompositionLocal(new TextKt$$ExternalSyntheticLambda4(9));

    /* renamed from: Surface-T9BRK9s, reason: not valid java name */
    public static final void m357SurfaceT9BRK9s(Modifier modifier, Shape shape, final long j, long j2, float f, float f2, BorderStroke borderStroke, final ComposableLambdaImpl composableLambdaImpl, Composer composer, int i, int i2) {
        if ((i2 & 1) != 0) {
            modifier = Modifier.Companion.$$INSTANCE;
        }
        if ((i2 & 2) != 0) {
            shape = ColorKt.RectangleShape;
        }
        if ((i2 & 8) != 0) {
            j2 = ColorSchemeKt.m341contentColorForek8zF_U(j, composer);
        }
        if ((i2 & 16) != 0) {
            f = 0.0f;
        }
        if ((i2 & 32) != 0) {
            f2 = 0.0f;
        }
        if ((i2 & 64) != 0) {
            borderStroke = null;
        }
        GapComposer gapComposer = (GapComposer) composer;
        DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = LocalAbsoluteTonalElevation;
        final float f3 = f + ((Dp) gapComposer.consume(dynamicProvidableCompositionLocal)).value;
        final Shape shape2 = shape;
        final BorderStroke borderStroke2 = borderStroke;
        final float f4 = f2;
        final Modifier modifier2 = modifier;
        Updater.CompositionLocalProvider(new ProvidedValue[]{ContentColorKt.LocalContentColor.defaultProvidedValue$runtime(new Color(j2)), dynamicProvidableCompositionLocal.defaultProvidedValue$runtime(new Dp(f3))}, Expect_jvmKt.rememberComposableLambda(421772006, new Function2() { // from class: androidx.compose.material3.SurfaceKt$Surface$1
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Composer composer2 = (Composer) obj;
                int intValue = ((Number) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                boolean shouldExecute = gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2);
                Unit unit = Unit.INSTANCE;
                if (!shouldExecute) {
                    gapComposer2.skipToGroupEnd();
                    return unit;
                }
                Modifier m360access$surfaceXOJAsU = SurfaceKt.m360access$surfaceXOJAsU(Modifier.this, shape2, SurfaceKt.m361access$surfaceColorAtElevationCLU3JFs(j, f3, gapComposer2), borderStroke2, ((Density) gapComposer2.consume(CompositionLocalsKt.LocalDensity)).mo177toPx0680j_4(f4));
                Object rememberedValue = gapComposer2.rememberedValue();
                NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                if (rememberedValue == neverEqualPolicy) {
                    rememberedValue = new TextKt$$ExternalSyntheticLambda1(15);
                    gapComposer2.updateRememberedValue(rememberedValue);
                }
                Modifier semantics = SemanticsModifierKt.semantics(m360access$surfaceXOJAsU, false, (Function1) rememberedValue);
                Object rememberedValue2 = gapComposer2.rememberedValue();
                if (rememberedValue2 == neverEqualPolicy) {
                    rememberedValue2 = SurfaceKt$Surface$1$3$1.INSTANCE;
                    gapComposer2.updateRememberedValue(rememberedValue2);
                }
                Modifier pointerInput = SuspendingPointerInputFilterKt.pointerInput(semantics, unit, (PointerInputEventHandler) rememberedValue2);
                MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, true);
                int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer2);
                PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, pointerInput);
                ComposeUiNode.Companion.getClass();
                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                gapComposer2.startReusableNode();
                if (gapComposer2.inserting) {
                    gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer2.useNode();
                }
                Updater.m380setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                Updater.m380setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetCompositeKeyHash;
                if (gapComposer2.inserting || !Intrinsics.areEqual(gapComposer2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    Modifier.CC.m(currentCompositeKeyHash, gapComposer2, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$1);
                }
                Updater.m380setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
                Config.CC.m(0, composableLambdaImpl, gapComposer2, true);
                return unit;
            }
        }, gapComposer), gapComposer, 56);
    }

    /* renamed from: Surface-d85dljk, reason: not valid java name */
    public static final void m358Surfaced85dljk(final boolean z, final Function0 function0, final Modifier modifier, boolean z2, final Shape shape, final long j, long j2, BorderStroke borderStroke, MutableInteractionSourceImpl mutableInteractionSourceImpl, final ComposableLambdaImpl composableLambdaImpl, Composer composer, int i, int i2) {
        final MutableInteractionSourceImpl mutableInteractionSourceImpl2;
        final boolean z3 = (i2 & 8) != 0 ? true : z2;
        long m341contentColorForek8zF_U = (i2 & 64) != 0 ? ColorSchemeKt.m341contentColorForek8zF_U(j, composer) : j2;
        final BorderStroke borderStroke2 = (i2 & 512) != 0 ? null : borderStroke;
        GapComposer gapComposer = (GapComposer) composer;
        if (mutableInteractionSourceImpl == null) {
            gapComposer.startReplaceGroup(1528143336);
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new MutableInteractionSourceImpl();
                gapComposer.updateRememberedValue(rememberedValue);
            }
            gapComposer.end(false);
            mutableInteractionSourceImpl2 = (MutableInteractionSourceImpl) rememberedValue;
        } else {
            gapComposer.startReplaceGroup(-227800369);
            gapComposer.end(false);
            mutableInteractionSourceImpl2 = mutableInteractionSourceImpl;
        }
        GapComposer gapComposer2 = (GapComposer) composer;
        DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = LocalAbsoluteTonalElevation;
        final float f = 0.0f + ((Dp) gapComposer2.consume(dynamicProvidableCompositionLocal)).value;
        Updater.CompositionLocalProvider(new ProvidedValue[]{ContentColorKt.LocalContentColor.defaultProvidedValue$runtime(new Color(m341contentColorForek8zF_U)), dynamicProvidableCompositionLocal.defaultProvidedValue$runtime(new Dp(f))}, Expect_jvmKt.rememberComposableLambda(1508735219, new Function2() { // from class: androidx.compose.material3.SurfaceKt$Surface$3
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Modifier then;
                Composer composer2 = (Composer) obj;
                int intValue = ((Number) obj2).intValue();
                GapComposer gapComposer3 = (GapComposer) composer2;
                if (gapComposer3.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    HorizontalAlignmentLine horizontalAlignmentLine = InteractiveComponentSizeKt.MinimumInteractiveTopAlignmentLine;
                    then = SelectableKt.m258selectableO2vRcR0(SurfaceKt.m360access$surfaceXOJAsU(Modifier.this.then(MinimumInteractiveModifier.INSTANCE), shape, SurfaceKt.m361access$surfaceColorAtElevationCLU3JFs(j, f, gapComposer3), borderStroke2, ((Density) gapComposer3.consume(CompositionLocalsKt.LocalDensity)).mo177toPx0680j_4(0.0f)), z, mutableInteractionSourceImpl2, RippleKt.m355rippleH2RKhps$default(false, 0.0f, 7), z3, null, function0).then(new ChildSemanticsNodeElement(new TextKt$$ExternalSyntheticLambda1(11)));
                    MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, true);
                    int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer3);
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer3.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer3, then);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer3.startReusableNode();
                    if (gapComposer3.inserting) {
                        gapComposer3.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer3.useNode();
                    }
                    Updater.m380setimpl(gapComposer3, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer3, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetCompositeKeyHash;
                    if (gapComposer3.inserting || !Intrinsics.areEqual(gapComposer3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        Modifier.CC.m(currentCompositeKeyHash, gapComposer3, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$1);
                    }
                    Updater.m380setimpl(gapComposer3, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    Config.CC.m(0, composableLambdaImpl, gapComposer3, true);
                } else {
                    gapComposer3.skipToGroupEnd();
                }
                return Unit.INSTANCE;
            }
        }, gapComposer2), gapComposer2, 56);
    }

    /* renamed from: Surface-o_FOJdg, reason: not valid java name */
    public static final void m359Surfaceo_FOJdg(final Function0 function0, final Modifier modifier, boolean z, final Shape shape, final long j, long j2, float f, BorderStroke borderStroke, MutableInteractionSourceImpl mutableInteractionSourceImpl, final ComposableLambdaImpl composableLambdaImpl, Composer composer, int i, int i2) {
        final boolean z2 = (i2 & 4) != 0 ? true : z;
        long m341contentColorForek8zF_U = (i2 & 32) != 0 ? ColorSchemeKt.m341contentColorForek8zF_U(j, composer) : j2;
        final float f2 = (i2 & 128) != 0 ? 0.0f : f;
        final BorderStroke borderStroke2 = (i2 & 256) != 0 ? null : borderStroke;
        MutableInteractionSourceImpl mutableInteractionSourceImpl2 = (i2 & 512) == 0 ? mutableInteractionSourceImpl : null;
        GapComposer gapComposer = (GapComposer) composer;
        if (mutableInteractionSourceImpl2 == null) {
            gapComposer.startReplaceGroup(-1701037204);
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new MutableInteractionSourceImpl();
                gapComposer.updateRememberedValue(rememberedValue);
            }
            mutableInteractionSourceImpl2 = (MutableInteractionSourceImpl) rememberedValue;
        } else {
            gapComposer.startReplaceGroup(2023337163);
        }
        gapComposer.end(false);
        final MutableInteractionSourceImpl mutableInteractionSourceImpl3 = mutableInteractionSourceImpl2;
        GapComposer gapComposer2 = (GapComposer) composer;
        DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = LocalAbsoluteTonalElevation;
        final float f3 = ((Dp) gapComposer2.consume(dynamicProvidableCompositionLocal)).value + 0.0f;
        Updater.CompositionLocalProvider(new ProvidedValue[]{ContentColorKt.LocalContentColor.defaultProvidedValue$runtime(new Color(m341contentColorForek8zF_U)), dynamicProvidableCompositionLocal.defaultProvidedValue$runtime(new Dp(f3))}, Expect_jvmKt.rememberComposableLambda(849208527, new Function2() { // from class: androidx.compose.material3.SurfaceKt$Surface$2
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Modifier then;
                Composer composer2 = (Composer) obj;
                int intValue = ((Number) obj2).intValue();
                GapComposer gapComposer3 = (GapComposer) composer2;
                if (gapComposer3.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    HorizontalAlignmentLine horizontalAlignmentLine = InteractiveComponentSizeKt.MinimumInteractiveTopAlignmentLine;
                    then = ImageKt.m135clickableO2vRcR0$default(SurfaceKt.m360access$surfaceXOJAsU(Modifier.this.then(MinimumInteractiveModifier.INSTANCE), shape, SurfaceKt.m361access$surfaceColorAtElevationCLU3JFs(j, f3, gapComposer3), borderStroke2, ((Density) gapComposer3.consume(CompositionLocalsKt.LocalDensity)).mo177toPx0680j_4(f2)), mutableInteractionSourceImpl3, RippleKt.m355rippleH2RKhps$default(false, 0.0f, 7), z2, null, function0, 24).then(new ChildSemanticsNodeElement(new TextKt$$ExternalSyntheticLambda1(11)));
                    MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, true);
                    int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer3);
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer3.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer3, then);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer3.startReusableNode();
                    if (gapComposer3.inserting) {
                        gapComposer3.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer3.useNode();
                    }
                    Updater.m380setimpl(gapComposer3, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer3, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetCompositeKeyHash;
                    if (gapComposer3.inserting || !Intrinsics.areEqual(gapComposer3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        Modifier.CC.m(currentCompositeKeyHash, gapComposer3, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$1);
                    }
                    Updater.m380setimpl(gapComposer3, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    Config.CC.m(0, composableLambdaImpl, gapComposer3, true);
                } else {
                    gapComposer3.skipToGroupEnd();
                }
                return Unit.INSTANCE;
            }
        }, gapComposer2), gapComposer2, 56);
    }

    /* renamed from: access$surface-XO-JAsU, reason: not valid java name */
    public static final Modifier m360access$surfaceXOJAsU(Modifier modifier, Shape shape, long j, BorderStroke borderStroke, float f) {
        Shape shape2;
        Modifier modifier2;
        Modifier modifier3 = Modifier.Companion.$$INSTANCE;
        if (f > 0.0f) {
            shape2 = shape;
            modifier2 = ColorKt.m493graphicsLayerAp8cVGQ$default(modifier3, 0.0f, 0.0f, 0.0f, f, shape2, 124895);
        } else {
            shape2 = shape;
            modifier2 = modifier3;
        }
        Modifier then = modifier.then(modifier2);
        if (borderStroke != null) {
            modifier3 = new BorderModifierNodeElement(borderStroke.width, borderStroke.brush, shape2);
        }
        return ClipKt.clip(ImageKt.m132backgroundbw27NRU(then.then(modifier3), j, shape2), shape2);
    }

    /* renamed from: access$surfaceColorAtElevation-CLU3JFs, reason: not valid java name */
    public static final long m361access$surfaceColorAtElevationCLU3JFs(long j, float f, GapComposer gapComposer) {
        long Color;
        ColorScheme colorScheme = (ColorScheme) gapComposer.consume(ColorSchemeKt.LocalColorScheme);
        boolean booleanValue = ((Boolean) gapComposer.consume(ColorSchemeKt.LocalTonalElevationEnabled)).booleanValue();
        long j2 = colorScheme.surface;
        if (!Color.m482equalsimpl0(j, j2) || !booleanValue) {
            return j;
        }
        if (Dp.m745equalsimpl0(f, 0.0f)) {
            return j2;
        }
        Color = ColorKt.Color(Color.m487getRedimpl(r5), Color.m486getGreenimpl(r5), Color.m484getBlueimpl(r5), ((((float) Math.log(f + 1.0f)) * 4.5f) + 2.0f) / 100.0f, Color.m485getColorSpaceimpl(colorScheme.surfaceTint));
        return ColorKt.m490compositeOverOWjLjI(Color, j2);
    }
}
