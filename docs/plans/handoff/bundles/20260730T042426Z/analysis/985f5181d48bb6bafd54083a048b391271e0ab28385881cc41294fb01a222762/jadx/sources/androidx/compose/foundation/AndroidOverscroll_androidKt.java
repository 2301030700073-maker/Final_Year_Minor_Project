package androidx.compose.foundation;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;

/* compiled from: AndroidOverscroll.android.kt */
/* loaded from: classes.dex */
public abstract class AndroidOverscroll_androidKt {
    public static final OverscrollEffect rememberOverscrollEffect(Composer composer, int i) {
        OverscrollEffect overscrollEffect;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1476348564, i, -1, "androidx.compose.foundation.rememberOverscrollEffect (AndroidOverscroll.android.kt:63)");
        }
        Context context = (Context) composer.consume(AndroidCompositionLocals_androidKt.getLocalContext());
        OverscrollConfiguration overscrollConfiguration = (OverscrollConfiguration) composer.consume(OverscrollConfiguration_androidKt.getLocalOverscrollConfiguration());
        if (overscrollConfiguration != null) {
            composer.startReplaceGroup(1586021609);
            boolean changed = composer.changed(context) | composer.changed(overscrollConfiguration);
            Object rememberedValue = composer.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new AndroidEdgeEffectOverscrollEffect(context, overscrollConfiguration);
                composer.updateRememberedValue(rememberedValue);
            }
            overscrollEffect = (AndroidEdgeEffectOverscrollEffect) rememberedValue;
            composer.endReplaceGroup();
        } else {
            composer.startReplaceGroup(1586120933);
            composer.endReplaceGroup();
            overscrollEffect = NoOpOverscrollEffect.INSTANCE;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return overscrollEffect;
    }
}
