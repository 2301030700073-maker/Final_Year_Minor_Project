package androidx.compose.material3;

import androidx.compose.foundation.BorderModifierNodeElement;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.material3.internal.ChildSemanticsNodeElement;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
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
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.Worker$$ExternalSyntheticLambda1;
import kotlin.ULong;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class SurfaceKt {
    public static final StaticProvidableCompositionLocal LocalAbsoluteTonalElevation = new StaticProvidableCompositionLocal(1, new Worker$$ExternalSyntheticLambda1(5));

    /* renamed from: Surface-T9BRK9s, reason: not valid java name */
    public static final void m297SurfaceT9BRK9s(final Modifier modifier, Shape shape, final long j, long j2, float f, BorderStroke borderStroke, final ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i, int i2) {
        if ((i2 & 2) != 0) {
            shape = ColorKt.RectangleShape;
        }
        final Shape shape2 = shape;
        long m285contentColorForek8zF_U = (i2 & 8) != 0 ? ColorSchemeKt.m285contentColorForek8zF_U(j, gapComposer) : j2;
        final float f2 = (i2 & 32) != 0 ? 0.0f : f;
        final BorderStroke borderStroke2 = (i2 & 64) != 0 ? null : borderStroke;
        StaticProvidableCompositionLocal staticProvidableCompositionLocal = LocalAbsoluteTonalElevation;
        final float f3 = ((Dp) gapComposer.consume(staticProvidableCompositionLocal)).value + RecyclerView.DECELERATION_RATE;
        Updater.CompositionLocalProvider(new ProvidedValue[]{ContentColorKt.LocalContentColor.defaultProvidedValue$runtime(new Color(m285contentColorForek8zF_U)), staticProvidableCompositionLocal.defaultProvidedValue$runtime(new Dp(f3))}, Expect_jvmKt.rememberComposableLambda(421772006, new Function2() { // from class: androidx.compose.material3.SurfaceKt$Surface$1
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue = ((Number) obj2).intValue();
                boolean shouldExecute = gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2);
                Unit unit = Unit.INSTANCE;
                if (!shouldExecute) {
                    gapComposer2.skipToGroupEnd();
                    return unit;
                }
                Modifier m299surfaceXOJAsU = SurfaceKt.m299surfaceXOJAsU(Modifier.this, shape2, SurfaceKt.m300surfaceColorAtElevationCLU3JFs(j, f3, gapComposer2), borderStroke2, ((Density) gapComposer2.consume(CompositionLocalsKt.LocalDensity)).mo87toPx0680j_4(f2));
                Object rememberedValue = gapComposer2.rememberedValue();
                NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                if (rememberedValue == neverEqualPolicy) {
                    rememberedValue = new ChipKt$$ExternalSyntheticLambda2(22);
                    gapComposer2.updateRememberedValue(rememberedValue);
                }
                Modifier semantics = SemanticsModifierKt.semantics(m299surfaceXOJAsU, false, (Function1) rememberedValue);
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
                Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetCompositeKeyHash;
                if (gapComposer2.inserting || !Intrinsics.areEqual(gapComposer2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    Modifier.CC.m(currentCompositeKeyHash, gapComposer2, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$1);
                }
                Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
                composableLambdaImpl.invoke((Object) gapComposer2, (Object) 0);
                gapComposer2.end(true);
                return unit;
            }
        }, gapComposer), gapComposer, 56);
    }

    /* renamed from: Surface-o_FOJdg, reason: not valid java name */
    public static final void m298Surfaceo_FOJdg(final Function0 function0, final Modifier modifier, boolean z, final Shape shape, final long j, long j2, float f, final BorderStroke borderStroke, MutableInteractionSourceImpl mutableInteractionSourceImpl, final ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i, int i2) {
        final boolean z2 = (i2 & 4) != 0 ? true : z;
        long m285contentColorForek8zF_U = (i2 & 32) != 0 ? ColorSchemeKt.m285contentColorForek8zF_U(j, gapComposer) : j2;
        final float f2 = (i2 & 128) != 0 ? 0.0f : f;
        MutableInteractionSourceImpl mutableInteractionSourceImpl2 = (i2 & 512) != 0 ? null : mutableInteractionSourceImpl;
        if (mutableInteractionSourceImpl2 == null) {
            gapComposer.startReplaceGroup(-1701037204);
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new MutableInteractionSourceImpl();
                gapComposer.updateRememberedValue(rememberedValue);
            }
            mutableInteractionSourceImpl2 = (MutableInteractionSourceImpl) rememberedValue;
        } else {
            gapComposer.startReplaceGroup(2023337163);
        }
        gapComposer.end(false);
        final MutableInteractionSourceImpl mutableInteractionSourceImpl3 = mutableInteractionSourceImpl2;
        StaticProvidableCompositionLocal staticProvidableCompositionLocal = LocalAbsoluteTonalElevation;
        final float f3 = ((Dp) gapComposer.consume(staticProvidableCompositionLocal)).value + RecyclerView.DECELERATION_RATE;
        Updater.CompositionLocalProvider(new ProvidedValue[]{ContentColorKt.LocalContentColor.defaultProvidedValue$runtime(new Color(m285contentColorForek8zF_U)), staticProvidableCompositionLocal.defaultProvidedValue$runtime(new Dp(f3))}, Expect_jvmKt.rememberComposableLambda(849208527, new Function2() { // from class: androidx.compose.material3.SurfaceKt$Surface$2
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Modifier then;
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue = ((Number) obj2).intValue();
                if (gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    HorizontalAlignmentLine horizontalAlignmentLine = InteractiveComponentSizeKt.MinimumInteractiveTopAlignmentLine;
                    then = ImageKt.m50clickableO2vRcR0$default(SurfaceKt.m299surfaceXOJAsU(Modifier.this.then(MinimumInteractiveModifier.INSTANCE), shape, SurfaceKt.m300surfaceColorAtElevationCLU3JFs(j, f3, gapComposer2), borderStroke, ((Density) gapComposer2.consume(CompositionLocalsKt.LocalDensity)).mo87toPx0680j_4(f2)), mutableInteractionSourceImpl3, RippleKt.m294rippleH2RKhps$default(RecyclerView.DECELERATION_RATE, 7, false), z2, null, function0, 24).then(new ChildSemanticsNodeElement(new ChipKt$$ExternalSyntheticLambda2(27)));
                    MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, true);
                    int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer2);
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, then);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer2.useNode();
                    }
                    Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetCompositeKeyHash;
                    if (gapComposer2.inserting || !Intrinsics.areEqual(gapComposer2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        Modifier.CC.m(currentCompositeKeyHash, gapComposer2, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$1);
                    }
                    Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    composableLambdaImpl.invoke((Object) gapComposer2, (Object) 0);
                    gapComposer2.end(true);
                } else {
                    gapComposer2.skipToGroupEnd();
                }
                return Unit.INSTANCE;
            }
        }, gapComposer), gapComposer, 56);
    }

    /* renamed from: surface-XO-JAsU, reason: not valid java name */
    public static final Modifier m299surfaceXOJAsU(Modifier modifier, Shape shape, long j, BorderStroke borderStroke, float f) {
        Shape shape2;
        Modifier modifier2;
        Modifier modifier3 = Modifier.Companion.$$INSTANCE;
        if (f > RecyclerView.DECELERATION_RATE) {
            shape2 = shape;
            modifier2 = ColorKt.m438graphicsLayerAp8cVGQ$default(modifier3, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, f, shape2, 124895);
        } else {
            shape2 = shape;
            modifier2 = modifier3;
        }
        Modifier then = modifier.then(modifier2);
        if (borderStroke != null) {
            modifier3 = new BorderModifierNodeElement(borderStroke.width, borderStroke.brush, shape2);
        }
        return ClipKt.clip(ImageKt.m46backgroundbw27NRU(then.then(modifier3), j, shape2), shape2);
    }

    /* renamed from: surfaceColorAtElevation-CLU3JFs, reason: not valid java name */
    public static final long m300surfaceColorAtElevationCLU3JFs(long j, float f, GapComposer gapComposer) {
        long Color;
        ColorScheme colorScheme = (ColorScheme) gapComposer.consume(ColorSchemeKt.LocalColorScheme);
        boolean booleanValue = ((Boolean) gapComposer.consume(ColorSchemeKt.LocalTonalElevationEnabled)).booleanValue();
        long j2 = colorScheme.surface;
        int i = Color.$r8$clinit;
        if (!ULong.m820equalsimpl0(j, j2) || !booleanValue) {
            return j;
        }
        if (Dp.m693equalsimpl0(f, RecyclerView.DECELERATION_RATE)) {
            return j2;
        }
        Color = ColorKt.Color(Color.m433getRedimpl(r5), Color.m432getGreenimpl(r5), Color.m430getBlueimpl(r5), ((((float) Math.log(f + 1.0f)) * 4.5f) + 2.0f) / 100.0f, Color.m431getColorSpaceimpl(colorScheme.surfaceTint));
        return ColorKt.m436compositeOverOWjLjI(Color, j2);
    }
}
