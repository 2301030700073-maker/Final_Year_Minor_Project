package okhttp3.internal.connection;

import java.util.LinkedHashSet;
import okhttp3.Route;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RouteDatabase {
    public final LinkedHashSet _failedRoutes;

    public RouteDatabase() {
        this._failedRoutes = new LinkedHashSet();
    }

    public synchronized void connected(Route route) {
        route.getClass();
        this._failedRoutes.remove(route);
    }

    public RouteDatabase(LinkedHashSet linkedHashSet) {
        this._failedRoutes = linkedHashSet;
    }
}
