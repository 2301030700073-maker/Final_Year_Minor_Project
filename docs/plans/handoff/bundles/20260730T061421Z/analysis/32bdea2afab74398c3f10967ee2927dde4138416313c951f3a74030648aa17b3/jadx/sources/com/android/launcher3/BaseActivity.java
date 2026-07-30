package com.android.launcher3;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.LauncherApps;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.UserHandle;
import android.util.Log;
import android.view.ContextThemeWrapper;
import c.a.c.a.a;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.logging.UserEventDispatcher;
import com.android.launcher3.userevent.nano.LauncherLogProto$LauncherEvent;
import com.android.launcher3.util.SystemUiController;
import com.android.launcher3.util.ViewCache;
import com.android.launcher3.views.ActivityContext;
import java.io.PrintWriter;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class BaseActivity extends Activity implements ActivityContext {
    public static final int ACTIVITY_STATE_DEFERRED_RESUMED = 4;
    public static final int ACTIVITY_STATE_RESUMED = 2;
    public static final int ACTIVITY_STATE_STARTED = 1;
    public static final int ACTIVITY_STATE_TRANSITION_ACTIVE = 64;
    public static final int ACTIVITY_STATE_USER_ACTIVE = 16;
    public static final int ACTIVITY_STATE_USER_WILL_BE_ACTIVE = 32;
    public static final int ACTIVITY_STATE_WINDOW_FOCUSED = 8;
    public static final int INVISIBLE_ALL = 15;
    public static final int INVISIBLE_BY_APP_TRANSITIONS = 2;
    public static final int INVISIBLE_BY_PENDING_FLAGS = 4;
    public static final int INVISIBLE_BY_STATE_HANDLER = 1;
    public static final int INVISIBLE_FLAGS = 7;
    public static final int PENDING_INVISIBLE_BY_WALLPAPER_ANIMATION = 8;
    public static final int STATE_HANDLER_INVISIBILITY_FLAGS = 9;
    public static final String TAG = "BaseActivity";
    public int mActivityFlags;
    public DeviceProfile mDeviceProfile;
    public int mForceInvisible;
    public StatsLogManager mStatsLogManager;
    public SystemUiController mSystemUiController;
    public UserEventDispatcher mUserEventDispatcher;
    public final ArrayList mDPChangeListeners = new ArrayList();
    public final ArrayList mMultiWindowModeChangedListeners = new ArrayList();
    public final ViewCache mViewCache = new ViewCache();

    public interface MultiWindowModeChangedListener {
        void onMultiWindowModeChanged(boolean z);
    }

    public static BaseActivity fromContext(Context context) {
        if (context instanceof BaseActivity) {
            return (BaseActivity) context;
        }
        if (context instanceof ContextThemeWrapper) {
            return fromContext(((ContextWrapper) context).getBaseContext());
        }
        throw new IllegalArgumentException("Cannot find BaseActivity in parent tree");
    }

    public void addActivityFlags(int i) {
        this.mActivityFlags |= i;
        onActivityFlagsChanged(i);
    }

    public void addForceInvisibleFlag(int i) {
        this.mForceInvisible = i | this.mForceInvisible;
    }

    public void addMultiWindowModeChangedListener(MultiWindowModeChangedListener multiWindowModeChangedListener) {
        this.mMultiWindowModeChangedListeners.add(multiWindowModeChangedListener);
    }

    public void addOnDeviceProfileChangeListener(DeviceProfile.OnDeviceProfileChangeListener onDeviceProfileChangeListener) {
        this.mDPChangeListeners.add(onDeviceProfileChangeListener);
    }

    public void clearForceInvisibleFlag(int i) {
        this.mForceInvisible = (~i) & this.mForceInvisible;
    }

    public void dispatchDeviceProfileChanged() {
        for (int size = this.mDPChangeListeners.size() - 1; size >= 0; size--) {
            ((DeviceProfile.OnDeviceProfileChangeListener) this.mDPChangeListeners.get(size)).onDeviceProfileChanged(this.mDeviceProfile);
        }
    }

    public void dumpMisc(String str, PrintWriter printWriter) {
        StringBuilder g = a.g(str, "deviceProfile isTransposed=");
        g.append(getDeviceProfile().isVerticalBarLayout());
        printWriter.println(g.toString());
        printWriter.println(str + "orientation=" + getResources().getConfiguration().orientation);
        printWriter.println(str + "mSystemUiController: " + this.mSystemUiController);
        printWriter.println(str + "mActivityFlags: " + this.mActivityFlags);
        printWriter.println(str + "mForceInvisible: " + this.mForceInvisible);
    }

    public int getActivityFlags() {
        return this.mActivityFlags;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public DeviceProfile getDeviceProfile() {
        return this.mDeviceProfile;
    }

    public final StatsLogManager getStatsLogManager() {
        if (this.mStatsLogManager == null) {
            this.mStatsLogManager = StatsLogManager.newInstance(this);
        }
        return this.mStatsLogManager;
    }

    public SystemUiController getSystemUiController() {
        if (this.mSystemUiController == null) {
            this.mSystemUiController = new SystemUiController(getWindow());
        }
        return this.mSystemUiController;
    }

    public final UserEventDispatcher getUserEventDispatcher() {
        if (this.mUserEventDispatcher == null) {
            this.mUserEventDispatcher = UserEventDispatcher.newInstance(this);
        }
        return this.mUserEventDispatcher;
    }

    public ViewCache getViewCache() {
        return this.mViewCache;
    }

    public boolean hasBeenResumed() {
        return (this.mActivityFlags & 2) != 0;
    }

    public boolean hasSomeInvisibleFlag(int i) {
        return (this.mForceInvisible & i) != 0;
    }

    public boolean isForceInvisible() {
        return hasSomeInvisibleFlag(7);
    }

    public boolean isStarted() {
        return (this.mActivityFlags & 1) != 0;
    }

    public boolean isUserActive() {
        return (this.mActivityFlags & 16) != 0;
    }

    public void modifyUserEvent(LauncherLogProto$LauncherEvent launcherLogProto$LauncherEvent) {
    }

    public void onActivityFlagsChanged(int i) {
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z, Configuration configuration) {
        super.onMultiWindowModeChanged(z, configuration);
        for (int size = this.mMultiWindowModeChangedListeners.size() - 1; size >= 0; size--) {
            ((MultiWindowModeChangedListener) this.mMultiWindowModeChangedListeners.get(size)).onMultiWindowModeChanged(z);
        }
    }

    @Override // android.app.Activity
    public void onPause() {
        removeActivityFlags(6);
        super.onPause();
        getSystemUiController().updateUiState(3, 0);
    }

    @Override // android.app.Activity
    public void onResume() {
        addActivityFlags(18);
        removeActivityFlags(32);
        super.onResume();
    }

    @Override // android.app.Activity
    public void onStart() {
        addActivityFlags(1);
        super.onStart();
    }

    @Override // android.app.Activity
    public void onStop() {
        removeActivityFlags(17);
        this.mForceInvisible = 0;
        super.onStop();
        getSystemUiController().updateUiState(3, 0);
    }

    @Override // android.app.Activity
    public void onUserLeaveHint() {
        removeActivityFlags(16);
        super.onUserLeaveHint();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            addActivityFlags(8);
        } else {
            removeActivityFlags(8);
        }
    }

    public void removeActivityFlags(int i) {
        this.mActivityFlags &= ~i;
        onActivityFlagsChanged(i);
    }

    public void removeMultiWindowModeChangedListener(MultiWindowModeChangedListener multiWindowModeChangedListener) {
        this.mMultiWindowModeChangedListeners.remove(multiWindowModeChangedListener);
    }

    public void removeOnDeviceProfileChangeListener(DeviceProfile.OnDeviceProfileChangeListener onDeviceProfileChangeListener) {
        this.mDPChangeListeners.remove(onDeviceProfileChangeListener);
    }

    public void startShortcut(String str, String str2, Rect rect, Bundle bundle, UserHandle userHandle) {
        try {
            ((LauncherApps) getSystemService(LauncherApps.class)).startShortcut(str, str2, rect, bundle, userHandle);
        } catch (IllegalStateException | SecurityException e) {
            Log.e(TAG, "Failed to start shortcut", e);
        }
    }
}
