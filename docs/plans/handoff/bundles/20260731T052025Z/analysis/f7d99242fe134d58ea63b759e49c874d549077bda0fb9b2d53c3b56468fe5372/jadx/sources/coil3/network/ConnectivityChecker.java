package coil3.network;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface ConnectivityChecker {
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final ConnectivityChecker ONLINE = new ConnectivityChecker$$ExternalSyntheticLambda0();

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: coil3.network.ConnectivityChecker$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static final /* synthetic */ int $r8$clinit = 0;

        static {
            Companion companion = ConnectivityChecker.Companion;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }
    }

    boolean isOnline();
}
