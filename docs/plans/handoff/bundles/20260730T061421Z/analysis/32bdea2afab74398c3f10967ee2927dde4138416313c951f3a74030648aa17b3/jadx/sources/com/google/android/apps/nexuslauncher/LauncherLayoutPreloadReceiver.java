package com.google.android.apps.nexuslauncher;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import c.b.a.b.b.c;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.util.PackageManagerHelper;

/* loaded from: classes.dex */
public class LauncherLayoutPreloadReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Log.d("SUWFinishReceiver", "Received preload request");
        if (!isOrderedBroadcast() || !PackageManagerHelper.hasShortcutsPermission(context)) {
            Log.d("SUWFinishReceiver", "Skipping preload");
            return;
        }
        Log.d("SUWFinishReceiver", "Trying to preload launcher");
        LauncherAppState.getInstance(context).mModel.enqueueModelUpdateTask(new c(goAsync()));
    }
}
