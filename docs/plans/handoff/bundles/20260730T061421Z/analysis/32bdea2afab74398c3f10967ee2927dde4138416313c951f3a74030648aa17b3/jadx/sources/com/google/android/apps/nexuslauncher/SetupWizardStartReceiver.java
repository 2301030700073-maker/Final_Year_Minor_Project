package com.google.android.apps.nexuslauncher;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.android.launcher3.Utilities;

/* loaded from: classes.dex */
public class SetupWizardStartReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Utilities.getDevicePrefs(context).edit().putString("data_import_src_pkg", "com.google.android.googlequicksearchbox").putString("data_import_src_authority", "com.google.android.launcher.settings").commit();
    }
}
