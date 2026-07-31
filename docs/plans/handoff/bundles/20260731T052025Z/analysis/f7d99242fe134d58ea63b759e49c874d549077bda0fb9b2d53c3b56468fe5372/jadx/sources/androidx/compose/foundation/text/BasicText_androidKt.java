package androidx.compose.foundation.text;

import android.os.Build;
import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily$Resolver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class BasicText_androidKt {
    public static final StaticProvidableCompositionLocal LocalBackgroundTextMeasurementExecutor = new StaticProvidableCompositionLocal(new ImmLeaksCleaner$$ExternalSyntheticLambda0(17));
    public static Boolean backingCoreCountSatisfactory;

    public static final void BackgroundTextMeasurement(AnnotatedString annotatedString, TextStyle textStyle, FontFamily$Resolver fontFamily$Resolver, List list, Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        Executor executor = (Executor) gapComposer.consume(LocalBackgroundTextMeasurementExecutor);
        if (executor == null || !shouldPrefetch(annotatedString.text.length())) {
            gapComposer.startReplaceGroup(-517090505);
            gapComposer.end(false);
        } else {
            gapComposer.startReplaceGroup(-518737659);
            try {
                executor.execute(new BasicText_androidKt$$ExternalSyntheticLambda2(textStyle, (LayoutDirection) gapComposer.consume(CompositionLocalsKt.LocalLayoutDirection), list, annotatedString, (Density) gapComposer.consume(CompositionLocalsKt.LocalDensity), fontFamily$Resolver, 0));
            } catch (RejectedExecutionException unused) {
            }
            gapComposer.end(false);
        }
    }

    public static final boolean shouldPrefetch(int i) {
        if (Build.VERSION.SDK_INT >= 28 && i >= 8 && i < 1000) {
            if (backingCoreCountSatisfactory == null) {
                backingCoreCountSatisfactory = Boolean.valueOf(Runtime.getRuntime().availableProcessors() >= 4);
            }
            Boolean bool = backingCoreCountSatisfactory;
            bool.getClass();
            if (bool.booleanValue()) {
                return true;
            }
        }
        return false;
    }
}
