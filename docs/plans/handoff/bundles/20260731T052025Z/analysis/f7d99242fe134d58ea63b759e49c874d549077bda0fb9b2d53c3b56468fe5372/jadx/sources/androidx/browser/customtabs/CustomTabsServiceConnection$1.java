package androidx.browser.customtabs;

import android.content.ComponentName;
import android.support.customtabs.ICustomTabsService;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CustomTabsServiceConnection$1 {
    public final ICustomTabsService mService;
    public final ComponentName mServiceComponentName;

    public CustomTabsServiceConnection$1(ICustomTabsService iCustomTabsService, ComponentName componentName) {
        this.mService = iCustomTabsService;
        this.mServiceComponentName = componentName;
    }
}
