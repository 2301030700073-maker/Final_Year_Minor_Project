package com.android.launcher3;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.content.pm.PackageInstaller;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.UserHandle;
import android.text.TextUtils;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.pm.InstallSessionHelper;
import com.android.launcher3.util.Executors;
import com.android.systemui.shared.recents.ISystemUiProxy;
import java.util.List;
import java.util.Objects;

@TargetApi(ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask)
/* loaded from: classes.dex */
public class SessionCommitReceiver extends BroadcastReceiver {

    public class PrefInitTask extends AsyncTask {
        public final Context mContext;

        public PrefInitTask(Context context) {
            this.mContext = context;
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x0073, code lost:
        
            if (r10 == null) goto L22;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v3 */
        /* JADX WARN: Type inference failed for: r1v4 */
        /* JADX WARN: Type inference failed for: r1v5, types: [android.database.Cursor] */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object doInBackground(java.lang.Object[] r10) {
            /*
                r9 = this;
                java.lang.Void[] r10 = (java.lang.Void[]) r10
                android.content.Context r10 = r9.mContext
                android.content.pm.PackageManager r10 = r10.getPackageManager()
                android.content.Intent r0 = new android.content.Intent
                java.lang.String r1 = "android.intent.action.MAIN"
                r0.<init>(r1)
                java.lang.String r1 = "android.intent.category.APP_MARKET"
                android.content.Intent r0 = r0.addCategory(r1)
                r1 = 1114112(0x110000, float:1.561203E-39)
                android.content.pm.ResolveInfo r10 = r10.resolveActivity(r0, r1)
                r0 = 1
                r1 = 0
                if (r10 != 0) goto L20
                goto L78
            L20:
                android.content.Context r2 = r9.mContext     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
                android.content.ContentResolver r3 = r2.getContentResolver()     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
                java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
                r2.<init>()     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
                java.lang.String r4 = "content://"
                r2.append(r4)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
                android.content.pm.ActivityInfo r10 = r10.activityInfo     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
                java.lang.String r10 = r10.packageName     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
                r2.append(r10)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
                java.lang.String r10 = ".addtohomescreen"
                r2.append(r10)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
                java.lang.String r10 = r2.toString()     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
                android.net.Uri r4 = android.net.Uri.parse(r10)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                android.database.Cursor r10 = r3.query(r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
                boolean r2 = r10.moveToNext()     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L93
                if (r2 == 0) goto L75
                java.lang.String r2 = "value"
                int r2 = r10.getColumnIndexOrThrow(r2)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L93
                int r2 = r10.getInt(r2)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L93
                if (r2 == 0) goto L60
                r2 = r0
                goto L61
            L60:
                r2 = 0
            L61:
                r10.close()
                goto L79
            L65:
                r2 = move-exception
                goto L6c
            L67:
                r9 = move-exception
                goto L95
            L69:
                r10 = move-exception
                r2 = r10
                r10 = r1
            L6c:
                java.lang.String r3 = "SessionCommitReceiver"
                java.lang.String r4 = "Error reading add to homescreen preference"
                android.util.Log.d(r3, r4, r2)     // Catch: java.lang.Throwable -> L93
                if (r10 == 0) goto L78
            L75:
                r10.close()
            L78:
                r2 = r0
            L79:
                android.content.Context r9 = r9.mContext
                android.content.SharedPreferences r9 = com.android.launcher3.Utilities.getPrefs(r9)
                android.content.SharedPreferences$Editor r9 = r9.edit()
                java.lang.String r10 = "pref_add_icon_to_home"
                android.content.SharedPreferences$Editor r9 = r9.putBoolean(r10, r2)
                java.lang.String r10 = "pref_add_icon_to_home_initialized"
                android.content.SharedPreferences$Editor r9 = r9.putBoolean(r10, r0)
                r9.apply()
                return r1
            L93:
                r9 = move-exception
                r1 = r10
            L95:
                if (r1 == 0) goto L9a
                r1.close()
            L9a:
                throw r9
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.SessionCommitReceiver.PrefInitTask.doInBackground(java.lang.Object[]):java.lang.Object");
        }
    }

    public static void applyDefaultUserPrefs(Context context) {
        if (Utilities.ATLEAST_OREO) {
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("com.android.launcher3.prefs", 0);
            if (sharedPreferences.getAll().isEmpty()) {
                sharedPreferences.edit().putBoolean("pref_add_icon_to_home", true).apply();
            } else {
                if (sharedPreferences.contains("pref_add_icon_to_home_initialized")) {
                    return;
                }
                new PrefInitTask(context).executeOnExecutor(Executors.THREAD_POOL_EXECUTOR, new Void[0]);
            }
        }
    }

    public static boolean isEnabled(Context context) {
        return Utilities.getPrefs(context).getBoolean("pref_add_icon_to_home", true);
    }

    public static void queueAppIconAddition(Context context, String str, UserHandle userHandle) {
        List<LauncherActivityInfo> activityList = ((LauncherApps) context.getSystemService(LauncherApps.class)).getActivityList(str, userHandle);
        if (activityList.isEmpty()) {
            return;
        }
        queueAppIconAddition(context, str, activityList.get(0).getLabel(), null, userHandle);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (Utilities.getPrefs(context).getBoolean("pref_add_icon_to_home", true) && Utilities.ATLEAST_OREO) {
            PackageInstaller.SessionInfo sessionInfo = (PackageInstaller.SessionInfo) intent.getParcelableExtra("android.content.pm.extra.SESSION");
            UserHandle userHandle = (UserHandle) intent.getParcelableExtra("android.intent.extra.USER");
            if (!"android.content.pm.action.SESSION_COMMITTED".equals(intent.getAction()) || sessionInfo == null || userHandle == null) {
                return;
            }
            InstallSessionHelper installSessionHelper = (InstallSessionHelper) InstallSessionHelper.INSTANCE.b(context);
            Objects.requireNonNull(installSessionHelper);
            if (Utilities.ATLEAST_OREO && FeatureFlags.ENABLE_DATABASE_RESTORE.get()) {
                if (sessionInfo.getInstallReason() == 2) {
                    LauncherSettings$Settings.call(installSessionHelper.mAppContext.getContentResolver(), "restore_backup_table");
                }
            }
            if (!TextUtils.isEmpty(sessionInfo.getAppPackageName()) && sessionInfo.getInstallReason() == 4) {
                if (!installSessionHelper.mPromiseIconIds.contains(sessionInfo.getSessionId())) {
                    queueAppIconAddition(context, sessionInfo.getAppPackageName(), userHandle);
                    return;
                }
            }
            int sessionId = sessionInfo.getSessionId();
            if (installSessionHelper.mPromiseIconIds.contains(sessionId)) {
                installSessionHelper.mPromiseIconIds.mArray.removeValue(sessionId);
                installSessionHelper.updatePromiseIconPrefs();
            }
        }
    }

    public static void queueAppIconAddition(Context context, String str, CharSequence charSequence, Bitmap bitmap, UserHandle userHandle) {
        Intent intent = new Intent();
        intent.putExtra("android.intent.extra.shortcut.INTENT", new Intent().setComponent(new ComponentName(str, "")).setPackage(str));
        intent.putExtra("android.intent.extra.shortcut.NAME", charSequence);
        intent.putExtra("android.intent.extra.shortcut.ICON", bitmap);
        InstallShortcutReceiver.queueApplication(intent, userHandle, context);
    }
}
