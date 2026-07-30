package com.android.quickstep;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import c.a.b.C0266d;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.testing.TestInformationHandler;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.launcher3.uioverrides.touchcontrollers.PortraitStatesTouchController;
import com.android.quickstep.util.LayoutUtils;
import java.util.function.Function;

/* loaded from: classes.dex */
public class QuickstepTestInformationHandler extends TestInformationHandler {
    public final Context mContext;

    public QuickstepTestInformationHandler(Context context) {
        this.mContext = context;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.android.launcher3.testing.TestInformationHandler
    public Bundle call(String str) {
        char c2;
        C0266d c0266d = new TestInformationHandler.BundleSetter() { // from class: c.a.b.d
            @Override // com.android.launcher3.testing.TestInformationHandler.BundleSetter
            public final void set(Bundle bundle, String str2, Object obj) {
                bundle.putInt(str2, ((Integer) obj).intValue());
            }
        };
        Bundle bundle = new Bundle();
        switch (str.hashCode()) {
            case -1656011235:
                if (str.equals("overview-actions-enabled")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case -859934502:
                if (str.equals("hotseat-top")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case -246513429:
                if (str.equals("all-apps-to-overview-swipe-height")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 451177691:
                if (str.equals("background-to-overview-swipe-height")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 1211049546:
                if (str.equals("home-to-overview-swipe-height")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 == 0) {
            return TestInformationHandler.getLauncherUIProperty(c0266d, new Function() { // from class: c.a.b.y0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Launcher launcher = (Launcher) obj;
                    return Integer.valueOf((int) (launcher.mAllAppsController.mShiftRange * (LauncherState.OVERVIEW.getVerticalProgress(launcher) - LauncherState.ALL_APPS.getVerticalProgress(launcher))));
                }
            });
        }
        if (c2 == 1) {
            bundle.putInt("response", (int) LayoutUtils.getDefaultSwipeHeight(this.mContext, this.mDeviceProfile));
            return bundle;
        }
        if (c2 == 2) {
            bundle.putInt("response", LayoutUtils.getShelfTrackingDistance(this.mContext, this.mDeviceProfile, PagedOrientationHandler.PORTRAIT));
            return bundle;
        }
        if (c2 == 3) {
            return TestInformationHandler.getLauncherUIProperty(c0266d, new Function() { // from class: c.a.b.q0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Integer.valueOf(PortraitStatesTouchController.getHotseatTop((Launcher) obj));
                }
            });
        }
        if (c2 != 4) {
            return super.call(str);
        }
        bundle.putBoolean("response", FeatureFlags.ENABLE_OVERVIEW_ACTIONS.get());
        return bundle;
    }

    @Override // com.android.launcher3.testing.TestInformationHandler
    public Activity getCurrentActivity() {
        RecentsAnimationDeviceState recentsAnimationDeviceState = new RecentsAnimationDeviceState(this.mContext);
        OverviewComponentObserver overviewComponentObserver = new OverviewComponentObserver(this.mContext, recentsAnimationDeviceState);
        try {
            return overviewComponentObserver.getActivityInterface().getCreatedActivity();
        } finally {
            overviewComponentObserver.onDestroy();
            recentsAnimationDeviceState.destroy();
        }
    }

    @Override // com.android.launcher3.testing.TestInformationHandler
    public boolean isLauncherInitialized() {
        return super.isLauncherInitialized() && TouchInteractionService.isInitialized();
    }
}
