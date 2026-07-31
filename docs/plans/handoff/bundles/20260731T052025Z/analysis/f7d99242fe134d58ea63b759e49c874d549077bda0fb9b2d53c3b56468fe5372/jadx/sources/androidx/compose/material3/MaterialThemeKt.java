package androidx.compose.material3;

import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.material3.ButtonKt$Button$2;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import kotlin.ResultKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class MaterialThemeKt {
    public static final StaticProvidableCompositionLocal _localMotionScheme;

    static {
        ResultKt.lazy(new TextKt$$ExternalSyntheticLambda4(3));
        _localMotionScheme = new StaticProvidableCompositionLocal(new TextKt$$ExternalSyntheticLambda4(4));
    }

    public static final void MaterialTheme(ColorScheme colorScheme, MotionScheme$StandardMotionSchemeImpl motionScheme$StandardMotionSchemeImpl, Shapes shapes, Typography typography, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        char c;
        char c2;
        long Color;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(904511636);
        int i3 = 2;
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(colorScheme) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(motionScheme$StandardMotionSchemeImpl) ? 32 : 16;
        }
        if ((i & 384) == 0) {
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
            RippleNodeFactory m355rippleH2RKhps$default = RippleKt.m355rippleH2RKhps$default(false, 0.0f, 7);
            long j = colorScheme.primary;
            boolean changed = gapComposer.changed(j);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.Empty) {
                c = 0;
                c2 = 1;
                Color = ColorKt.Color(Color.m487getRedimpl(j), Color.m486getGreenimpl(j), Color.m484getBlueimpl(j), 0.4f, Color.m485getColorSpaceimpl(j));
                rememberedValue = new TextSelectionColors(j, Color);
                gapComposer.updateRememberedValue(rememberedValue);
            } else {
                c = 0;
                c2 = 1;
            }
            ProvidedValue defaultProvidedValue$runtime = ColorSchemeKt.LocalColorScheme.defaultProvidedValue$runtime(colorScheme);
            ProvidedValue defaultProvidedValue$runtime2 = _localMotionScheme.defaultProvidedValue$runtime(motionScheme$StandardMotionSchemeImpl);
            ProvidedValue defaultProvidedValue$runtime3 = IndicationKt.LocalIndication.defaultProvidedValue$runtime(m355rippleH2RKhps$default);
            ProvidedValue defaultProvidedValue$runtime4 = ShapesKt.LocalShapes.defaultProvidedValue$runtime(shapes);
            ProvidedValue defaultProvidedValue$runtime5 = TextSelectionColorsKt.LocalTextSelectionColors.defaultProvidedValue$runtime((TextSelectionColors) rememberedValue);
            ProvidedValue defaultProvidedValue$runtime6 = TypographyKt.LocalTypography.defaultProvidedValue$runtime(typography);
            ProvidedValue[] providedValueArr = new ProvidedValue[6];
            providedValueArr[c] = defaultProvidedValue$runtime;
            providedValueArr[c2] = defaultProvidedValue$runtime2;
            providedValueArr[2] = defaultProvidedValue$runtime3;
            providedValueArr[3] = defaultProvidedValue$runtime4;
            providedValueArr[4] = defaultProvidedValue$runtime5;
            providedValueArr[5] = defaultProvidedValue$runtime6;
            Updater.CompositionLocalProvider(providedValueArr, Expect_jvmKt.rememberComposableLambda(-1750539308, new ButtonKt$Button$2.AnonymousClass1(i3, typography, composableLambdaImpl), gapComposer), gapComposer, 56);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CardKt$$ExternalSyntheticLambda0(colorScheme, motionScheme$StandardMotionSchemeImpl, shapes, typography, composableLambdaImpl, i, 3);
        }
    }

    public static final void MaterialTheme(ColorScheme colorScheme, Shapes shapes, Typography typography, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-449719819);
        int i2 = i | (gapComposer.changed(colorScheme) ? 4 : 2) | (gapComposer.changed(shapes) ? 32 : 16) | (gapComposer.changed(typography) ? 256 : 128) | (gapComposer.changedInstance(composableLambdaImpl) ? 2048 : 1024);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            gapComposer.startDefaults();
            if ((i & 1) != 0 && !gapComposer.getDefaultsInvalid()) {
                gapComposer.skipToGroupEnd();
            }
            gapComposer.endDefaults();
            int i3 = i2 & 14;
            int i4 = i2 << 3;
            MaterialTheme(colorScheme, (MotionScheme$StandardMotionSchemeImpl) gapComposer.consume(_localMotionScheme), shapes, typography, composableLambdaImpl, gapComposer, i3 | (i4 & 896) | (i4 & 7168) | (i4 & 57344));
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MaterialThemeKt$$ExternalSyntheticLambda0(colorScheme, shapes, typography, composableLambdaImpl, i, 0);
        }
    }
}
