package com.android.launcher3.hybridhotseat;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import c.a.a.K0.m;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.LauncherState;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.launcher3.util.ActivityTracker;

/* loaded from: classes.dex */
public class HotseatEduActivity extends Activity {

    public class HotseatActivityTracker implements ActivityTracker.SchedulerCallback {
        @Override // com.android.launcher3.util.ActivityTracker.SchedulerCallback
        public boolean init(BaseActivity baseActivity, boolean z) {
            HotseatPredictionController hotseatPredictionController;
            QuickstepLauncher quickstepLauncher = (QuickstepLauncher) baseActivity;
            if (quickstepLauncher == null || (hotseatPredictionController = quickstepLauncher.mHotseatPredictionController) == null) {
                return false;
            }
            hotseatPredictionController.mLauncher.getStateManager().goToState(LauncherState.NORMAL, true, new m(hotseatPredictionController));
            return false;
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent flags = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME").setPackage(getPackageName()).setFlags(268435456);
        new HotseatActivityTracker().addToIntent(flags);
        startActivity(flags);
        finish();
    }
}
