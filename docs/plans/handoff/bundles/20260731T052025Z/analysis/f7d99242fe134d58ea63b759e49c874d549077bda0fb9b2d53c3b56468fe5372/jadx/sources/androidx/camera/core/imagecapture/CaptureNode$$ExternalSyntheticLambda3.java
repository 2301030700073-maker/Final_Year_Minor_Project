package androidx.camera.core.imagecapture;

import okhttp3.internal.connection.RouteSelector;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CaptureNode$$ExternalSyntheticLambda3 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ RouteSelector f$0;

    public /* synthetic */ CaptureNode$$ExternalSyntheticLambda3(RouteSelector routeSelector, int i) {
        this.$r8$classId = i;
        this.f$0 = routeSelector;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        RouteSelector routeSelector = this.f$0;
        switch (i) {
            case 0:
                routeSelector.safeClose();
                break;
            case 1:
                routeSelector.safeClose();
                break;
            case 2:
                routeSelector.safeClose();
                break;
            case 3:
                if (routeSelector != null) {
                    routeSelector.safeClose();
                    break;
                }
                break;
            default:
                if (routeSelector != null) {
                    routeSelector.safeClose();
                    break;
                }
                break;
        }
    }
}
