package com.fsck.k9.ui.base.locale;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import com.fsck.k9.ui.base.AppLanguageManager$$ExternalSyntheticLambda0;
import java.util.concurrent.CopyOnWriteArraySet;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SystemLocaleManager {
    public final ComponentName componentName;
    public final CopyOnWriteArraySet listeners = new CopyOnWriteArraySet();
    public final PackageManager packageManager;

    public SystemLocaleManager(Context context) {
        this.packageManager = context.getPackageManager();
        this.componentName = new ComponentName(context, (Class<?>) LocaleBroadcastReceiver.class);
    }

    public final synchronized void removeListener(AppLanguageManager$$ExternalSyntheticLambda0 appLanguageManager$$ExternalSyntheticLambda0) {
        appLanguageManager$$ExternalSyntheticLambda0.getClass();
        this.listeners.remove(appLanguageManager$$ExternalSyntheticLambda0);
        if (this.listeners.isEmpty()) {
            Log.v("Disable LocaleBroadcastReceiver", new Object[0]);
            try {
                this.packageManager.setComponentEnabledSetting(this.componentName, 2, 1);
            } catch (Exception e) {
                Log.e(e, "Error disabling LocaleBroadcastReceiver", new Object[0]);
            }
        }
    }
}
