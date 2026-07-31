package com.fsck.k9.controller.push;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import java.util.concurrent.atomic.AtomicBoolean;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PushServiceManager {
    public final Context context;
    public final AtomicBoolean isServiceStarted = new AtomicBoolean(false);

    public PushServiceManager(Context context) {
        this.context = context;
    }

    public final void start() {
        Log.v("PushServiceManager.start()", new Object[0]);
        if (!this.isServiceStarted.compareAndSet(false, true)) {
            Log.v("..PushService already running", new Object[0]);
            return;
        }
        Context context = this.context;
        try {
            Intent intent = new Intent(context, (Class<?>) PushService.class);
            if (Build.VERSION.SDK_INT >= 26) {
                context.startForegroundService(intent);
            } else {
                context.startService(intent);
            }
        } catch (Exception e) {
            Log.e(e, "Exception while trying to start PushService", new Object[0]);
        }
    }
}
