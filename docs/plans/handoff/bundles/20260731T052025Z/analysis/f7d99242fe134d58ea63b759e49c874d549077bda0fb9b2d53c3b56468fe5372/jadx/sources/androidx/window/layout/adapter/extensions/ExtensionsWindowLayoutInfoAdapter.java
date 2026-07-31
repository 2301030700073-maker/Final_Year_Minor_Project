package androidx.window.layout.adapter.extensions;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.window.core.Bounds;
import androidx.window.extensions.layout.FoldingFeature;
import androidx.window.layout.FoldingFeature$State;
import androidx.window.layout.HardwareFoldingFeature;
import androidx.window.layout.WindowLayoutInfo;
import androidx.window.layout.WindowMetrics;
import androidx.window.layout.util.BoundsHelperApi16Impl;
import androidx.window.layout.util.BoundsHelperApi30Impl;
import androidx.window.layout.util.DensityCompatHelper;
import androidx.window.layout.util.DensityCompatHelperApi34Impl;
import androidx.window.layout.util.WindowMetricsCompatHelper;
import java.util.ArrayList;
import java.util.List;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ExtensionsWindowLayoutInfoAdapter {
    public static WindowLayoutInfo translate$window_release(Context context, androidx.window.extensions.layout.WindowLayoutInfo windowLayoutInfo) {
        WindowMetricsCompatHelper windowMetricsCompatHelper = BoundsHelperApi16Impl.INSTANCE$5;
        WindowMetricsCompatHelper windowMetricsCompatHelper2 = BoundsHelperApi30Impl.INSTANCE$1;
        WindowMetricsCompatHelper windowMetricsCompatHelper3 = DensityCompatHelperApi34Impl.INSTANCE$1;
        context.getClass();
        windowLayoutInfo.getClass();
        int i = Build.VERSION.SDK_INT;
        DensityCompatHelper densityCompatHelper = i >= 34 ? DensityCompatHelperApi34Impl.INSTANCE : BoundsHelperApi16Impl.INSTANCE$4;
        IntOffsetKt.arrayListOf(1, 2, 4, 8, 16, 32, 64, 128);
        if (i >= 30) {
            if (i >= 34) {
                windowMetricsCompatHelper = windowMetricsCompatHelper3;
            } else if (i >= 30) {
                windowMetricsCompatHelper = windowMetricsCompatHelper2;
            }
            return translate$window_release(windowMetricsCompatHelper.currentWindowMetrics(context, densityCompatHelper), windowLayoutInfo);
        }
        if (i < 29 || !(context instanceof Activity)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Display Features are only supported after Q. Display features for non-Activity contexts are not expected to be reported on devices running Q.");
            return null;
        }
        Activity activity = (Activity) context;
        if (i >= 34) {
            windowMetricsCompatHelper = windowMetricsCompatHelper3;
        } else if (i >= 30) {
            windowMetricsCompatHelper = windowMetricsCompatHelper2;
        }
        return translate$window_release(windowMetricsCompatHelper.currentWindowMetrics(activity, densityCompatHelper), windowLayoutInfo);
    }

    public static HardwareFoldingFeature translate$window_release(WindowMetrics windowMetrics, FoldingFeature foldingFeature) {
        FoldingFeature$State foldingFeature$State;
        FoldingFeature$State foldingFeature$State2;
        windowMetrics.getClass();
        foldingFeature.getClass();
        int type = foldingFeature.getType();
        if (type == 1) {
            foldingFeature$State = FoldingFeature$State.FOLD;
        } else {
            if (type != 2) {
                return null;
            }
            foldingFeature$State = FoldingFeature$State.HINGE;
        }
        int state = foldingFeature.getState();
        if (state == 1) {
            foldingFeature$State2 = FoldingFeature$State.FLAT;
        } else {
            if (state != 2) {
                return null;
            }
            foldingFeature$State2 = FoldingFeature$State.HALF_OPENED;
        }
        Rect bounds = foldingFeature.getBounds();
        bounds.getClass();
        Bounds bounds2 = new Bounds(bounds);
        Rect bounds3 = windowMetrics.getBounds();
        if (bounds2.getHeight() == 0 && bounds2.getWidth() == 0) {
            return null;
        }
        if (bounds2.getWidth() != bounds3.width() && bounds2.getHeight() != bounds3.height()) {
            return null;
        }
        if (bounds2.getWidth() < bounds3.width() && bounds2.getHeight() < bounds3.height()) {
            return null;
        }
        if (bounds2.getWidth() == bounds3.width() && bounds2.getHeight() == bounds3.height()) {
            return null;
        }
        Rect bounds4 = foldingFeature.getBounds();
        bounds4.getClass();
        return new HardwareFoldingFeature(new Bounds(bounds4), foldingFeature$State, foldingFeature$State2);
    }

    public static WindowLayoutInfo translate$window_release(WindowMetrics windowMetrics, androidx.window.extensions.layout.WindowLayoutInfo windowLayoutInfo) {
        windowMetrics.getClass();
        windowLayoutInfo.getClass();
        List<FoldingFeature> displayFeatures = windowLayoutInfo.getDisplayFeatures();
        displayFeatures.getClass();
        ArrayList arrayList = new ArrayList();
        for (FoldingFeature foldingFeature : displayFeatures) {
            HardwareFoldingFeature translate$window_release = foldingFeature instanceof FoldingFeature ? translate$window_release(windowMetrics, foldingFeature) : null;
            if (translate$window_release != null) {
                arrayList.add(translate$window_release);
            }
        }
        return new WindowLayoutInfo(arrayList);
    }
}
