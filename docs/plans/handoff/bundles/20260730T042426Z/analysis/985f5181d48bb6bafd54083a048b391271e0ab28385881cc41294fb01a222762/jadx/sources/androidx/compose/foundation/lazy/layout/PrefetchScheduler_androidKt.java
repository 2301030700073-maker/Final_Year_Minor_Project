package androidx.compose.foundation.lazy.layout;

import android.os.Build;
import android.view.View;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PrefetchScheduler.android.kt */
/* loaded from: classes.dex */
public abstract class PrefetchScheduler_androidKt {
    private static final PrefetchScheduler_androidKt$RobolectricImpl$1 RobolectricImpl;

    public static final PrefetchScheduler rememberDefaultPrefetchScheduler(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1141871251, i, -1, "androidx.compose.foundation.lazy.layout.rememberDefaultPrefetchScheduler (PrefetchScheduler.android.kt:32)");
        }
        PrefetchScheduler prefetchScheduler = RobolectricImpl;
        if (prefetchScheduler != null) {
            composer.startReplaceGroup(1213893039);
            composer.endReplaceGroup();
        } else {
            composer.startReplaceGroup(1213931944);
            View view = (View) composer.consume(AndroidCompositionLocals_androidKt.getLocalView());
            boolean changed = composer.changed(view);
            Object rememberedValue = composer.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new AndroidPrefetchScheduler(view);
                composer.updateRememberedValue(rememberedValue);
            }
            prefetchScheduler = (AndroidPrefetchScheduler) rememberedValue;
            composer.endReplaceGroup();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return prefetchScheduler;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [androidx.compose.foundation.lazy.layout.PrefetchScheduler_androidKt$RobolectricImpl$1] */
    static {
        String lowerCase = Build.FINGERPRINT.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        RobolectricImpl = Intrinsics.areEqual(lowerCase, "robolectric") ? new PrefetchScheduler() { // from class: androidx.compose.foundation.lazy.layout.PrefetchScheduler_androidKt$RobolectricImpl$1
            @Override // androidx.compose.foundation.lazy.layout.PrefetchScheduler
            public void schedulePrefetch(PrefetchRequest prefetchRequest) {
            }
        } : null;
    }
}
