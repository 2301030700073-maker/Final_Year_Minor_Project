package com.android.launcher3;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.os.Process;
import android.util.Log;
import c.a.c.a.a;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.provider.RestoreDbTask;

/* loaded from: classes.dex */
public class AppWidgetsRestoredReceiver extends BroadcastReceiver {
    public static void restoreAppWidgetIds(Context context, int[] iArr, int[] iArr2) {
        ComponentName componentName;
        LauncherAppWidgetHost launcherAppWidgetHost = new LauncherAppWidgetHost(context, null);
        int i = 0;
        if (!RestoreDbTask.isPending(context)) {
            Log.e("AWRestoredReceiver", "Skipping widget ID remap as DB already in use");
            int length = iArr2.length;
            while (i < length) {
                int i2 = iArr2[i];
                Log.d("AWRestoredReceiver", "Deleting widgetId: " + i2);
                launcherAppWidgetHost.deleteAppWidgetId(i2);
                i++;
            }
            return;
        }
        ContentResolver contentResolver = context.getContentResolver();
        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
        char c2 = 0;
        while (i < iArr.length) {
            StringBuilder f = a.f("Widget state restore id ");
            f.append(iArr[i]);
            f.append(" => ");
            f.append(iArr2[i]);
            Log.i("AWRestoredReceiver", f.toString());
            AppWidgetProviderInfo appWidgetInfo = appWidgetManager.getAppWidgetInfo(iArr2[i]);
            int i3 = ((appWidgetInfo == null || (componentName = appWidgetInfo.provider) == null || componentName.getPackageName() == null) ? c2 : (char) 1) != 0 ? 4 : 2;
            long serialNumberForUser = ((UserCache) UserCache.INSTANCE.b(context)).getSerialNumberForUser(Process.myUserHandle());
            String num = Integer.toString(iArr[i]);
            String[] strArr = new String[2];
            strArr[c2] = num;
            strArr[1] = Long.toString(serialNumberForUser);
            Uri uri = LauncherSettings$Favorites.CONTENT_URI;
            ContentValues contentValues = new ContentValues();
            contentValues.put("appWidgetId", Integer.valueOf(iArr2[i]));
            contentValues.put("restored", Integer.valueOf(i3));
            if (context.getContentResolver().update(uri, contentValues, "appWidgetId=? and (restored & 1) = 1 and profileId=?", strArr) == 0) {
                Cursor query = contentResolver.query(LauncherSettings$Favorites.CONTENT_URI, new String[]{"appWidgetId"}, "appWidgetId=?", new String[]{num}, null);
                try {
                    if (!query.moveToFirst()) {
                        launcherAppWidgetHost.deleteAppWidgetId(iArr2[i]);
                    }
                    query.close();
                    c2 = 0;
                } catch (Throwable th) {
                    query.close();
                    throw th;
                }
            } else {
                c2 = 0;
            }
            i++;
        }
        LauncherAppState instanceNoCreate = LauncherAppState.getInstanceNoCreate();
        if (instanceNoCreate != null) {
            instanceNoCreate.mModel.forceReload();
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.appwidget.action.APPWIDGET_HOST_RESTORED".equals(intent.getAction())) {
            int intExtra = intent.getIntExtra("hostId", 0);
            Log.d("AWRestoredReceiver", "Widget ID map received for host:" + intExtra);
            if (intExtra != 1024) {
                return;
            }
            int[] intArrayExtra = intent.getIntArrayExtra("appWidgetOldIds");
            int[] intArrayExtra2 = intent.getIntArrayExtra("appWidgetIds");
            if (intArrayExtra == null || intArrayExtra2 == null || intArrayExtra.length != intArrayExtra2.length) {
                Log.e("AWRestoredReceiver", "Invalid host restored received");
                return;
            }
            SharedPreferences.Editor edit = Utilities.getPrefs(context).edit();
            int length = intArrayExtra.length;
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < length; i++) {
                if (i > 0) {
                    sb.append(", ");
                }
                sb.append(intArrayExtra[i]);
            }
            SharedPreferences.Editor putString = edit.putString("appwidget_old_ids", sb.toString());
            int length2 = intArrayExtra2.length;
            StringBuilder sb2 = new StringBuilder();
            for (int i2 = 0; i2 < length2; i2++) {
                if (i2 > 0) {
                    sb2.append(", ");
                }
                sb2.append(intArrayExtra2[i2]);
            }
            putString.putString("appwidget_ids", sb2.toString()).commit();
        }
    }
}
