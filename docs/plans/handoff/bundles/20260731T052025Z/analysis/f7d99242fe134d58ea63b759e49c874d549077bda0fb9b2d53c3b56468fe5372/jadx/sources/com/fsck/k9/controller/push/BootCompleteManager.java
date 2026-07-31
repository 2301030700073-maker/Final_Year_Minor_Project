package com.fsck.k9.controller.push;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BootCompleteManager {
    public final ComponentName componentName;
    public final PackageManager packageManager;

    public BootCompleteManager(Context context) {
        this.packageManager = context.getPackageManager();
        this.componentName = new ComponentName(context, (Class<?>) BootCompleteReceiver.class);
    }
}
