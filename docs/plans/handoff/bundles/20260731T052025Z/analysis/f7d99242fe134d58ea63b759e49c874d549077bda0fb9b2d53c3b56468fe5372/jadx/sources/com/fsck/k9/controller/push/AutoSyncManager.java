package com.fsck.k9.controller.push;

import android.content.Context;
import android.content.IntentFilter;
import com.fsck.k9.backends.AndroidAlarmManager;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.preference.GeneralSettingsManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AutoSyncManager {
    public final Context context;
    public final GeneralSettingsManager generalSettingsManager;
    public final IntentFilter intentFilter;
    public boolean isRegistered;
    public PushController$autoSyncListener$1 listener;
    public final AndroidAlarmManager.AnonymousClass1 receiver;

    public AutoSyncManager(Context context, GeneralSettingsManager generalSettingsManager) {
        this.context = context;
        this.generalSettingsManager = generalSettingsManager;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.android.sync.SYNC_CONN_STATUS_CHANGED");
        this.intentFilter = intentFilter;
        this.receiver = new AndroidAlarmManager.AnonymousClass1(6, this);
    }

    public final synchronized void unregisterListener() {
        if (this.isRegistered) {
            Log.v("Unregistering auto sync listener", new Object[0]);
            this.isRegistered = false;
            this.context.unregisterReceiver(this.receiver);
        }
    }
}
