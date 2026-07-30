package com.android.launcher3;

import android.app.ActivityOptions;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.pm.LauncherApps;
import android.content.res.Configuration;
import android.graphics.Insets;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Process;
import android.os.StrictMode;
import android.os.Trace;
import android.os.UserHandle;
import android.util.Log;
import android.view.ActionMode;
import android.view.Display;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowMetrics;
import android.widget.Toast;
import b.l.W;
import com.android.launcher3.logging.InstanceId;
import com.android.launcher3.logging.InstanceIdSequence;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.AppLaunchTracker;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.touch.ItemClickHandler;
import com.android.launcher3.uioverrides.WallpaperColorInfo;
import com.android.launcher3.util.DefaultDisplay;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.launcher3.util.WindowBounds;
import com.android.systemui.shared.R;
import com.android.systemui.shared.tracing.FrameProtoTracer;

/* loaded from: classes.dex */
public abstract class BaseDraggingActivity extends BaseActivity implements WallpaperColorInfo.OnChangeListener, DefaultDisplay.DisplayInfoChangeListener {
    public static final Object AUTO_CANCEL_ACTION_MODE = new Object();
    public static final String TAG = "BaseDraggingActivity";
    public ActionMode mCurrentActionMode;
    public boolean mIsSafeModeEnabled;
    public Runnable mOnStartCallback;
    public int mThemeRes = R.style.AppTheme;

    private void startShortcutIntentSafely(Intent intent, Bundle bundle, ItemInfo itemInfo, String str) {
        try {
            StrictMode.VmPolicy vmPolicy = StrictMode.getVmPolicy();
            try {
                StrictMode.setVmPolicy(new StrictMode.VmPolicy.Builder().detectAll().penaltyLog().build());
                if (itemInfo.itemType == 6) {
                    String deepShortcutId = ((WorkspaceItemInfo) itemInfo).getDeepShortcutId();
                    String str2 = intent.getPackage();
                    startShortcut(str2, deepShortcutId, intent.getSourceBounds(), bundle, itemInfo.user);
                    ((AppLaunchTracker) AppLaunchTracker.INSTANCE.b(this)).onStartShortcut(str2, deepShortcutId, itemInfo.user, str);
                } else {
                    startActivity(intent, bundle);
                }
                StrictMode.setVmPolicy(vmPolicy);
            } catch (Throwable th) {
                StrictMode.setVmPolicy(vmPolicy);
                throw th;
            }
        } catch (SecurityException e) {
            if (!onErrorStartingShortcut(intent, itemInfo)) {
                throw e;
            }
        }
    }

    private void updateTheme() {
        if (this.mThemeRes != W.getActivityThemeRes(this)) {
            recreate();
        }
    }

    public /* synthetic */ Boolean a() {
        return Boolean.valueOf(getPackageManager().isSafeMode());
    }

    public void clearRunOnceOnStartCallback() {
        this.mOnStartCallback = null;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public boolean finishAutoCancelActionMode() {
        ActionMode actionMode = this.mCurrentActionMode;
        if (actionMode == null || AUTO_CANCEL_ACTION_MODE != actionMode.getTag()) {
            return false;
        }
        this.mCurrentActionMode.finish();
        return true;
    }

    public abstract ActivityOptions getActivityLaunchOptions(View view);

    public final Bundle getActivityLaunchOptionsAsBundle(View view) {
        ActivityOptions activityLaunchOptions = getActivityLaunchOptions(view);
        if (activityLaunchOptions == null) {
            return null;
        }
        return activityLaunchOptions.toBundle();
    }

    public View.OnClickListener getItemOnClickListener() {
        return ItemClickHandler.INSTANCE;
    }

    public WindowBounds getMultiWindowDisplaySize() {
        if (Utilities.ATLEAST_R) {
            WindowMetrics currentWindowMetrics = getWindowManager().getCurrentWindowMetrics();
            Insets insets = currentWindowMetrics.getWindowInsets().getInsets(WindowInsets.Type.systemBars());
            return new WindowBounds(currentWindowMetrics.getBounds(), new Rect(insets.left, insets.top, insets.right, insets.bottom));
        }
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return new WindowBounds(new Rect(0, 0, point.x, point.y), new Rect());
    }

    public abstract View getOverviewPanel();

    public abstract View getRootView();

    public Rect getViewBounds(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return new Rect(iArr[0], iArr[1], view.getWidth() + iArr[0], view.getHeight() + iArr[1]);
    }

    public void logAppLaunch(ItemInfo itemInfo, InstanceId instanceId) {
        getStatsLogManager().logger().withItemInfo(itemInfo).withInstanceId(instanceId).log(StatsLogManager.LauncherEvent.LAUNCHER_APP_LAUNCH_TAP);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onActionModeFinished(ActionMode actionMode) {
        super.onActionModeFinished(actionMode);
        this.mCurrentActionMode = null;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onActionModeStarted(ActionMode actionMode) {
        super.onActionModeStarted(actionMode);
        this.mCurrentActionMode = actionMode;
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        updateTheme();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Trace.beginSection("isSafeMode");
        try {
            Boolean a2 = a();
            Trace.endSection();
            this.mIsSafeModeEnabled = a2.booleanValue();
            ((DefaultDisplay) DefaultDisplay.INSTANCE.b(this)).mListeners.add(this);
            ((WallpaperColorInfo) WallpaperColorInfo.INSTANCE.b(this)).mListeners.add(this);
            int activityThemeRes = W.getActivityThemeRes(this);
            if (activityThemeRes != this.mThemeRes) {
                this.mThemeRes = activityThemeRes;
                setTheme(activityThemeRes);
            }
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        ((WallpaperColorInfo) WallpaperColorInfo.INSTANCE.b(this)).mListeners.remove(this);
        ((DefaultDisplay) DefaultDisplay.INSTANCE.b(this)).mListeners.remove(this);
    }

    public void onDeviceProfileInitiated() {
        if (this.mDeviceProfile.isVerticalBarLayout()) {
            this.mDeviceProfile.updateIsSeascape(this);
        }
    }

    @Override // com.android.launcher3.util.DefaultDisplay.DisplayInfoChangeListener
    public void onDisplayInfoChanged(DefaultDisplay.Info info, int i) {
        if ((i & 2) == 0 || !this.mDeviceProfile.updateIsSeascape(this)) {
            return;
        }
        reapplyUi();
    }

    public boolean onErrorStartingShortcut(Intent intent, ItemInfo itemInfo) {
        return false;
    }

    @Override // com.android.launcher3.uioverrides.WallpaperColorInfo.OnChangeListener
    public void onExtractedColorsChanged(WallpaperColorInfo wallpaperColorInfo) {
        updateTheme();
    }

    @Override // com.android.launcher3.BaseActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        Runnable runnable = this.mOnStartCallback;
        if (runnable != null) {
            runnable.run();
            this.mOnStartCallback = null;
        }
    }

    public abstract void reapplyUi();

    public void returnToHomescreen() {
    }

    public void runOnceOnStart(Runnable runnable) {
        this.mOnStartCallback = runnable;
    }

    /* renamed from: startActivitySafely */
    public boolean k(View view, Intent intent, ItemInfo itemInfo, String str) {
        if (this.mIsSafeModeEnabled && !PackageManagerHelper.isSystemApp(this, intent)) {
            Toast.makeText(this, R.string.safemode_shortcut_error, 0).show();
            return false;
        }
        Bundle activityLaunchOptionsAsBundle = view != null ? getActivityLaunchOptionsAsBundle(view) : null;
        UserHandle userHandle = itemInfo != null ? itemInfo.user : null;
        intent.addFlags(268435456);
        if (view != null) {
            intent.setSourceBounds(getViewBounds(view));
        }
        try {
            if ((itemInfo instanceof WorkspaceItemInfo) && (itemInfo.itemType == 1 || itemInfo.itemType == 6) && !((WorkspaceItemInfo) itemInfo).isPromise()) {
                startShortcutIntentSafely(intent, activityLaunchOptionsAsBundle, itemInfo, str);
            } else {
                if (userHandle != null && !userHandle.equals(Process.myUserHandle())) {
                    ((LauncherApps) getSystemService(LauncherApps.class)).startMainActivity(intent.getComponent(), userHandle, intent.getSourceBounds(), activityLaunchOptionsAsBundle);
                    ((AppLaunchTracker) AppLaunchTracker.INSTANCE.b(this)).onStartApp(intent.getComponent(), userHandle, str);
                }
                startActivity(intent, activityLaunchOptionsAsBundle);
                ((AppLaunchTracker) AppLaunchTracker.INSTANCE.b(this)).onStartApp(intent.getComponent(), Process.myUserHandle(), str);
            }
            getUserEventDispatcher().logAppLaunch(view, intent, userHandle);
            if (itemInfo != null) {
                logAppLaunch(itemInfo, new InstanceIdSequence(FrameProtoTracer.BUFFER_CAPACITY).newInstanceId());
            }
            return true;
        } catch (ActivityNotFoundException | NullPointerException | SecurityException e) {
            Toast.makeText(this, R.string.activity_not_found, 0).show();
            Log.e(TAG, "Unable to launch. tag=" + itemInfo + " intent=" + intent, e);
            return false;
        }
    }
}
