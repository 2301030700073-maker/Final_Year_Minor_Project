package com.android.launcher3;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.LauncherApps;
import android.os.Handler;
import android.os.UserHandle;
import android.service.notification.NotificationListenerService;
import android.util.Log;
import b.l.W;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.icons.IconProvider;
import com.android.launcher3.icons.LauncherIcons;
import com.android.launcher3.icons.cache.BaseIconCache;
import com.android.launcher3.model.PackageUpdatedTask;
import com.android.launcher3.model.PredictionModel;
import com.android.launcher3.model.ShortcutsChangedTask;
import com.android.launcher3.model.UserLockStateChangedTask;
import com.android.launcher3.notification.NotificationListener;
import com.android.launcher3.pm.InstallSessionHelper;
import com.android.launcher3.pm.InstallSessionTracker;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.shortcuts.ShortcutRequest;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.util.SQLiteCacheHelper;
import com.android.launcher3.util.SecureSettingsObserver;
import com.android.launcher3.util.SimpleBroadcastReceiver;
import com.android.launcher3.widget.custom.CustomWidgetManager;
import com.android.systemui.plugins.OverscrollPlugin;
import com.android.systemui.shared.R;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class LauncherAppState {
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new MainThreadInitializedObject.ObjectProvider() { // from class: c.a.a.B
        @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
        public final Object get(final Context context) {
            final LauncherAppState launcherAppState = new LauncherAppState(context, "app_icons.db");
            final LauncherModel launcherModel = launcherAppState.mModel;
            Objects.requireNonNull(launcherModel);
            launcherAppState.mModelChangeReceiver = new SimpleBroadcastReceiver(new Consumer() { // from class: c.a.a.s
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    UserHandle userHandle;
                    LauncherModel launcherModel2 = LauncherModel.this;
                    Intent intent = (Intent) obj;
                    Objects.requireNonNull(launcherModel2);
                    String action = intent.getAction();
                    if ("android.intent.action.LOCALE_CHANGED".equals(action)) {
                        launcherModel2.forceReload();
                        return;
                    }
                    if (("android.intent.action.MANAGED_PROFILE_AVAILABLE".equals(action) || "android.intent.action.MANAGED_PROFILE_UNAVAILABLE".equals(action) || "android.intent.action.MANAGED_PROFILE_UNLOCKED".equals(action)) && (userHandle = (UserHandle) intent.getParcelableExtra("android.intent.extra.USER")) != null) {
                        if ("android.intent.action.MANAGED_PROFILE_AVAILABLE".equals(action) || "android.intent.action.MANAGED_PROFILE_UNAVAILABLE".equals(action)) {
                            launcherModel2.enqueueModelUpdateTask(new PackageUpdatedTask(7, userHandle, new String[0]));
                        }
                        if ("android.intent.action.MANAGED_PROFILE_UNAVAILABLE".equals(action) || "android.intent.action.MANAGED_PROFILE_UNLOCKED".equals(action)) {
                            launcherModel2.enqueueModelUpdateTask(new UserLockStateChangedTask(userHandle, "android.intent.action.MANAGED_PROFILE_UNLOCKED".equals(action)));
                        }
                    }
                }
            });
            ((LauncherApps) launcherAppState.mContext.getSystemService(LauncherApps.class)).registerCallback(launcherAppState.mModel);
            launcherAppState.mModelChangeReceiver.register(launcherAppState.mContext, "android.intent.action.LOCALE_CHANGED", "android.intent.action.MANAGED_PROFILE_AVAILABLE", "android.intent.action.MANAGED_PROFILE_UNAVAILABLE", "android.intent.action.MANAGED_PROFILE_UNLOCKED");
            Context context2 = launcherAppState.mContext;
            final LauncherModel launcherModel2 = launcherAppState.mModel;
            Objects.requireNonNull(launcherModel2);
            IconProvider.registerIconChangeListener(context2, new BiConsumer() { // from class: c.a.a.C0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    ShortcutRequest.QueryResult queryResult;
                    LauncherModel launcherModel3 = LauncherModel.this;
                    String str = (String) obj;
                    UserHandle userHandle = (UserHandle) obj2;
                    Context context3 = launcherModel3.mApp.mContext;
                    launcherModel3.onPackageChanged(str, userHandle);
                    LauncherApps.ShortcutQuery shortcutQuery = new LauncherApps.ShortcutQuery();
                    if (str != null) {
                        shortcutQuery.setPackage(str);
                        shortcutQuery.setShortcutIds(null);
                    }
                    shortcutQuery.setQueryFlags(2);
                    try {
                        queryResult = new ShortcutRequest.QueryResult(((LauncherApps) context3.getSystemService(LauncherApps.class)).getShortcuts(shortcutQuery, userHandle));
                    } catch (IllegalStateException | SecurityException e) {
                        Log.e("ShortcutRequest", "Failed to query for shortcuts", e);
                        queryResult = ShortcutRequest.QueryResult.DEFAULT;
                    }
                    if (queryResult.isEmpty()) {
                        return;
                    }
                    launcherModel3.enqueueModelUpdateTask(new ShortcutsChangedTask(str, queryResult, userHandle, false));
                }
            }, Executors.MODEL_EXECUTOR.mHandler);
            FeatureFlags.BooleanFlag booleanFlag = FeatureFlags.APP_SEARCH_IMPROVEMENTS;
            final LauncherModel launcherModel3 = launcherAppState.mModel;
            Objects.requireNonNull(launcherModel3);
            booleanFlag.addChangeListener(context, new Runnable() { // from class: c.a.a.r
                @Override // java.lang.Runnable
                public final void run() {
                    LauncherModel.this.forceReload();
                }
            });
            CustomWidgetManager customWidgetManager = (CustomWidgetManager) CustomWidgetManager.INSTANCE.b(launcherAppState.mContext);
            final LauncherModel launcherModel4 = launcherAppState.mModel;
            Objects.requireNonNull(launcherModel4);
            customWidgetManager.mWidgetRefreshCallback = new Consumer() { // from class: c.a.a.A
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    LauncherModel launcherModel5 = LauncherModel.this;
                    Objects.requireNonNull(launcherModel5);
                    launcherModel5.enqueueModelUpdateTask(new LauncherModel.AnonymousClass6(launcherModel5, (PackageUserKey) obj));
                }
            };
            UserCache userCache = (UserCache) UserCache.INSTANCE.b(launcherAppState.mContext);
            final LauncherModel launcherModel5 = launcherAppState.mModel;
            Objects.requireNonNull(launcherModel5);
            userCache.addUserChangeListener(new Runnable() { // from class: c.a.a.r
                @Override // java.lang.Runnable
                public final void run() {
                    LauncherModel.this.forceReload();
                }
            });
            InvariantDeviceProfile invariantDeviceProfile = launcherAppState.mInvariantDeviceProfile;
            invariantDeviceProfile.mChangeListeners.add(new InvariantDeviceProfile.OnIDPChangeListener() { // from class: c.a.a.O
                @Override // com.android.launcher3.InvariantDeviceProfile.OnIDPChangeListener
                public final void onIdpChanged(int i, InvariantDeviceProfile invariantDeviceProfile2) {
                    LauncherAppState.a(LauncherAppState.this, i, invariantDeviceProfile2);
                }
            });
            new Handler().post(new Runnable() { // from class: c.a.a.P
                @Override // java.lang.Runnable
                public final void run() {
                    LauncherAppState launcherAppState2 = LauncherAppState.this;
                    Context context3 = context;
                    InvariantDeviceProfile invariantDeviceProfile2 = launcherAppState2.mInvariantDeviceProfile;
                    Objects.requireNonNull(invariantDeviceProfile2);
                    String string = Utilities.getDevicePrefs(context3).getString("pref_icon_shape_path", "");
                    if (string.isEmpty()) {
                        context3.getApplicationContext().getSharedPreferences("com.android.launcher3.device.prefs", 0).edit().putString("pref_icon_shape_path", InvariantDeviceProfile.getIconShapePath(context3)).apply();
                    } else {
                        if (string.equals(InvariantDeviceProfile.getIconShapePath(context3))) {
                            return;
                        }
                        context3.getApplicationContext().getSharedPreferences("com.android.launcher3.device.prefs", 0).edit().putString("pref_icon_shape_path", InvariantDeviceProfile.getIconShapePath(context3)).apply();
                        invariantDeviceProfile2.apply(context3, 2);
                    }
                }
            });
            InstallSessionHelper installSessionHelper = (InstallSessionHelper) InstallSessionHelper.INSTANCE.b(context);
            LauncherModel launcherModel6 = launcherAppState.mModel;
            LooperExecutor looperExecutor = Executors.MODEL_EXECUTOR;
            Objects.requireNonNull(installSessionHelper);
            installSessionHelper.mLauncherApps.registerPackageInstallerSessionCallback(looperExecutor, new InstallSessionTracker(installSessionHelper, launcherModel6));
            if (launcherAppState.mContext.getResources().getBoolean(R.bool.notification_dots_enabled)) {
                SecureSettingsObserver newNotificationSettingsObserver = SecureSettingsObserver.newNotificationSettingsObserver(launcherAppState.mContext, new SecureSettingsObserver.OnChangeListener() { // from class: c.a.a.b
                    @Override // com.android.launcher3.util.SecureSettingsObserver.OnChangeListener
                    public final void onSettingsChanged(boolean z) {
                        LauncherAppState launcherAppState2 = LauncherAppState.this;
                        Objects.requireNonNull(launcherAppState2);
                        if (z) {
                            NotificationListenerService.requestRebind(new ComponentName(launcherAppState2.mContext, (Class<?>) NotificationListener.class));
                        }
                    }
                });
                launcherAppState.mNotificationDotsObserver = newNotificationSettingsObserver;
                newNotificationSettingsObserver.register();
                launcherAppState.mNotificationDotsObserver.onChange(true);
            } else {
                launcherAppState.mNotificationDotsObserver = null;
            }
            return launcherAppState;
        }
    });
    public final Context mContext;
    public final IconCache mIconCache;
    public final InvariantDeviceProfile mInvariantDeviceProfile;
    public final LauncherModel mModel;
    public SimpleBroadcastReceiver mModelChangeReceiver;
    public SecureSettingsObserver mNotificationDotsObserver;
    public final PredictionModel mPredictionModel;
    public final WidgetPreviewLoader mWidgetCache;

    public LauncherAppState(Context context, String str) {
        Log.v(OverscrollPlugin.DEVICE_STATE_LAUNCHER, "LauncherAppState initiated");
        this.mContext = context;
        InvariantDeviceProfile invariantDeviceProfile = (InvariantDeviceProfile) InvariantDeviceProfile.INSTANCE.b(context);
        this.mInvariantDeviceProfile = invariantDeviceProfile;
        IconCache iconCache = new IconCache(this.mContext, invariantDeviceProfile, str);
        this.mIconCache = iconCache;
        this.mWidgetCache = new WidgetPreviewLoader(this.mContext, iconCache);
        this.mModel = new LauncherModel(this, this.mIconCache, (AppFilter) W.getObject(AppFilter.class, this.mContext, R.string.app_filter_class));
        Context context2 = this.mContext;
        PredictionModel predictionModel = (PredictionModel) W.getObject(PredictionModel.class, context2, R.string.prediction_model_class);
        predictionModel.mContext = context2;
        predictionModel.mDevicePrefs = Utilities.getDevicePrefs(context2);
        predictionModel.mUserCache = (UserCache) UserCache.INSTANCE.b(predictionModel.mContext);
        this.mPredictionModel = predictionModel;
    }

    public static void a(LauncherAppState launcherAppState, int i, InvariantDeviceProfile invariantDeviceProfile) {
        Objects.requireNonNull(launcherAppState);
        if (i == 0) {
            return;
        }
        if ((i & 2) != 0) {
            synchronized (LauncherIcons.sPoolSync) {
                LauncherIcons.sPool = null;
                LauncherIcons.sPoolId++;
            }
            final IconCache iconCache = launcherAppState.mIconCache;
            final int i2 = invariantDeviceProfile.fillResIconDpi;
            final int i3 = invariantDeviceProfile.iconBitmapSize;
            iconCache.mWorkerHandler.post(new Runnable() { // from class: c.a.a.L0.n.a
                @Override // java.lang.Runnable
                public final void run() {
                    BaseIconCache.this.a(i2, i3);
                }
            });
            SQLiteCacheHelper.MySQLiteOpenHelper mySQLiteOpenHelper = launcherAppState.mWidgetCache.mDb.mOpenHelper;
            mySQLiteOpenHelper.clearDB(mySQLiteOpenHelper.getWritableDatabase());
        }
        launcherAppState.mModel.forceReload();
    }

    public static InvariantDeviceProfile getIDP(Context context) {
        return (InvariantDeviceProfile) InvariantDeviceProfile.INSTANCE.b(context);
    }

    public static LauncherAppState getInstance(Context context) {
        return (LauncherAppState) INSTANCE.b(context);
    }

    public static LauncherAppState getInstanceNoCreate() {
        return (LauncherAppState) INSTANCE.mValue;
    }

    public Context getContext() {
        return this.mContext;
    }

    public IconCache getIconCache() {
        return this.mIconCache;
    }

    public InvariantDeviceProfile getInvariantDeviceProfile() {
        return this.mInvariantDeviceProfile;
    }
}
