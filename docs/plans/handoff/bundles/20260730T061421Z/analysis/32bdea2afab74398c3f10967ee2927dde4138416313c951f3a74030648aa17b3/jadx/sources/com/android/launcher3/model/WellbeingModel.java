package com.android.launcher3.model;

import android.annotation.TargetApi;
import android.app.RemoteAction;
import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import c.a.a.N0.Y;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.model.WellbeingModel;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.popup.RemoteActionShortcut;
import com.android.launcher3.popup.SystemShortcut;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.launcher3.util.SimpleBroadcastReceiver;
import com.android.systemui.shared.R;
import com.android.systemui.shared.plugins.PluginPrefs;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.stream.Stream;

@TargetApi(29)
/* loaded from: classes.dex */
public final class WellbeingModel {
    public final Context mContext;
    public boolean mIsInTest;
    public final String mWellbeingProviderPkg;
    public static final int[] RETRY_TIMES_MS = {5000, 15000, 30000};
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new MainThreadInitializedObject.ObjectProvider() { // from class: c.a.a.N0.W
        @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
        public final Object get(Context context) {
            return new WellbeingModel(context);
        }
    });
    public static final SystemShortcut.Factory SHORTCUT_FACTORY = Y.f1508a;
    public final Object mModelLock = new Object();
    public final Map mActionIdMap = new ArrayMap();
    public final Map mPackageToActionId = new HashMap();
    public final Handler mWorkerHandler = new Handler(Executors.createAndStartNewLooper("WellbeingHandler"), new Handler.Callback() { // from class: c.a.a.N0.b0
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            return WellbeingModel.d(WellbeingModel.this, message);
        }
    });
    public final ContentObserver mContentObserver = new ContentObserver(Executors.MAIN_EXECUTOR.mHandler) { // from class: com.android.launcher3.model.WellbeingModel.1
        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            WellbeingModel wellbeingModel = WellbeingModel.this;
            boolean z2 = wellbeingModel.mIsInTest;
            wellbeingModel.mWorkerHandler.sendEmptyMessage(3);
        }
    };

    public WellbeingModel(Context context) {
        this.mContext = context;
        this.mWellbeingProviderPkg = this.mContext.getString(R.string.wellbeing_provider_pkg);
        if (TextUtils.isEmpty(this.mWellbeingProviderPkg)) {
            return;
        }
        context.registerReceiver(new SimpleBroadcastReceiver(new Consumer() { // from class: c.a.a.N0.a
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                WellbeingModel.this.restartObserver();
            }
        }), PackageManagerHelper.getPackageFilter(this.mWellbeingProviderPkg, "android.intent.action.PACKAGE_ADDED", "android.intent.action.PACKAGE_CHANGED", "android.intent.action.PACKAGE_REMOVED", "android.intent.action.PACKAGE_DATA_CLEARED", "android.intent.action.PACKAGE_RESTARTED"));
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addDataScheme("package");
        context.registerReceiver(new SimpleBroadcastReceiver(new Consumer() { // from class: c.a.a.N0.a0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                WellbeingModel.a(WellbeingModel.this, (Intent) obj);
            }
        }), intentFilter);
        restartObserver();
    }

    public static void a(WellbeingModel wellbeingModel, Intent intent) {
        Objects.requireNonNull(wellbeingModel);
        String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
        if (schemeSpecificPart == null || schemeSpecificPart.length() == 0) {
            return;
        }
        String action = intent.getAction();
        if ("android.intent.action.PACKAGE_REMOVED".equals(action)) {
            Message.obtain(wellbeingModel.mWorkerHandler, 2, schemeSpecificPart).sendToTarget();
        } else if ("android.intent.action.PACKAGE_ADDED".equals(action)) {
            Message.obtain(wellbeingModel.mWorkerHandler, 1, schemeSpecificPart).sendToTarget();
        }
    }

    public static /* synthetic */ String[] c(int i) {
        return new String[i];
    }

    public static boolean d(WellbeingModel wellbeingModel, Message message) {
        Objects.requireNonNull(wellbeingModel);
        int i = message.what;
        if (i == 1) {
            String str = (String) message.obj;
            wellbeingModel.mWorkerHandler.removeCallbacksAndMessages(str);
            if (!wellbeingModel.updateActions(str)) {
                wellbeingModel.scheduleRefreshRetry(message);
            }
        } else if (i == 2) {
            String str2 = (String) message.obj;
            wellbeingModel.mWorkerHandler.removeCallbacksAndMessages(str2);
            synchronized (wellbeingModel.mModelLock) {
                wellbeingModel.mPackageToActionId.remove(str2);
            }
        } else {
            if (i != 3) {
                return false;
            }
            wellbeingModel.mWorkerHandler.removeCallbacksAndMessages(null);
            if (!wellbeingModel.updateActions((String[]) ((LauncherApps) wellbeingModel.mContext.getSystemService(LauncherApps.class)).getActivityList(null, Process.myUserHandle()).stream().map(new Function() { // from class: c.a.a.N0.Z
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    String str3;
                    str3 = ((LauncherActivityInfo) obj).getApplicationInfo().packageName;
                    return str3;
                }
            }).distinct().toArray(new IntFunction() { // from class: c.a.a.N0.X
                @Override // java.util.function.IntFunction
                public final Object apply(int i2) {
                    return WellbeingModel.c(i2);
                }
            }))) {
                wellbeingModel.scheduleRefreshRetry(message);
            }
        }
        return true;
    }

    public static SystemShortcut e(BaseDraggingActivity baseDraggingActivity, ItemInfo itemInfo) {
        RemoteActionShortcut remoteActionShortcut = null;
        if (itemInfo.getTargetComponent() != null) {
            WellbeingModel wellbeingModel = (WellbeingModel) INSTANCE.b(baseDraggingActivity);
            String packageName = itemInfo.getTargetComponent().getPackageName();
            int identifier = itemInfo.user.getIdentifier();
            Objects.requireNonNull(wellbeingModel);
            if (identifier == UserHandle.myUserId()) {
                synchronized (wellbeingModel.mModelLock) {
                    String str = (String) wellbeingModel.mPackageToActionId.get(packageName);
                    RemoteAction remoteAction = str != null ? (RemoteAction) wellbeingModel.mActionIdMap.get(str) : null;
                    if (remoteAction != null) {
                        remoteActionShortcut = new RemoteActionShortcut(remoteAction, baseDraggingActivity, itemInfo);
                    }
                }
            }
        }
        return remoteActionShortcut;
    }

    public final Uri.Builder apiBuilder() {
        return new Uri.Builder().scheme("content").authority(this.mWellbeingProviderPkg + ".api");
    }

    public final void restartObserver() {
        ContentResolver contentResolver = this.mContext.getContentResolver();
        contentResolver.unregisterContentObserver(this.mContentObserver);
        Uri build = apiBuilder().path(PluginPrefs.PLUGIN_ACTIONS).build();
        try {
            contentResolver.registerContentObserver(build, true, this.mContentObserver);
        } catch (Exception e) {
            Log.e("WellbeingModel", "Failed to register content observer for " + build + ": " + e);
        }
        this.mWorkerHandler.sendEmptyMessage(3);
    }

    public final void scheduleRefreshRetry(Message message) {
        int[] iArr = RETRY_TIMES_MS;
        int i = message.arg1;
        if (i >= iArr.length) {
            return;
        }
        Message obtain = Message.obtain(message);
        obtain.arg1 = i + 1;
        this.mWorkerHandler.sendMessageDelayed(obtain, iArr[i]);
    }

    public final boolean updateActions(String... strArr) {
        if (strArr.length == 0) {
            return true;
        }
        Uri build = apiBuilder().build();
        try {
            ContentProviderClient acquireUnstableContentProviderClient = this.mContext.getContentResolver().acquireUnstableContentProviderClient(build);
            if (acquireUnstableContentProviderClient == null) {
                if (acquireUnstableContentProviderClient != null) {
                    acquireUnstableContentProviderClient.close();
                }
                return false;
            }
            try {
                Bundle bundle = new Bundle();
                bundle.putStringArray("packages", strArr);
                bundle.putInt("max_num_actions_shown", 1);
                Bundle call = acquireUnstableContentProviderClient.call("get_actions", null, bundle);
                if (!call.getBoolean("success", true)) {
                    acquireUnstableContentProviderClient.close();
                    return false;
                }
                synchronized (this.mModelLock) {
                    Stream stream = Arrays.stream(strArr);
                    final Map map = this.mPackageToActionId;
                    Objects.requireNonNull(map);
                    stream.forEach(new Consumer() { // from class: c.a.a.N0.g0
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            map.remove((String) obj);
                        }
                    });
                    for (String str : call.getStringArray(PluginPrefs.PLUGIN_ACTIONS)) {
                        Bundle bundle2 = call.getBundle(str);
                        this.mActionIdMap.put(str, (RemoteAction) bundle2.getParcelable("action"));
                        for (String str2 : bundle2.getStringArray("packages")) {
                            this.mPackageToActionId.put(str2, str);
                        }
                    }
                }
                acquireUnstableContentProviderClient.close();
                return true;
            } catch (Throwable th) {
                if (acquireUnstableContentProviderClient != null) {
                    try {
                        acquireUnstableContentProviderClient.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (DeadObjectException unused) {
            Log.i("WellbeingModel", "retrieveActions(): DeadObjectException");
            return false;
        } catch (Exception e) {
            Log.e("WellbeingModel", "Failed to retrieve data from " + build + ": " + e);
            return true;
        }
    }
}
