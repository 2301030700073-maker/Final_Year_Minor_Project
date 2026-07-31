package com.fsck.k9.controller.push;

import android.app.AlarmManager;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Build;
import androidx.core.app.AlarmManagerCompat$Api31Impl;
import androidx.tracing.TraceApi29Impl;
import com.fsck.k9.backends.AndroidAlarmManager;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AlarmPermissionManagerApi31 implements AlarmPermissionManager {
    public final AlarmManager alarmManager;
    public final Context context;
    public final IntentFilter intentFilter;
    public boolean isRegistered;
    public PushController$alarmPermissionListener$1 listener;
    public final AndroidAlarmManager.AnonymousClass1 receiver;

    public AlarmPermissionManagerApi31(Context context, AlarmManager alarmManager) {
        this.context = context;
        this.alarmManager = alarmManager;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.app.action.SCHEDULE_EXACT_ALARM_PERMISSION_STATE_CHANGED");
        this.intentFilter = intentFilter;
        this.receiver = new AndroidAlarmManager.AnonymousClass1(5, this);
    }

    @Override // com.fsck.k9.controller.push.AlarmPermissionManager
    public final boolean canScheduleExactAlarms() {
        if (Build.VERSION.SDK_INT >= 31) {
            return AlarmManagerCompat$Api31Impl.canScheduleExactAlarms(this.alarmManager);
        }
        return true;
    }

    @Override // com.fsck.k9.controller.push.AlarmPermissionManager
    public final synchronized void registerListener(PushController$alarmPermissionListener$1 pushController$alarmPermissionListener$1) {
        pushController$alarmPermissionListener$1.getClass();
        if (!this.isRegistered) {
            Log.v("Registering alarm permission listener", new Object[0]);
            this.isRegistered = true;
            this.listener = pushController$alarmPermissionListener$1;
            TraceApi29Impl.registerReceiver(this.context, this.receiver, this.intentFilter, 4);
        }
    }

    @Override // com.fsck.k9.controller.push.AlarmPermissionManager
    public final synchronized void unregisterListener() {
        if (this.isRegistered) {
            Log.v("Unregistering alarm permission listener", new Object[0]);
            this.isRegistered = false;
            this.listener = null;
            this.context.unregisterReceiver(this.receiver);
        }
    }
}
