package com.android.launcher3;

import android.appwidget.AppWidgetProviderInfo;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.content.pm.PackageManager;
import android.content.pm.ShortcutInfo;
import android.graphics.Bitmap;
import android.os.Parcelable;
import android.os.Process;
import android.os.UserHandle;
import android.util.Base64;
import android.util.Log;
import android.util.Pair;
import c.a.a.RunnableC0250t;
import com.android.launcher3.InstallShortcutReceiver;
import com.android.launcher3.icons.BitmapInfo;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.icons.LauncherIcons;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.shortcuts.ShortcutKey;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.PackageManagerHelper;
import java.net.URISyntaxException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;

/* loaded from: classes.dex */
public class InstallShortcutReceiver extends BroadcastReceiver {
    public static int sInstallQueueDisabledFlags;

    public class Decoder extends JSONObject {
        public final Intent launcherIntent;
        public final UserHandle user;

        public Decoder(String str, Context context, AnonymousClass1 anonymousClass1) {
            super(str);
            this.launcherIntent = Intent.parseUri(getString("intent.launch"), 0);
            UserHandle userForSerialNumber = has("userHandle") ? ((UserCache) UserCache.INSTANCE.b(context)).getUserForSerialNumber(getLong("userHandle")) : Process.myUserHandle();
            this.user = userForSerialNumber;
            if (userForSerialNumber == null) {
                throw new JSONException("Invalid user");
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0125 A[Catch: URISyntaxException | JSONException -> 0x0135, TryCatch #0 {URISyntaxException | JSONException -> 0x0135, blocks: (B:10:0x0039, B:12:0x0044, B:14:0x0056, B:31:0x00c9, B:33:0x00f4, B:35:0x00fa, B:36:0x011f, B:38:0x0125, B:39:0x012d, B:41:0x010b, B:43:0x0111, B:44:0x005d, B:46:0x0065, B:50:0x007f, B:52:0x008d, B:54:0x0095, B:56:0x00a7, B:58:0x00b5, B:61:0x00c3), top: B:9:0x0039 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x012d A[Catch: URISyntaxException | JSONException -> 0x0135, TRY_LEAVE, TryCatch #0 {URISyntaxException | JSONException -> 0x0135, blocks: (B:10:0x0039, B:12:0x0044, B:14:0x0056, B:31:0x00c9, B:33:0x00f4, B:35:0x00fa, B:36:0x011f, B:38:0x0125, B:39:0x012d, B:41:0x010b, B:43:0x0111, B:44:0x005d, B:46:0x0065, B:50:0x007f, B:52:0x008d, B:54:0x0095, B:56:0x00a7, B:58:0x00b5, B:61:0x00c3), top: B:9:0x0039 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.content.Context r14) {
        /*
            Method dump skipped, instructions count: 419
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.InstallShortcutReceiver.a(android.content.Context):void");
    }

    public static WorkspaceItemInfo access$100(Intent intent, UserHandle userHandle, LauncherAppState launcherAppState) {
        BitmapInfo bitmapInfo = null;
        if (intent == null) {
            Log.e("InstallShortcutReceiver", "Can't construct WorkspaceItemInfo with null data");
            return null;
        }
        Intent intent2 = (Intent) intent.getParcelableExtra("android.intent.extra.shortcut.INTENT");
        String stringExtra = intent.getStringExtra("android.intent.extra.shortcut.NAME");
        Parcelable parcelableExtra = intent.getParcelableExtra("android.intent.extra.shortcut.ICON");
        if (intent2 == null) {
            Log.e("InstallShortcutReceiver", "Can't construct WorkspaceItemInfo with null intent");
            return null;
        }
        WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo();
        workspaceItemInfo.user = userHandle;
        LauncherIcons obtain = LauncherIcons.obtain(launcherAppState.mContext);
        if (parcelableExtra instanceof Bitmap) {
            bitmapInfo = obtain.createIconBitmap((Bitmap) parcelableExtra);
        } else {
            Parcelable parcelableExtra2 = intent.getParcelableExtra("android.intent.extra.shortcut.ICON_RESOURCE");
            if (parcelableExtra2 instanceof Intent.ShortcutIconResource) {
                Intent.ShortcutIconResource shortcutIconResource = (Intent.ShortcutIconResource) parcelableExtra2;
                workspaceItemInfo.iconResource = shortcutIconResource;
                bitmapInfo = obtain.createIconBitmap(shortcutIconResource);
            }
        }
        obtain.recycle();
        if (bitmapInfo == null) {
            bitmapInfo = launcherAppState.mIconCache.getDefaultIcon(workspaceItemInfo.user);
        }
        workspaceItemInfo.bitmap = bitmapInfo;
        workspaceItemInfo.title = Utilities.trim(stringExtra);
        workspaceItemInfo.contentDescription = launcherAppState.mContext.getPackageManager().getUserBadgedLabel(workspaceItemInfo.title, workspaceItemInfo.user);
        workspaceItemInfo.intent = intent2;
        return workspaceItemInfo;
    }

    public static void b(Context context, PendingInstallShortcutInfo pendingInstallShortcutInfo) {
        String str;
        byte[] flattenBitmap;
        Objects.requireNonNull(pendingInstallShortcutInfo);
        try {
            if (pendingInstallShortcutInfo.shortcutInfo != null) {
                JSONStringer key = new JSONStringer().object().key("intent.launch").value(pendingInstallShortcutInfo.launchIntent.toUri(0)).key("isDeepShortcut").value(true).key("userHandle");
                MainThreadInitializedObject mainThreadInitializedObject = UserCache.INSTANCE;
                str = key.value(((UserCache) UserCache.INSTANCE.b(pendingInstallShortcutInfo.mContext)).getSerialNumberForUser(pendingInstallShortcutInfo.user)).endObject().toString();
            } else if (pendingInstallShortcutInfo.providerInfo != null) {
                JSONStringer key2 = new JSONStringer().object().key("intent.launch").value(pendingInstallShortcutInfo.launchIntent.toUri(0)).key("isAppWidget").value(true).key("userHandle");
                MainThreadInitializedObject mainThreadInitializedObject2 = UserCache.INSTANCE;
                str = key2.value(((UserCache) UserCache.INSTANCE.b(pendingInstallShortcutInfo.mContext)).getSerialNumberForUser(pendingInstallShortcutInfo.user)).endObject().toString();
            } else {
                if (pendingInstallShortcutInfo.launchIntent.getAction() == null) {
                    pendingInstallShortcutInfo.launchIntent.setAction("android.intent.action.VIEW");
                } else if (pendingInstallShortcutInfo.launchIntent.getAction().equals("android.intent.action.MAIN") && pendingInstallShortcutInfo.launchIntent.getCategories() != null && pendingInstallShortcutInfo.launchIntent.getCategories().contains("android.intent.category.LAUNCHER")) {
                    pendingInstallShortcutInfo.launchIntent.addFlags(270532608);
                }
                String charSequence = ensureValidName(pendingInstallShortcutInfo.mContext, pendingInstallShortcutInfo.launchIntent, pendingInstallShortcutInfo.label).toString();
                Bitmap bitmap = pendingInstallShortcutInfo.data == null ? null : (Bitmap) pendingInstallShortcutInfo.data.getParcelableExtra("android.intent.extra.shortcut.ICON");
                Intent.ShortcutIconResource shortcutIconResource = pendingInstallShortcutInfo.data == null ? null : (Intent.ShortcutIconResource) pendingInstallShortcutInfo.data.getParcelableExtra("android.intent.extra.shortcut.ICON_RESOURCE");
                JSONStringer key3 = new JSONStringer().object().key("intent.launch").value(pendingInstallShortcutInfo.launchIntent.toUri(0)).key("name").value(charSequence).key("userHandle");
                MainThreadInitializedObject mainThreadInitializedObject3 = UserCache.INSTANCE;
                JSONStringer value = key3.value(((UserCache) UserCache.INSTANCE.b(pendingInstallShortcutInfo.mContext)).getSerialNumberForUser(pendingInstallShortcutInfo.user)).key("isAppShortcut").value(pendingInstallShortcutInfo.isActivity);
                if (bitmap != null && (flattenBitmap = GraphicsUtils.flattenBitmap(bitmap)) != null) {
                    value = value.key("icon").value(Base64.encodeToString(flattenBitmap, 0, flattenBitmap.length, 0));
                }
                if (shortcutIconResource != null) {
                    value = value.key("iconResource").value(shortcutIconResource.resourceName).key("iconResourcePackage").value(shortcutIconResource.packageName);
                }
                str = value.endObject().toString();
            }
        } catch (JSONException e) {
            Log.d("InstallShortcutReceiver", "Exception when adding shortcut: " + e);
            str = null;
        }
        SharedPreferences prefs = Utilities.getPrefs(context);
        Set<String> stringSet = prefs.getStringSet("apps_to_install", null);
        HashSet hashSet = stringSet != null ? new HashSet(stringSet) : new HashSet(1);
        hashSet.add(str);
        prefs.edit().putStringSet("apps_to_install", hashSet).apply();
    }

    public static PendingInstallShortcutInfo createPendingInfo(Context context, Intent intent) {
        PendingInstallShortcutInfo pendingInstallShortcutInfo;
        Intent intent2;
        LauncherActivityInfo resolveActivity;
        if (isValidExtraType(intent, "android.intent.extra.shortcut.INTENT", Intent.class) && isValidExtraType(intent, "android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.class) && isValidExtraType(intent, "android.intent.extra.shortcut.ICON", Bitmap.class) && (intent2 = (pendingInstallShortcutInfo = new PendingInstallShortcutInfo(intent, Process.myUserHandle(), context)).launchIntent) != null && pendingInstallShortcutInfo.label != null) {
            return (pendingInstallShortcutInfo.isActivity || !PackageManagerHelper.isLauncherAppTarget(intent2) || (resolveActivity = ((LauncherApps) pendingInstallShortcutInfo.mContext.getSystemService(LauncherApps.class)).resolveActivity(pendingInstallShortcutInfo.launchIntent, pendingInstallShortcutInfo.user)) == null) ? pendingInstallShortcutInfo : new PendingInstallShortcutInfo(resolveActivity, pendingInstallShortcutInfo.mContext);
        }
        return null;
    }

    public static void disableAndFlushInstallQueue(int i, Context context) {
        int i2 = (~i) & sInstallQueueDisabledFlags;
        sInstallQueueDisabledFlags = i2;
        if (i2 != 0) {
            return;
        }
        LooperExecutor looperExecutor = Executors.MODEL_EXECUTOR;
        looperExecutor.mHandler.post(new RunnableC0250t(context));
    }

    public static void enableInstallQueue(int i) {
        sInstallQueueDisabledFlags = i | sInstallQueueDisabledFlags;
    }

    public static CharSequence ensureValidName(Context context, Intent intent, CharSequence charSequence) {
        if (charSequence != null) {
            return charSequence;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            return packageManager.getActivityInfo(intent.getComponent(), 0).loadLabel(packageManager);
        } catch (PackageManager.NameNotFoundException unused) {
            return "";
        }
    }

    public static String getIntentPackage(Intent intent) {
        return intent.getComponent() == null ? intent.getPackage() : intent.getComponent().getPackageName();
    }

    public static HashSet getPendingShortcuts(Context context) {
        HashSet hashSet = new HashSet();
        Set<String> stringSet = Utilities.getPrefs(context).getStringSet("apps_to_install", null);
        if (stringSet != null && !stringSet.isEmpty()) {
            Iterator<String> it = stringSet.iterator();
            while (it.hasNext()) {
                try {
                    Decoder decoder = new Decoder(it.next(), context, null);
                    if (decoder.optBoolean("isDeepShortcut")) {
                        hashSet.add(ShortcutKey.fromIntent(decoder.launcherIntent, decoder.user));
                    }
                } catch (URISyntaxException | JSONException e) {
                    Log.d("InstallShortcutReceiver", "Exception reading shortcut to add: " + e);
                }
            }
        }
        return hashSet;
    }

    public static boolean isValidExtraType(Intent intent, String str, Class cls) {
        Parcelable parcelableExtra = intent.getParcelableExtra(str);
        return parcelableExtra == null || cls.isInstance(parcelableExtra);
    }

    public static void queueApplication(Intent intent, UserHandle userHandle, Context context) {
        queuePendingShortcutInfo(new PendingInstallShortcutInfo(intent, context, userHandle), context);
    }

    public static void queuePendingShortcutInfo(final PendingInstallShortcutInfo pendingInstallShortcutInfo, final Context context) {
        LooperExecutor looperExecutor = Executors.MODEL_EXECUTOR;
        looperExecutor.mHandler.post(new Runnable() { // from class: c.a.a.u
            @Override // java.lang.Runnable
            public final void run() {
                InstallShortcutReceiver.b(context, pendingInstallShortcutInfo);
            }
        });
        if (sInstallQueueDisabledFlags != 0) {
            return;
        }
        LooperExecutor looperExecutor2 = Executors.MODEL_EXECUTOR;
        looperExecutor2.mHandler.post(new RunnableC0250t(context));
    }

    public static void queueShortcut(ShortcutInfo shortcutInfo, Context context) {
        queuePendingShortcutInfo(new PendingInstallShortcutInfo(shortcutInfo, context), context);
    }

    public static void queueWidget(AppWidgetProviderInfo appWidgetProviderInfo, int i, Context context) {
        queuePendingShortcutInfo(new PendingInstallShortcutInfo(appWidgetProviderInfo, i, context), context);
    }

    public static void removeFromInstallQueue(Context context, HashSet hashSet, UserHandle userHandle) {
        SharedPreferences prefs;
        Set<String> stringSet;
        if (hashSet.isEmpty() || (stringSet = (prefs = Utilities.getPrefs(context)).getStringSet("apps_to_install", null)) == null || stringSet.isEmpty()) {
            return;
        }
        HashSet hashSet2 = new HashSet(stringSet);
        Iterator it = hashSet2.iterator();
        while (it.hasNext()) {
            try {
                Decoder decoder = new Decoder((String) it.next(), context, null);
                if (hashSet.contains(getIntentPackage(decoder.launcherIntent)) && userHandle.equals(decoder.user)) {
                    it.remove();
                }
            } catch (URISyntaxException | JSONException e) {
                Log.d("InstallShortcutReceiver", "Exception reading shortcut to add: " + e);
                it.remove();
            }
        }
        prefs.edit().putStringSet("apps_to_install", hashSet2).apply();
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0063, code lost:
    
        if (r7.getApplicationInfo((java.lang.String) null, 0).targetSdkVersion >= 23) goto L29;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0069  */
    @Override // android.content.BroadcastReceiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onReceive(android.content.Context r6, android.content.Intent r7) {
        /*
            r5 = this;
            java.lang.String r5 = r7.getAction()
            java.lang.String r0 = "com.android.launcher.action.INSTALL_SHORTCUT"
            boolean r5 = r0.equals(r5)
            if (r5 != 0) goto Ld
            return
        Ld:
            com.android.launcher3.InstallShortcutReceiver$PendingInstallShortcutInfo r5 = createPendingInfo(r6, r7)
            if (r5 == 0) goto L85
            boolean r7 = r5.isActivity
            if (r7 != 0) goto L82
            android.content.pm.PackageManager r7 = r6.getPackageManager()
            java.lang.Class<android.content.pm.LauncherApps> r0 = android.content.pm.LauncherApps.class
            java.lang.Object r0 = r6.getSystemService(r0)
            android.content.pm.LauncherApps r0 = (android.content.pm.LauncherApps) r0
            android.content.Intent r0 = r5.launchIntent
            r1 = 0
            r2 = 0
            android.content.pm.ResolveInfo r0 = r7.resolveActivity(r0, r2)
            if (r0 != 0) goto L2e
            goto L66
        L2e:
            android.content.pm.ActivityInfo r3 = r0.activityInfo
            java.lang.String r3 = r3.permission
            boolean r3 = android.text.TextUtils.isEmpty(r3)
            r4 = 1
            if (r3 == 0) goto L3a
            goto L67
        L3a:
            boolean r3 = android.text.TextUtils.isEmpty(r1)
            if (r3 == 0) goto L41
            goto L66
        L41:
            android.content.pm.ActivityInfo r3 = r0.activityInfo
            java.lang.String r3 = r3.permission
            int r3 = r7.checkPermission(r3, r1)
            if (r3 == 0) goto L4c
            goto L66
        L4c:
            android.content.pm.ActivityInfo r0 = r0.activityInfo
            java.lang.String r0 = r0.permission
            java.lang.String r0 = android.app.AppOpsManager.permissionToOp(r0)
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L5b
            goto L67
        L5b:
            android.content.pm.ApplicationInfo r7 = r7.getApplicationInfo(r1, r2)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L66
            int r7 = r7.targetSdkVersion     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L66
            r0 = 23
            if (r7 < r0) goto L66
            goto L67
        L66:
            r4 = r2
        L67:
            if (r4 != 0) goto L82
            java.lang.String r6 = "Ignoring malicious intent "
            java.lang.StringBuilder r6 = c.a.c.a.a.f(r6)
            android.content.Intent r5 = r5.launchIntent
            java.lang.String r5 = r5.toUri(r2)
            r6.append(r5)
            java.lang.String r5 = r6.toString()
            java.lang.String r6 = "InstallShortcutReceiver"
            android.util.Log.e(r6, r5)
            return
        L82:
            queuePendingShortcutInfo(r5, r6)
        L85:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.InstallShortcutReceiver.onReceive(android.content.Context, android.content.Intent):void");
    }

    public class PendingInstallShortcutInfo {
        public final Intent data;
        public final boolean isActivity;
        public final String label;
        public final Intent launchIntent;
        public final Context mContext;
        public final AppWidgetProviderInfo providerInfo;
        public final ShortcutInfo shortcutInfo;
        public final UserHandle user;

        public PendingInstallShortcutInfo(Intent intent, UserHandle userHandle, Context context) {
            this.isActivity = false;
            this.shortcutInfo = null;
            this.providerInfo = null;
            this.data = intent;
            this.user = userHandle;
            this.mContext = context;
            this.launchIntent = (Intent) intent.getParcelableExtra("android.intent.extra.shortcut.INTENT");
            this.label = intent.getStringExtra("android.intent.extra.shortcut.NAME");
        }

        public Pair getItemInfo() {
            if (this.isActivity) {
                WorkspaceItemInfo access$100 = InstallShortcutReceiver.access$100(this.data, this.user, LauncherAppState.getInstance(this.mContext));
                access$100.itemType = 0;
                access$100.status |= 2;
                return Pair.create(access$100, null);
            }
            ShortcutInfo shortcutInfo = this.shortcutInfo;
            if (shortcutInfo != null) {
                WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo(shortcutInfo, this.mContext);
                IconCache iconCache = LauncherAppState.getInstance(this.mContext).mIconCache;
                iconCache.getShortcutIcon(workspaceItemInfo, this.shortcutInfo, true, iconCache.mIsUsingFallbackIconCheck);
                return Pair.create(workspaceItemInfo, this.shortcutInfo);
            }
            AppWidgetProviderInfo appWidgetProviderInfo = this.providerInfo;
            if (appWidgetProviderInfo == null) {
                return Pair.create(InstallShortcutReceiver.access$100(this.data, this.user, LauncherAppState.getInstance(this.mContext)), null);
            }
            LauncherAppWidgetProviderInfo fromProviderInfo = LauncherAppWidgetProviderInfo.fromProviderInfo(this.mContext, appWidgetProviderInfo);
            LauncherAppWidgetInfo launcherAppWidgetInfo = new LauncherAppWidgetInfo(this.launchIntent.getIntExtra("appWidgetId", 0), ((AppWidgetProviderInfo) fromProviderInfo).provider);
            InvariantDeviceProfile idp = LauncherAppState.getIDP(this.mContext);
            launcherAppWidgetInfo.minSpanX = fromProviderInfo.minSpanX;
            launcherAppWidgetInfo.minSpanY = fromProviderInfo.minSpanY;
            launcherAppWidgetInfo.spanX = Math.min(fromProviderInfo.spanX, idp.numColumns);
            launcherAppWidgetInfo.spanY = Math.min(fromProviderInfo.spanY, idp.numRows);
            return Pair.create(launcherAppWidgetInfo, this.providerInfo);
        }

        public PendingInstallShortcutInfo(LauncherActivityInfo launcherActivityInfo, Context context) {
            this.isActivity = true;
            this.shortcutInfo = null;
            this.providerInfo = null;
            String packageName = launcherActivityInfo.getComponentName().getPackageName();
            Intent intent = new Intent();
            this.data = intent;
            intent.putExtra("android.intent.extra.shortcut.INTENT", new Intent().setComponent(new ComponentName(packageName, "")).setPackage(packageName));
            this.data.putExtra("android.intent.extra.shortcut.NAME", launcherActivityInfo.getLabel());
            this.user = launcherActivityInfo.getUser();
            this.mContext = context;
            this.launchIntent = AppInfo.makeLaunchIntent(launcherActivityInfo);
            this.label = launcherActivityInfo.getLabel().toString();
        }

        public PendingInstallShortcutInfo(Intent intent, Context context, UserHandle userHandle) {
            this.isActivity = true;
            this.shortcutInfo = null;
            this.providerInfo = null;
            this.data = intent;
            this.user = userHandle;
            this.mContext = context;
            this.launchIntent = (Intent) intent.getParcelableExtra("android.intent.extra.shortcut.INTENT");
            this.label = intent.getStringExtra("android.intent.extra.shortcut.NAME");
        }

        public PendingInstallShortcutInfo(ShortcutInfo shortcutInfo, Context context) {
            this.isActivity = false;
            this.shortcutInfo = shortcutInfo;
            this.providerInfo = null;
            this.data = null;
            this.mContext = context;
            this.user = shortcutInfo.getUserHandle();
            this.launchIntent = ShortcutKey.makeIntent(shortcutInfo);
            this.label = shortcutInfo.getShortLabel().toString();
        }

        public PendingInstallShortcutInfo(AppWidgetProviderInfo appWidgetProviderInfo, int i, Context context) {
            this.isActivity = false;
            this.shortcutInfo = null;
            this.providerInfo = appWidgetProviderInfo;
            this.data = null;
            this.mContext = context;
            this.user = appWidgetProviderInfo.getProfile();
            this.launchIntent = new Intent().setComponent(appWidgetProviderInfo.provider).putExtra("appWidgetId", i);
            this.label = appWidgetProviderInfo.label;
        }
    }
}
