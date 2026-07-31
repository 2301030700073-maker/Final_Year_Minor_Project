package androidx.compose.material3;

import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.SuspendPointerInputElement;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.AppendedSemanticsElement;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda2;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class SurfaceKt {
    public static final DynamicProvidableCompositionLocal LocalAbsoluteTonalElevation = new DynamicProvidableCompositionLocal(new ImmLeaksCleaner$$ExternalSyntheticLambda0(20));

    /* renamed from: Surface-T9BRK9s, reason: not valid java name */
    public static final void m157SurfaceT9BRK9s(final Modifier modifier, Shape shape, final long j, long j2, final ComposableLambdaImpl composableLambdaImpl, Composer composer, int i, int i2) {
        if ((i2 & 2) != 0) {
            shape = Brush.RectangleShape;
        }
        if ((i2 & 8) != 0) {
            j2 = ColorSchemeKt.m138contentColorForek8zF_U(j, composer);
        }
        GapComposer gapComposer = (GapComposer) composer;
        DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = LocalAbsoluteTonalElevation;
        final float f = ((Dp) gapComposer.consume(dynamicProvidableCompositionLocal)).value + 0.0f;
        ProvidedValue[] providedValueArr = {ContentColorKt.LocalContentColor.defaultProvidedValue$runtime(new Color(j2)), dynamicProvidableCompositionLocal.defaultProvidedValue$runtime(new Dp(f))};
        final float f2 = 0.0f;
        final Shape shape2 = shape;
        Updater.CompositionLocalProvider(providedValueArr, Expect_jvmKt.rememberComposableLambda(421772006, new Function2() { // from class: androidx.compose.material3.SurfaceKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Composer composer2 = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                boolean shouldExecute = gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2);
                Unit unit = Unit.INSTANCE;
                if (!shouldExecute) {
                    gapComposer2.skipToGroupEnd();
                    return unit;
                }
                Modifier m158surfaceXOJAsU = SurfaceKt.m158surfaceXOJAsU(Modifier.this, shape2, SurfaceKt.m159surfaceColorAtElevationCLU3JFs(j, f, gapComposer2), ((Density) gapComposer2.consume(CompositionLocalsKt.LocalDensity)).mo63toPx0680j_4(f2));
                Object rememberedValue = gapComposer2.rememberedValue();
                NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                if (rememberedValue == neverEqualPolicy) {
                    rememberedValue = new SaversKt$$ExternalSyntheticLambda2(9);
                    gapComposer2.updateRememberedValue(rememberedValue);
                }
                AtomicInteger atomicInteger = SemanticsModifierKt.lastIdentifier;
                Modifier then = m158surfaceXOJAsU.then(new AppendedSemanticsElement((Function1) rememberedValue, false));
                Object rememberedValue2 = gapComposer2.rememberedValue();
                if (rememberedValue2 == neverEqualPolicy) {
                    rememberedValue2 = SurfaceKt$Surface$1$3$1.INSTANCE;
                    gapComposer2.updateRememberedValue(rememberedValue2);
                }
                PointerEvent pointerEvent = SuspendingPointerInputFilterKt.EmptyPointerEvent;
                Modifier then2 = then.then(new SuspendPointerInputElement(unit, null, (PointerInputEventHandler) rememberedValue2, 6));
                MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, true);
                long j3 = gapComposer2.compositeKeyHashCode;
                int i3 = (int) (j3 ^ (j3 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                Modifier materializeModifier = RangesKt.materializeModifier(gapComposer2, then2);
                ComposeUiNode.Companion.getClass();
                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                gapComposer2.startReusableNode();
                if (gapComposer2.inserting) {
                    gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer2.useNode();
                }
                Updater.m170setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                Updater.m170setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                Updater.m170setimpl(gapComposer2, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
                Updater.m169reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                Updater.m170setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
                composableLambdaImpl.invoke((Object) gapComposer2, (Object) 0);
                gapComposer2.end(true);
                return unit;
            }
        }, gapComposer), gapComposer, 56);
    }

    /* renamed from: surface-XO-JAsU, reason: not valid java name */
    public static final Modifier m158surfaceXOJAsU(Modifier modifier, Shape shape, long j, float f) {
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        return ClipKt.clip(ImageKt.m27backgroundbw27NRU(modifier.then(f > 0.0f ? Brush.m228graphicsLayer_6ThJ44$default(companion, f, shape, false, 518111) : companion).then(companion), j, shape), shape);
    }

    /* renamed from: surfaceColorAtElevation-CLU3JFs, reason: not valid java name */
    public static final long m159surfaceColorAtElevationCLU3JFs(long j, float f, GapComposer gapComposer) {
        long Color;
        float f2;
        float f3;
        ColorScheme colorScheme = ((MaterialTheme$Values) gapComposer.consume(MaterialThemeKt._localMaterialTheme)).colorScheme;
        boolean booleanValue = ((Boolean) gapComposer.consume(ColorSchemeKt.LocalTonalElevationEnabled)).booleanValue();
        long j2 = colorScheme.surface;
        if (!Color.m244equalsimpl0(j, j2) || !booleanValue) {
            return j;
        }
        float f4 = 0.0f;
        if (Dp.m443equalsimpl0(f, 0.0f)) {
            return j2;
        }
        Color = Brush.Color(Color.m249getRedimpl(r3), Color.m248getGreenimpl(r3), Color.m246getBlueimpl(r3), ((((float) Math.log(f + 1.0f)) * 4.5f) + 2.0f) / 100.0f, Color.m247getColorSpaceimpl(colorScheme.surfaceTint));
        long m242convertvNxB06k = Color.m242convertvNxB06k(Color, Color.m247getColorSpaceimpl(j2));
        float m245getAlphaimpl = Color.m245getAlphaimpl(j2);
        float m245getAlphaimpl2 = Color.m245getAlphaimpl(m242convertvNxB06k);
        float f5 = 1.0f - m245getAlphaimpl2;
        float f6 = (m245getAlphaimpl * f5) + m245getAlphaimpl2;
        float m249getRedimpl = Color.m249getRedimpl(m242convertvNxB06k);
        float m249getRedimpl2 = Color.m249getRedimpl(j2);
        if (f6 == 0.0f) {
            f2 = 0.0f;
        } else {
            f2 = (((m249getRedimpl2 * m245getAlphaimpl) * f5) + (m249getRedimpl * m245getAlphaimpl2)) / f6;
        }
        float m248getGreenimpl = Color.m248getGreenimpl(m242convertvNxB06k);
        float m248getGreenimpl2 = Color.m248getGreenimpl(j2);
        if (f6 == 0.0f) {
            f3 = 0.0f;
        } else {
            f3 = (((m248getGreenimpl2 * m245getAlphaimpl) * f5) + (m248getGreenimpl * m245getAlphaimpl2)) / f6;
        }
        float m246getBlueimpl = Color.m246getBlueimpl(m242convertvNxB06k);
        float m246getBlueimpl2 = Color.m246getBlueimpl(j2);
        if (f6 != 0.0f) {
            f4 = (((m246getBlueimpl2 * m245getAlphaimpl) * f5) + (m246getBlueimpl * m245getAlphaimpl2)) / f6;
        }
        return Brush.UncheckedColor(f2, f3, f4, f6, Color.m247getColorSpaceimpl(j2));
    }
}
