package com.android.quickstep.util;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.quickstep.LauncherActivityInterface;
import com.android.quickstep.SysUINavigationMode;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class LayoutUtils {
    public static float getDefaultSwipeHeight(Context context, DeviceProfile deviceProfile) {
        float f = deviceProfile.allAppsCellHeightPx - deviceProfile.allAppsIconTextSizePx;
        return SysUINavigationMode.getMode(context) == SysUINavigationMode.Mode.NO_BUTTON ? f - deviceProfile.mInsets.bottom : f;
    }

    public static int getShelfTrackingDistance(Context context, DeviceProfile deviceProfile, PagedOrientationHandler pagedOrientationHandler) {
        if (!FeatureFlags.ENABLE_OVERVIEW_ACTIONS.get() || !SysUINavigationMode.removeShelfFromOverview(context)) {
            return deviceProfile.hotseatBarSizePx + deviceProfile.mInsets.bottom + ((int) context.getResources().getDimension(R.dimen.task_card_vert_space));
        }
        Rect rect = new Rect();
        LauncherActivityInterface.INSTANCE.calculateTaskSize(context, deviceProfile, rect, pagedOrientationHandler);
        return (deviceProfile.heightPx - rect.height()) / 2;
    }

    public static void setViewEnabled(View view, boolean z) {
        view.setEnabled(z);
        if (!(view instanceof ViewGroup)) {
            return;
        }
        int i = 0;
        while (true) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (i >= viewGroup.getChildCount()) {
                return;
            }
            setViewEnabled(viewGroup.getChildAt(i), z);
            i++;
        }
    }
}
