package com.google.android.apps.nexuslauncher.search;

import android.content.pm.LauncherApps;
import android.net.Uri;
import android.os.Bundle;
import android.os.Process;
import android.text.TextUtils;
import android.view.View;
import android.widget.Toast;
import b.l.W;
import c.b.a.b.b.n.e;
import c.b.a.b.b.n.p;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherState;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.AppLaunchTracker;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.launcher3.views.BaseDragLayer;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.logging.UserEventDispatcherImpl;

/* loaded from: classes.dex */
public class AppLaunchActivity extends BaseActivity {
    @Override // com.android.launcher3.views.ActivityContext
    public BaseDragLayer getDragLayer() {
        throw new UnsupportedOperationException();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mDeviceProfile = LauncherAppState.getIDP(this).getDeviceProfile(this);
        Uri data = getIntent().getData();
        if (data != null) {
            try {
                ComponentKey d2 = W.d(data);
                if (d2 != null) {
                    if ("deepshortcut".equals(data.getQueryParameter("iconType"))) {
                        String queryParameter = data.getQueryParameter("deepshortcut_id");
                        String packageName = d2.componentName.getPackageName();
                        startShortcut(packageName, queryParameter, getIntent().getSourceBounds(), null, d2.user);
                        ((AppLaunchTracker) AppLaunchTracker.INSTANCE.b(this)).onStartShortcut(packageName, queryParameter, d2.user, AppLaunchTracker.CONTAINER_SEARCH);
                    } else {
                        AppInfo g = p.g(d2, data);
                        if (!getPackageManager().isSafeMode() || PackageManagerHelper.isSystemApp(this, g.getIntent())) {
                            if (d2.user.equals(Process.myUserHandle())) {
                                startActivity(g.getIntent());
                            } else {
                                ((LauncherApps) getSystemService(LauncherApps.class)).startMainActivity(d2.componentName, d2.user, getIntent().getSourceBounds(), null);
                            }
                            ((AppLaunchTracker) AppLaunchTracker.INSTANCE.b(this)).onStartApp(d2.componentName, d2.user, AppLaunchTracker.CONTAINER_SEARCH);
                            View view = new View(this);
                            view.setTag(g);
                            String queryParameter2 = data.getQueryParameter("predictionRank");
                            String queryParameter3 = data.getQueryParameter("searchQueryLength");
                            String queryParameter4 = data.getQueryParameter("searchResultSource");
                            String queryParameter5 = data.getQueryParameter("position");
                            new e(this, TextUtils.isEmpty(queryParameter2) ? -1 : Integer.parseInt(queryParameter2), TextUtils.isEmpty(queryParameter3) ? 0 : Integer.parseInt(queryParameter3), TextUtils.isEmpty(queryParameter4) ? 0 : Integer.parseInt(queryParameter4), TextUtils.isEmpty(queryParameter5) ? Integer.parseInt(queryParameter2) : Integer.parseInt(queryParameter5)).addView(view);
                            Launcher launcher = (Launcher) Launcher.ACTIVITY_TRACKER.getCreatedActivity();
                            ((UserEventDispatcherImpl) getUserEventDispatcher()).d(view, g, launcher == null ? 2 : ((LauncherState) launcher.getStateManager().mState).containerType);
                            getStatsLogManager().logger().withItemInfo(g).log(StatsLogManager.LauncherEvent.LAUNCHER_APP_LAUNCH_TAP);
                        } else {
                            Toast.makeText(this, R.string.safemode_shortcut_error, 0).show();
                        }
                    }
                }
            } catch (Exception unused) {
                Toast.makeText(this, R.string.activity_not_found, 0).show();
            }
        } else {
            String stringExtra = getIntent().getStringExtra("query");
            if (!TextUtils.isEmpty(stringExtra)) {
                startActivity(PackageManagerHelper.getMarketSearchIntent(this, stringExtra));
            }
        }
        finish();
    }
}
