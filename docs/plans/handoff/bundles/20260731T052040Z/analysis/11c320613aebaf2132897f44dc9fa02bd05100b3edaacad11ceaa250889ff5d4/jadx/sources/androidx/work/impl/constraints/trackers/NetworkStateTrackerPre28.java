package androidx.work.impl.constraints.trackers;

import android.content.Context;
import android.net.ConnectivityManager;
import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.utils.NetworkApi24;
import okhttp3.Dispatcher;
import org.commonmark.node.Node;
import us.shandian.giga.service.DownloadManagerService;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NetworkStateTrackerPre28 extends Node {
    public final ConnectivityManager connectivityManager;
    public volatile boolean isBlocked;
    public final Object lock;
    public final DownloadManagerService.AnonymousClass1 networkCallback;

    public NetworkStateTrackerPre28(Context context, Dispatcher dispatcher) {
        super(context, dispatcher);
        Object systemService = ((Context) this.firstChild).getSystemService("connectivity");
        systemService.getClass();
        this.connectivityManager = (ConnectivityManager) systemService;
        this.lock = new Object();
        this.networkCallback = new DownloadManagerService.AnonymousClass1(this, 2);
    }

    @Override // org.commonmark.node.Node
    public final Object readSystemState() {
        return NetworkStateTrackerKt.getActiveNetworkState(this.connectivityManager, this.isBlocked);
    }

    @Override // org.commonmark.node.Node
    public final void startTracking() {
        try {
            Logger$LogcatLogger.get().debug(NetworkStateTrackerKt.TAG, "Registering network callback");
            NetworkApi24.registerDefaultNetworkCallbackCompat(this.connectivityManager, this.networkCallback);
        } catch (IllegalArgumentException e) {
            Logger$LogcatLogger.get().error(NetworkStateTrackerKt.TAG, "Received exception while registering network callback", e);
        } catch (SecurityException e2) {
            Logger$LogcatLogger.get().error(NetworkStateTrackerKt.TAG, "Received exception while registering network callback", e2);
        }
    }

    @Override // org.commonmark.node.Node
    public final void stopTracking() {
        try {
            Logger$LogcatLogger.get().debug(NetworkStateTrackerKt.TAG, "Unregistering network callback");
            this.connectivityManager.unregisterNetworkCallback(this.networkCallback);
        } catch (IllegalArgumentException e) {
            Logger$LogcatLogger.get().error(NetworkStateTrackerKt.TAG, "Received exception while unregistering network callback", e);
        } catch (SecurityException e2) {
            Logger$LogcatLogger.get().error(NetworkStateTrackerKt.TAG, "Received exception while unregistering network callback", e2);
        }
    }
}
