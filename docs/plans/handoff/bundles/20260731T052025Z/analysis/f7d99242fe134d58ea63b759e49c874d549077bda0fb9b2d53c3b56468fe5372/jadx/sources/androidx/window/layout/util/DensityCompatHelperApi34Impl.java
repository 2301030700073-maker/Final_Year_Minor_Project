package androidx.window.layout.util;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.view.WindowManager;
import androidx.window.core.Bounds;
import androidx.window.layout.WindowMetrics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DensityCompatHelperApi34Impl implements DensityCompatHelper, WindowMetricsCompatHelper {
    public static final DensityCompatHelperApi34Impl INSTANCE = new DensityCompatHelperApi34Impl();
    public static final DensityCompatHelperApi34Impl INSTANCE$1 = new DensityCompatHelperApi34Impl();

    @Override // androidx.window.layout.util.WindowMetricsCompatHelper
    public WindowMetrics currentWindowMetrics(Activity activity, DensityCompatHelper densityCompatHelper) {
        activity.getClass();
        densityCompatHelper.getClass();
        int i = Build.VERSION.SDK_INT;
        return new WindowMetrics(new Bounds((i >= 30 ? BoundsHelperApi30Impl.INSTANCE : i >= 29 ? BoundsHelperApi16Impl.INSTANCE$3 : i >= 28 ? BoundsHelperApi16Impl.INSTANCE$2 : i >= 24 ? BoundsHelperApi16Impl.INSTANCE$1 : BoundsHelperApi16Impl.INSTANCE).currentWindowBounds(activity)), densityCompatHelper.density(activity));
    }

    @Override // androidx.window.layout.util.DensityCompatHelper
    public float density(Context context) {
        context.getClass();
        return ((WindowManager) context.getSystemService(WindowManager.class)).getCurrentWindowMetrics().getDensity();
    }

    @Override // androidx.window.layout.util.WindowMetricsCompatHelper
    public WindowMetrics currentWindowMetrics(Context context, DensityCompatHelper densityCompatHelper) {
        WindowManager windowManager;
        context.getClass();
        densityCompatHelper.getClass();
        if (context.isUiContext()) {
            windowManager = (WindowManager) context.getSystemService(WindowManager.class);
        } else {
            windowManager = (WindowManager) context.getApplicationContext().getSystemService(WindowManager.class);
        }
        Rect bounds = windowManager.getCurrentWindowMetrics().getBounds();
        bounds.getClass();
        return new WindowMetrics(bounds, windowManager.getCurrentWindowMetrics().getDensity());
    }
}
