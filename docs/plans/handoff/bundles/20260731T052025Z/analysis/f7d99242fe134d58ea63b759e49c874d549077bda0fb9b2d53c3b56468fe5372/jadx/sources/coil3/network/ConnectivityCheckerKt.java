package coil3.network;

import android.content.Context;
import android.net.ConnectivityManager;
import android.os.Build;
import coil3.network.internal.Utils_androidKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ConnectivityCheckerKt {
    public static final ConnectivityChecker ConnectivityChecker(Context context) {
        Context applicationContext = context.getApplicationContext();
        ConnectivityManager connectivityManager = (ConnectivityManager) applicationContext.getSystemService(ConnectivityManager.class);
        if (connectivityManager == null || !Utils_androidKt.isPermissionGranted(applicationContext, "android.permission.ACCESS_NETWORK_STATE")) {
            return ConnectivityChecker.ONLINE;
        }
        try {
            return Build.VERSION.SDK_INT > 23 ? new ConnectivityCheckerApi23(connectivityManager) : new ConnectivityCheckerApi21(connectivityManager);
        } catch (Exception unused) {
            return ConnectivityChecker.ONLINE;
        }
    }
}
