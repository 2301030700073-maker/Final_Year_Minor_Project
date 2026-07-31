package coil3.network;

import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ConnectivityCheckerApi21 implements ConnectivityChecker {
    public final /* synthetic */ int $r8$classId;
    public final ConnectivityManager connectivityManager;

    public /* synthetic */ ConnectivityCheckerApi21(ConnectivityManager connectivityManager, int i) {
        this.$r8$classId = i;
        this.connectivityManager = connectivityManager;
    }

    @Override // coil3.network.ConnectivityChecker
    public final boolean isOnline() {
        int i = this.$r8$classId;
        ConnectivityManager connectivityManager = this.connectivityManager;
        switch (i) {
            case 0:
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting()) {
                    break;
                }
                break;
            default:
                NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
                if (networkCapabilities != null && networkCapabilities.hasCapability(12)) {
                    break;
                }
                break;
        }
        return true;
    }
}
