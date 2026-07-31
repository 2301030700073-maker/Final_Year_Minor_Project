package com.fsck.k9.controller.push;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AlarmPermissionManagerApi21 implements AlarmPermissionManager {
    @Override // com.fsck.k9.controller.push.AlarmPermissionManager
    public final boolean canScheduleExactAlarms() {
        return true;
    }

    @Override // com.fsck.k9.controller.push.AlarmPermissionManager
    public final void registerListener(PushController$alarmPermissionListener$1 pushController$alarmPermissionListener$1) {
        pushController$alarmPermissionListener$1.getClass();
    }

    @Override // com.fsck.k9.controller.push.AlarmPermissionManager
    public final void unregisterListener() {
    }
}
