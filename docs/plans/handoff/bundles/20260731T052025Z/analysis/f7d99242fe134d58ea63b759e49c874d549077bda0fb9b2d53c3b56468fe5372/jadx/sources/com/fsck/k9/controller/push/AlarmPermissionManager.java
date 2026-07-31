package com.fsck.k9.controller.push;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface AlarmPermissionManager {
    boolean canScheduleExactAlarms();

    void registerListener(PushController$alarmPermissionListener$1 pushController$alarmPermissionListener$1);

    void unregisterListener();
}
