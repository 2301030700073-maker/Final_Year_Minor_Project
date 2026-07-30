package com.google.android.apps.nexuslauncher.qsb;

import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.Context;
import android.content.Intent;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.content.pm.ShortcutInfo;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.UserHandle;
import android.util.Log;
import b.l.W;
import c.b.a.b.b.l.S;
import c.b.a.b.b.l.V;
import c.b.a.b.b.l.X;
import c.b.a.b.b.l.Y.h;
import c.b.a.b.b.n.p;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.appprediction.InstantAppItemInfo;
import com.android.launcher3.dragndrop.BaseItemDragListener;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.shortcuts.ShortcutRequest;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.Executors;
import com.android.quickstep.InstantAppResolverImpl;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;
import com.google.android.apps.nexuslauncher.qsb.LongClickReceiver;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class LongClickReceiver extends BroadcastReceiver {
    public static void b(Context context, AppInfo appInfo) {
        LauncherAppState.getInstance(context).mIconCache.getTitleAndIcon(appInfo, false);
    }

    public final Bundle a(String str) {
        ClipData clipData = new ClipData(new ClipDescription("", new String[]{str}), new ClipData.Item(""));
        Bundle bundle = new Bundle();
        bundle.putParcelable("clip_data", clipData);
        return bundle;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.content.BroadcastReceiver
    public void onReceive(final Context context, Intent intent) {
        ComponentKey d2;
        BaseItemDragListener baseItemDragListener;
        ShortcutRequest.QueryResult queryResult;
        NexusLauncherActivity nexusLauncherActivity = (NexusLauncherActivity) Launcher.ACTIVITY_TRACKER.getCreatedActivity();
        if (nexusLauncherActivity == null || (d2 = W.d(intent.getData())) == null) {
            return;
        }
        Rect rect = new Rect(intent.getSourceBounds());
        int[] iArr = new int[2];
        nexusLauncherActivity.getRootView().getLocationOnScreen(iArr);
        rect.offset(-iArr[0], -iArr[1]);
        if ("deepshortcut".equals(intent.getData().getQueryParameter("iconType"))) {
            String queryParameter = intent.getData().getQueryParameter("deepshortcut_id");
            String packageName = d2.componentName.getPackageName();
            UserHandle userHandle = d2.user;
            LauncherApps.ShortcutQuery shortcutQuery = new LauncherApps.ShortcutQuery();
            List<String> asList = Arrays.asList(queryParameter);
            if (packageName != null) {
                shortcutQuery.setPackage(packageName);
                shortcutQuery.setShortcutIds(asList);
            }
            shortcutQuery.setQueryFlags(11);
            try {
                queryResult = new ShortcutRequest.QueryResult(((LauncherApps) context.getSystemService(LauncherApps.class)).getShortcuts(shortcutQuery, userHandle));
            } catch (IllegalStateException | SecurityException e) {
                Log.e("ShortcutRequest", "Failed to query for shortcuts", e);
                queryResult = ShortcutRequest.QueryResult.DEFAULT;
            }
            if (queryResult.size() != 1) {
                return;
            } else {
                baseItemDragListener = new X(context, d2, (ShortcutInfo) queryResult.get(0), rect);
            }
        } else if (d2.componentName.getClassName().equals(InstantAppResolverImpl.COMPONENT_CLASS_MARKER)) {
            final AppInfo g = p.g(d2, intent.getData());
            if (!(g instanceof InstantAppItemInfo)) {
                return;
            }
            try {
                Executors.MODEL_EXECUTOR.submit(new Runnable() { // from class: c.b.a.b.b.l.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        LongClickReceiver.b(context, g);
                    }
                }).get(300L, TimeUnit.MILLISECONDS);
                baseItemDragListener = new S(g, rect);
            } catch (Exception e2) {
                Log.e("LongClickReceiver", "Unable to get instant app info", e2);
                return;
            }
        } else {
            LauncherActivityInfo resolveActivity = ((LauncherApps) context.getSystemService(LauncherApps.class)).resolveActivity(new Intent("android.intent.action.MAIN").setComponent(d2.componentName), d2.user);
            if (resolveActivity == null || !W.supportsShortcuts(new AppInfo(context, resolveActivity, resolveActivity.getUser()))) {
                return;
            }
            V v = new V(resolveActivity, rect, intent.getData());
            h b2 = h.b(nexusLauncherActivity, v, intent);
            baseItemDragListener = v;
            if (b2 != null) {
                Bundle a2 = a(v.getMimeType());
                a2.putBoolean("partial_long_press", true);
                setResult(-1, null, a2);
                return;
            }
        }
        nexusLauncherActivity.f3288a.f2534b.a(false);
        baseItemDragListener.init((Launcher) nexusLauncherActivity, false);
        setResult(-1, null, a(baseItemDragListener.getMimeType()));
    }
}
