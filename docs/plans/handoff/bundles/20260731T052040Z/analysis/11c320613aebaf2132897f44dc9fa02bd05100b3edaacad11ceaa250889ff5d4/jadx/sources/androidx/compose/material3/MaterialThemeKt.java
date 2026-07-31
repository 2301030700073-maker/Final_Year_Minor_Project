package androidx.compose.material3;

import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.compose.animation.core.Transition$$ExternalSyntheticLambda2;
import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import com.google.android.exoplayer2.RendererCapabilities;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class MaterialThemeKt {
    public static final StaticProvidableCompositionLocal LocalUsingExpressiveTheme = new StaticProvidableCompositionLocal(new ImmLeaksCleaner$$ExternalSyntheticLambda0(15));
    public static final StaticProvidableCompositionLocal _localMaterialTheme = new StaticProvidableCompositionLocal(new ImmLeaksCleaner$$ExternalSyntheticLambda0(16));

    public static final void MaterialExpressiveTheme(ColorScheme colorScheme, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        ComposableLambdaImpl composableLambdaImpl2;
        ColorScheme colorScheme2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1317329884);
        int i3 = 4;
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(colorScheme) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        int i4 = i2 | 3504;
        if ((i & 24576) == 0) {
            i4 |= gapComposer.changedInstance(composableLambdaImpl) ? 16384 : 8192;
        }
        if (gapComposer.shouldExecute(i4 & 1, (i4 & 9363) != 9362)) {
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = LocalUsingExpressiveTheme;
            if (((Boolean) gapComposer.consume(staticProvidableCompositionLocal)).booleanValue()) {
                gapComposer.startReplaceGroup(1458663246);
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = _localMaterialTheme;
                if (colorScheme == null) {
                    gapComposer.startReplaceGroup(-1061323065);
                    colorScheme2 = ((MaterialTheme$Values) gapComposer.consume(staticProvidableCompositionLocal2)).colorScheme;
                    gapComposer.end(false);
                } else {
                    gapComposer.startReplaceGroup(-1061323964);
                    gapComposer.end(false);
                    colorScheme2 = colorScheme;
                }
                gapComposer.startReplaceGroup(-1061320824);
                MotionScheme motionScheme = ((MaterialTheme$Values) gapComposer.consume(staticProvidableCompositionLocal2)).motionScheme;
                gapComposer.end(false);
                gapComposer.startReplaceGroup(-1061318682);
                Typography typography = ((MaterialTheme$Values) gapComposer.consume(staticProvidableCompositionLocal2)).typography;
                gapComposer.end(false);
                gapComposer.startReplaceGroup(-1061316862);
                Shapes shapes = ((MaterialTheme$Values) gapComposer.consume(staticProvidableCompositionLocal2)).shapes;
                gapComposer.end(false);
                composableLambdaImpl2 = composableLambdaImpl;
                MaterialTheme(colorScheme2, motionScheme, shapes, typography, composableLambdaImpl2, gapComposer, i4 & 57344);
                gapComposer.end(false);
            } else {
                composableLambdaImpl2 = composableLambdaImpl;
                gapComposer.startReplaceGroup(1458990389);
                Updater.CompositionLocalProvider(staticProvidableCompositionLocal.defaultProvidedValue$runtime(Boolean.TRUE), Expect_jvmKt.rememberComposableLambda(1535649272, new TextKt$$ExternalSyntheticLambda2(colorScheme, composableLambdaImpl2, 10), gapComposer), gapComposer, 56);
                gapComposer.end(false);
            }
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Transition$$ExternalSyntheticLambda2(i, colorScheme, composableLambdaImpl2, i3);
        }
    }

    public static final void MaterialTheme(ColorScheme colorScheme, MotionScheme motionScheme, Shapes shapes, Typography typography, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        char c;
        int i3;
        long Color;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(904511636);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(colorScheme) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(motionScheme) ? 32 : 16;
        }
        if ((i & RendererCapabilities.MODE_SUPPORT_MASK) == 0) {
            i2 |= gapComposer.changed(shapes) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changed(typography) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 16384 : 8192;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            gapComposer.startDefaults();
            if ((i & 1) != 0 && !gapComposer.getDefaultsInvalid()) {
                gapComposer.skipToGroupEnd();
            }
            gapComposer.endDefaults();
            MaterialTheme$Values materialTheme$Values = new MaterialTheme$Values(colorScheme, typography, shapes, motionScheme);
            RippleNodeFactory m156rippleH2RKhps$default = RippleKt.m156rippleH2RKhps$default(7, 0L);
            long j = colorScheme.primary;
            boolean changed = gapComposer.changed(j);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.Empty) {
                c = 1;
                i3 = 0;
                Color = Brush.Color(Color.m249getRedimpl(j), Color.m248getGreenimpl(j), Color.m246getBlueimpl(j), 0.4f, Color.m247getColorSpaceimpl(j));
                rememberedValue = new TextSelectionColors(j, Color);
                gapComposer.updateRememberedValue(rememberedValue);
            } else {
                c = 1;
                i3 = 0;
            }
            ProvidedValue defaultProvidedValue$runtime = _localMaterialTheme.defaultProvidedValue$runtime(materialTheme$Values);
            ProvidedValue defaultProvidedValue$runtime2 = IndicationKt.LocalIndication.defaultProvidedValue$runtime(m156rippleH2RKhps$default);
            ProvidedValue defaultProvidedValue$runtime3 = TextSelectionColorsKt.LocalTextSelectionColors.defaultProvidedValue$runtime((TextSelectionColors) rememberedValue);
            ProvidedValue[] providedValueArr = new ProvidedValue[3];
            providedValueArr[i3] = defaultProvidedValue$runtime;
            providedValueArr[c] = defaultProvidedValue$runtime2;
            providedValueArr[2] = defaultProvidedValue$runtime3;
            Updater.CompositionLocalProvider(providedValueArr, Expect_jvmKt.rememberComposableLambda(-1750539308, new MaterialThemeKt$$ExternalSyntheticLambda4(typography, composableLambdaImpl, i3), gapComposer), gapComposer, 56);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MaterialThemeKt$$ExternalSyntheticLambda5(colorScheme, motionScheme, shapes, typography, composableLambdaImpl, i, 0);
        }
    }
}
