package androidx.window.layout.util;

import android.app.Activity;
import android.content.Context;
import androidx.window.layout.WindowMetrics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface WindowMetricsCompatHelper {
    WindowMetrics currentWindowMetrics(Activity activity, DensityCompatHelper densityCompatHelper);

    WindowMetrics currentWindowMetrics(Context context, DensityCompatHelper densityCompatHelper);
}
