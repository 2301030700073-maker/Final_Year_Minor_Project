package com.android.quickstep;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.SparseIntArray;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.launcher3.util.SimpleBroadcastReceiver;
import com.android.quickstep.OverviewComponentObserver;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.system.PackageManagerWrapper;
import com.android.systemui.shared.system.QuickStepContract;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Objects;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final class OverviewComponentObserver {
    public BaseActivityInterface mActivityInterface;
    public final Context mContext;
    public final RecentsAnimationDeviceState mDeviceState;
    public final Intent mFallbackIntent;
    public boolean mIsDefaultHome;
    public boolean mIsHomeAndOverviewSame;
    public boolean mIsHomeDisabled;
    public final Intent mMyHomeIntent;
    public Intent mOverviewIntent;
    public String mUpdateRegisteredPackage;
    public final BroadcastReceiver mUserPreferenceChangeReceiver = new SimpleBroadcastReceiver(new Consumer() { // from class: c.a.b.x0
        @Override // java.util.function.Consumer
        public final void accept(Object obj) {
            OverviewComponentObserver.this.updateOverviewTargets((Intent) obj);
        }
    });
    public final BroadcastReceiver mOtherHomeAppUpdateReceiver = new SimpleBroadcastReceiver(new Consumer() { // from class: c.a.b.x0
        @Override // java.util.function.Consumer
        public final void accept(Object obj) {
            OverviewComponentObserver.this.updateOverviewTargets((Intent) obj);
        }
    });
    public final SparseIntArray mConfigChangesMap = new SparseIntArray();
    public Consumer mOverviewChangeListener = new Consumer() { // from class: c.a.b.w0
        @Override // java.util.function.Consumer
        public final void accept(Object obj) {
        }
    };
    public final Intent mCurrentHomeIntent = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME").setFlags(268435456);

    public OverviewComponentObserver(Context context, RecentsAnimationDeviceState recentsAnimationDeviceState) {
        this.mContext = context;
        this.mDeviceState = recentsAnimationDeviceState;
        this.mMyHomeIntent = new Intent(this.mCurrentHomeIntent).setPackage(this.mContext.getPackageName());
        ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(this.mMyHomeIntent, 0);
        ComponentName componentName = new ComponentName(context.getPackageName(), resolveActivity.activityInfo.name);
        this.mMyHomeIntent.setComponent(componentName);
        this.mConfigChangesMap.append(componentName.hashCode(), resolveActivity.activityInfo.configChanges);
        ComponentName componentName2 = new ComponentName(this.mContext, (Class<?>) RecentsActivity.class);
        this.mFallbackIntent = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.DEFAULT").setComponent(componentName2).setFlags(268435456);
        try {
            this.mConfigChangesMap.append(componentName2.hashCode(), context.getPackageManager().getActivityInfo(this.mFallbackIntent.getComponent(), 0).configChanges);
        } catch (PackageManager.NameNotFoundException unused) {
        }
        this.mContext.registerReceiver(this.mUserPreferenceChangeReceiver, new IntentFilter(PackageManagerWrapper.ACTION_PREFERRED_ACTIVITY_CHANGED));
        updateOverviewTargets();
    }

    private void unregisterOtherHomeAppUpdateReceiver() {
        if (this.mUpdateRegisteredPackage != null) {
            this.mContext.unregisterReceiver(this.mOtherHomeAppUpdateReceiver);
            this.mUpdateRegisteredPackage = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateOverviewTargets(Intent intent) {
        updateOverviewTargets();
    }

    public boolean assistantGestureIsConstrained() {
        return (this.mDeviceState.getSystemUiStateFlags() & QuickStepContract.SYSUI_STATE_ASSIST_GESTURE_CONSTRAINED) != 0;
    }

    public boolean canHandleConfigChanges(ComponentName componentName, int i) {
        if ((i & 1152) == 1152) {
            return true;
        }
        int i2 = this.mConfigChangesMap.get(componentName.hashCode());
        return i2 != 0 && ((~i2) & i) == 0;
    }

    public void dump(PrintWriter printWriter) {
        printWriter.println("OverviewComponentObserver:");
        printWriter.println("  isDefaultHome=" + this.mIsDefaultHome);
        printWriter.println("  isHomeDisabled=" + this.mIsHomeDisabled);
        printWriter.println("  homeAndOverviewSame=" + this.mIsHomeAndOverviewSame);
        printWriter.println("  overviewIntent=" + this.mOverviewIntent);
        printWriter.println("  homeIntent=" + this.mCurrentHomeIntent);
    }

    public BaseActivityInterface getActivityInterface() {
        return this.mActivityInterface;
    }

    public Intent getHomeIntent() {
        return this.mCurrentHomeIntent;
    }

    public Intent getOverviewIntent() {
        return this.mOverviewIntent;
    }

    public Intent getOverviewIntentIgnoreSysUiState() {
        return this.mIsDefaultHome ? this.mMyHomeIntent : this.mOverviewIntent;
    }

    public boolean isHomeAndOverviewSame() {
        return this.mIsHomeAndOverviewSame;
    }

    public void onDestroy() {
        this.mContext.unregisterReceiver(this.mUserPreferenceChangeReceiver);
        unregisterOtherHomeAppUpdateReceiver();
    }

    public void onSystemUiStateChanged() {
        if (this.mDeviceState.isHomeDisabled() != this.mIsHomeDisabled) {
            updateOverviewTargets();
        }
    }

    public void setOverviewChangeListener(Consumer consumer) {
        this.mOverviewChangeListener = consumer;
    }

    private void updateOverviewTargets() {
        ComponentName homeActivities = PackageManagerWrapper.getInstance().getHomeActivities(new ArrayList());
        this.mIsHomeDisabled = this.mDeviceState.isHomeDisabled();
        this.mIsDefaultHome = Objects.equals(this.mMyHomeIntent.getComponent(), homeActivities);
        BaseActivityInterface baseActivityInterface = this.mActivityInterface;
        if (baseActivityInterface != null) {
            baseActivityInterface.onAssistantVisibilityChanged(RecentsState.NO_OFFSET);
        }
        if (FeatureFlags.SEPARATE_RECENTS_ACTIVITY.get()) {
            this.mIsDefaultHome = false;
            if (homeActivities == null) {
                homeActivities = this.mMyHomeIntent.getComponent();
            }
        }
        if (this.mDeviceState.isHomeDisabled() || !(homeActivities == null || this.mIsDefaultHome)) {
            this.mActivityInterface = FallbackActivityInterface.INSTANCE;
            this.mIsHomeAndOverviewSame = false;
            this.mOverviewIntent = this.mFallbackIntent;
            this.mCurrentHomeIntent.setComponent(homeActivities);
            if (homeActivities == null) {
                unregisterOtherHomeAppUpdateReceiver();
            } else if (!homeActivities.getPackageName().equals(this.mUpdateRegisteredPackage)) {
                unregisterOtherHomeAppUpdateReceiver();
                String packageName = homeActivities.getPackageName();
                this.mUpdateRegisteredPackage = packageName;
                this.mContext.registerReceiver(this.mOtherHomeAppUpdateReceiver, PackageManagerHelper.getPackageFilter(packageName, "android.intent.action.PACKAGE_ADDED", "android.intent.action.PACKAGE_CHANGED", "android.intent.action.PACKAGE_REMOVED"));
            }
        } else {
            this.mActivityInterface = LauncherActivityInterface.INSTANCE;
            this.mIsHomeAndOverviewSame = true;
            Intent intent = this.mMyHomeIntent;
            this.mOverviewIntent = intent;
            this.mCurrentHomeIntent.setComponent(intent.getComponent());
            unregisterOtherHomeAppUpdateReceiver();
        }
        this.mOverviewChangeListener.accept(Boolean.valueOf(this.mIsHomeAndOverviewSame));
    }
}
