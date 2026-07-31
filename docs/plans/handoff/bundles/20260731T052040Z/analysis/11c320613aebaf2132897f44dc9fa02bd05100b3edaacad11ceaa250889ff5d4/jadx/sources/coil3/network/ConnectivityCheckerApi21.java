package coil3.network;

import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
